#ifndef _APP_H
#define _APP_H
#endif

#include "system_definitions.h"

typedef enum
{
    APP_TCPIP_WAIT_INIT=0,
    APP_TCPIP_WAIT_FOR_IP,
    APP_TCPIP_OPENING_SERVER,
    APP_TCPIP_WAIT_FOR_CONNECTION,
    APP_TCPIP_WAITING_FOR_VALID_MESSAGE,
    APP_TCPIP_READ_RX_BUFFER,
    APP_TCPIP_WRITE_TX_BUFFER,
    APP_TCPIP_CLOSING_CONNECTION,
    APP_TCPIP_ERROR,
} APP_STATES;


typedef struct
{
    APP_STATES state;
    TCP_SOCKET socket;
} TCPSERVER_DATA;

#define RX_PACKET 101u
#define SERVER_PORT 9760

bool TCP_Server(uint8_t* Buffer, uint16_t length, bool sendMessage);
void parseTcpMessage(uint8_t* startP, uint8_t* endP);
void createNewTcpMessage(uint8_t* startP, int len);
unsigned int getRxPacketSize(void);