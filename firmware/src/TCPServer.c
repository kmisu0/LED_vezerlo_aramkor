/************************************************************************************************
TCP szerver alkalmazás.

Készítette: Kiss Milán SZE-MTK
			villamosmérnok MSc levelezo tagozatos hallgato

Leírás:		A program egy TCP szerver alkalmazás. Az alkalmazás meghívása során 
 *          megvizsgálja a sendmessage bemeneti paraméter álapotát. Ett?l
 *          függ?en ellen?rzi a TCP buffer bemeneti tároló tartalmát, az
 *          alkalmazás szabályai szerint érvényes csomag esetén igaz értékkel
 *          tér vissza az ?t meghívó programrészbe. Emellett a Buffer pointert?l
 *          kezd?d? címre kiírja a bementi buffer tartalmát.
 *          Abban az esetben, ha a sendMessage igaz, az alkalmazás beírja a TCP
 *          kimeneti bufferbe a Buffer pointer címt?l kezd?d? adatokat.

2016.08.18
************************************************************************************************/

#include "TCPServer.h"

bool TCP_Server(uint8_t* Buffer, uint16_t length, bool sendMessage)
{
    static TCPSERVER_DATA       TcpServerData;
    SYS_STATUS                  tcpipStat;
    static IPV4_ADDR            dwLastIP[2] = { {-1}, {-1} };
    IPV4_ADDR                   ipAddr;
    int                         i, nNets;
    TCPIP_NET_HANDLE            netH;    
    int16_t intRxCount, intTxFree, stxPos, etxPos;      
    bool finishedOperation;
    TCP_OPTION_KEEP_ALIVE_DATA keepalive;
    keepalive.keepAliveEnable = true;
    keepalive.keepAliveTmo = 0;
    keepalive.keepAliveUnackLim = 0;

    finishedOperation = false;
    
    switch ( TcpServerData.state )
    {
        case APP_TCPIP_WAIT_INIT:
        {
            tcpipStat = TCPIP_STACK_Status(sysObj.tcpip);
            if(tcpipStat < 0)
            {
                TcpServerData.state = APP_TCPIP_ERROR;
            }
            else if(tcpipStat == SYS_STATUS_READY)
            {
                TcpServerData.state = APP_TCPIP_WAIT_FOR_IP;
            }
        }
        break;
            
        case APP_TCPIP_WAIT_FOR_IP:
        {
            // if the IP address of an interface has changed
            nNets = TCPIP_STACK_NumberOfNetworksGet();

            for (i = 0; i < nNets; i++)
            {
                netH = TCPIP_STACK_IndexToNet(i);
                ipAddr.Val = TCPIP_STACK_NetAddress(netH);
                if(dwLastIP[i].Val != ipAddr.Val)
                {
                    dwLastIP[i].Val = ipAddr.Val;
                    if (ipAddr.v[0] != 0 && ipAddr.v[0] != 169) // Wait for a Valid IP
                    {
                        TcpServerData.state = APP_TCPIP_OPENING_SERVER;
                    }
                }
            }
        }
        break;
        
        case APP_TCPIP_OPENING_SERVER:
        {
            TcpServerData.socket = TCPIP_TCP_ServerOpen(IP_ADDRESS_TYPE_IPV4, SERVER_PORT, 0);
            if (TcpServerData.socket == INVALID_SOCKET)
            {
                break;
            }            
            TCPIP_TCP_OptionsSet(TcpServerData.socket, TCP_OPTION_KEEP_ALIVE, &keepalive);
            TCPIP_TCP_OptionsSet(TcpServerData.socket, TCP_OPTION_THRES_FLUSH, (void*)TCP_OPTION_THRES_FLUSH_OFF);
            TcpServerData.state = APP_TCPIP_WAIT_FOR_CONNECTION;
        }
        break;

        case APP_TCPIP_WAIT_FOR_CONNECTION:
        {
            if (!TCPIP_TCP_IsConnected(TcpServerData.socket))
            {
                break;
            }
            else
            {
                if(!TCPIP_TCP_FifoSizeAdjust(TcpServerData.socket, 2*RX_PACKET, length, TCP_ADJUST_RX_ONLY))
                    break;
                
                if (sendMessage)
                {
                    TcpServerData.state = APP_TCPIP_WRITE_TX_BUFFER;   
                }
                else
                {
                    TcpServerData.state = APP_TCPIP_WAITING_FOR_VALID_MESSAGE;
                }
            } 
        }
        break;

        case APP_TCPIP_WAITING_FOR_VALID_MESSAGE:
        {
            if (!TCPIP_TCP_IsConnected(TcpServerData.socket))
            {
                TcpServerData.state = APP_TCPIP_CLOSING_CONNECTION;
                break;
            }
            
            TcpServerData.state = APP_TCPIP_WAIT_FOR_CONNECTION;
            
            // Figure out how many bytes have been received and how many we can transmit.
            intRxCount = TCPIP_TCP_GetIsReady(TcpServerData.socket);            //Get TCP RX FIFO byte count
            stxPos = TCPIP_TCP_Find(TcpServerData.socket, 0x02, 0, 0, false);   //Megkeresi az elso <stx> pozícióját
            etxPos = TCPIP_TCP_Find(TcpServerData.socket, 0x03, 0, 0, false);   //Megkeresi az elso <etx> pozícióját
                        
            if(intRxCount == 0)
                break;
            
            if (stxPos != 0)
            {
                TCPIP_TCP_ArrayGet(TcpServerData.socket, NULL, stxPos);
                break;
            }
            
            if(intRxCount < RX_PACKET)
                break;
            
            if(etxPos != RX_PACKET - 1)
            {
                TCPIP_TCP_ArrayGet(TcpServerData.socket, NULL, etxPos);
                break;
            } 
            TcpServerData.state = APP_TCPIP_READ_RX_BUFFER;
        }
        break;
        
        case APP_TCPIP_READ_RX_BUFFER:
        {
            if (!TCPIP_TCP_IsConnected(TcpServerData.socket))
            {
                TcpServerData.state = APP_TCPIP_CLOSING_CONNECTION;
                break;
            }
            TCPIP_TCP_Get(TcpServerData.socket,NULL);       
            TCPIP_TCP_ArrayGet(TcpServerData.socket, Buffer, RX_PACKET-2);
            TCPIP_TCP_Get(TcpServerData.socket,NULL);
            TcpServerData.state = APP_TCPIP_WAIT_FOR_CONNECTION;
            finishedOperation = true;
        }
        break;
        
        case APP_TCPIP_WRITE_TX_BUFFER:
        {
            if (!TCPIP_TCP_IsConnected(TcpServerData.socket))
            {
                TcpServerData.state = APP_TCPIP_CLOSING_CONNECTION;
                break;
            } 
            
            if(!TCPIP_TCP_FifoSizeAdjust(TcpServerData.socket, 2*RX_PACKET, length + 2, TCP_ADJUST_TX_ONLY))
            {
                TcpServerData.state = APP_TCPIP_WAIT_FOR_CONNECTION;
                break;
            }
            
            intTxFree = TCPIP_TCP_PutIsReady(TcpServerData.socket);
            
            if (intTxFree < length - 2)
            {
                TcpServerData.state = APP_TCPIP_WAIT_FOR_CONNECTION;
            }
            
            TCPIP_TCP_Put(TcpServerData.socket, 0x02);
            TCPIP_TCP_ArrayPut(TcpServerData.socket, Buffer, length);
            TCPIP_TCP_Put(TcpServerData.socket, 0x03);
            TCPIP_TCP_Flush(TcpServerData.socket);
            
            finishedOperation = true;
            TcpServerData.state = APP_TCPIP_WAIT_FOR_CONNECTION;
        }
        break;
        
        case APP_TCPIP_CLOSING_CONNECTION:
        {
            //Close the socket connection.
            TCPIP_TCP_Close(TcpServerData.socket);
            TcpServerData.state = APP_TCPIP_OPENING_SERVER;
        }
        break;
    }
    return finishedOperation; 
}

unsigned int getRxPacketSize()
{
    return RX_PACKET - 2;
}