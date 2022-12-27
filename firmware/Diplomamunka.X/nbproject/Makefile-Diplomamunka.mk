#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-Diplomamunka.mk)" "nbproject/Makefile-local-Diplomamunka.mk"
include nbproject/Makefile-local-Diplomamunka.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Diplomamunka
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Diplomamunka.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Diplomamunka.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/Diplomamunka/framework/driver/i2c/src/drv_i2c_static_buffer_model.c ../src/system_config/Diplomamunka/framework/driver/i2c/src/drv_i2c_mapping.c ../src/system_config/Diplomamunka/framework/driver/ic/src/drv_ic_static.c ../src/system_config/Diplomamunka/framework/driver/oc/src/drv_oc_static.c ../src/system_config/Diplomamunka/framework/system/clk/src/sys_clk_static.c ../src/system_config/Diplomamunka/framework/system/ports/src/sys_ports_static.c ../src/system_config/Diplomamunka/system_init.c ../src/system_config/Diplomamunka/system_interrupt.c ../src/system_config/Diplomamunka/system_exceptions.c ../src/system_config/Diplomamunka/system_tasks.c ../src/app.c ../src/main.c ../src/TCPServer.c ../src/fan.c ../src/led.c ../../../../bsp/pic32mx_eth_sk/bsp_sys_init.c ../../../../framework/crypto/src/zlib-1.2.7/adler32.c ../../../../framework/crypto/src/zlib-1.2.7/compress.c ../../../../framework/crypto/src/zlib-1.2.7/crc32.c ../../../../framework/crypto/src/zlib-1.2.7/deflate.c ../../../../framework/crypto/src/zlib-1.2.7/infback.c ../../../../framework/crypto/src/zlib-1.2.7/inffast.c ../../../../framework/crypto/src/zlib-1.2.7/inflate.c ../../../../framework/crypto/src/zlib-1.2.7/inftrees.c ../../../../framework/crypto/src/zlib-1.2.7/trees.c ../../../../framework/crypto/src/zlib-1.2.7/uncompr.c ../../../../framework/crypto/src/zlib-1.2.7/zutil.c ../../../../framework/crypto/src/ecc.c ../../../../framework/crypto/src/ssl-dummy.c ../../../../framework/crypto/src/arc4.c ../../../../framework/crypto/src/pwdbased.c ../../../../framework/crypto/src/tfm.c ../../../../framework/crypto/src/asn.c ../../../../framework/crypto/src/des3.c ../../../../framework/crypto/src/rsa.c ../../../../framework/crypto/src/aes.c ../../../../framework/crypto/src/md5.c ../../../../framework/crypto/src/sha.c ../../../../framework/crypto/src/sha256.c ../../../../framework/crypto/src/sha512.c ../../../../framework/crypto/src/hmac.c ../../../../framework/crypto/src/hash.c ../../../../framework/crypto/src/compress.c ../../../../framework/crypto/src/random.c ../../../../framework/crypto/src/crypto.c ../../../../framework/crypto/src/coding.c ../../../../framework/crypto/src/error.c ../../../../framework/crypto/src/integer.c ../../../../framework/crypto/src/logging.c ../../../../framework/crypto/src/memory.c ../../../../framework/crypto/src/misc.c ../../../../framework/crypto/src/port.c ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../framework/system/devcon/src/sys_devcon.c ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../framework/system/int/src/sys_int_pic32.c ../../../../framework/system/ports/src/sys_ports.c ../../../../framework/system/random/src/sys_random.c ../../../../framework/system/tmr/src/sys_tmr.c ../../../../framework/tcpip/src/common/helpers.c ../../../../framework/tcpip/src/common/lfsr.c ../../../../framework/tcpip/src/tcp.c ../../../../framework/tcpip/src/udp.c ../../../../framework/tcpip/src/tcpip_heap_alloc.c ../../../../framework/tcpip/src/tcpip_heap_internal.c ../../../../framework/tcpip/src/arp.c ../../../../framework/tcpip/src/dhcp.c ../../../../framework/tcpip/src/dns.c ../../../../framework/tcpip/src/icmp.c ../../../../framework/tcpip/src/tcpip_announce.c ../../../../framework/tcpip/src/hash_fnv.c ../../../../framework/tcpip/src/oahash.c ../../../../framework/tcpip/src/tcpip_helpers.c ../../../../framework/tcpip/src/tcpip_helper_c32.S ../../../../framework/tcpip/src/tcpip_manager.c ../../../../framework/tcpip/src/tcpip_notify.c ../../../../framework/tcpip/src/tcpip_packet.c ../../../../framework/tcpip/src/ipv4.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1774832663/drv_i2c_static_buffer_model.o ${OBJECTDIR}/_ext/1774832663/drv_i2c_mapping.o ${OBJECTDIR}/_ext/793758023/drv_ic_static.o ${OBJECTDIR}/_ext/965532929/drv_oc_static.o ${OBJECTDIR}/_ext/1892475994/sys_clk_static.o ${OBJECTDIR}/_ext/904121046/sys_ports_static.o ${OBJECTDIR}/_ext/1720293489/system_init.o ${OBJECTDIR}/_ext/1720293489/system_interrupt.o ${OBJECTDIR}/_ext/1720293489/system_exceptions.o ${OBJECTDIR}/_ext/1720293489/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/TCPServer.o ${OBJECTDIR}/_ext/1360937237/fan.o ${OBJECTDIR}/_ext/1360937237/led.o ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o ${OBJECTDIR}/_ext/1606841020/adler32.o ${OBJECTDIR}/_ext/1606841020/compress.o ${OBJECTDIR}/_ext/1606841020/crc32.o ${OBJECTDIR}/_ext/1606841020/deflate.o ${OBJECTDIR}/_ext/1606841020/infback.o ${OBJECTDIR}/_ext/1606841020/inffast.o ${OBJECTDIR}/_ext/1606841020/inflate.o ${OBJECTDIR}/_ext/1606841020/inftrees.o ${OBJECTDIR}/_ext/1606841020/trees.o ${OBJECTDIR}/_ext/1606841020/uncompr.o ${OBJECTDIR}/_ext/1606841020/zutil.o ${OBJECTDIR}/_ext/1886890887/ecc.o ${OBJECTDIR}/_ext/1886890887/ssl-dummy.o ${OBJECTDIR}/_ext/1886890887/arc4.o ${OBJECTDIR}/_ext/1886890887/pwdbased.o ${OBJECTDIR}/_ext/1886890887/tfm.o ${OBJECTDIR}/_ext/1886890887/asn.o ${OBJECTDIR}/_ext/1886890887/des3.o ${OBJECTDIR}/_ext/1886890887/rsa.o ${OBJECTDIR}/_ext/1886890887/aes.o ${OBJECTDIR}/_ext/1886890887/md5.o ${OBJECTDIR}/_ext/1886890887/sha.o ${OBJECTDIR}/_ext/1886890887/sha256.o ${OBJECTDIR}/_ext/1886890887/sha512.o ${OBJECTDIR}/_ext/1886890887/hmac.o ${OBJECTDIR}/_ext/1886890887/hash.o ${OBJECTDIR}/_ext/1886890887/compress.o ${OBJECTDIR}/_ext/1886890887/random.o ${OBJECTDIR}/_ext/1886890887/crypto.o ${OBJECTDIR}/_ext/1886890887/coding.o ${OBJECTDIR}/_ext/1886890887/error.o ${OBJECTDIR}/_ext/1886890887/integer.o ${OBJECTDIR}/_ext/1886890887/logging.o ${OBJECTDIR}/_ext/1886890887/memory.o ${OBJECTDIR}/_ext/1886890887/misc.o ${OBJECTDIR}/_ext/1886890887/port.o ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o ${OBJECTDIR}/_ext/732687875/drv_ethphy.o ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o ${OBJECTDIR}/_ext/185269848/drv_tmr.o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ${OBJECTDIR}/_ext/77319752/sys_ports.o ${OBJECTDIR}/_ext/1283840359/sys_random.o ${OBJECTDIR}/_ext/1264926591/sys_tmr.o ${OBJECTDIR}/_ext/1136935090/helpers.o ${OBJECTDIR}/_ext/1136935090/lfsr.o ${OBJECTDIR}/_ext/1408260596/tcp.o ${OBJECTDIR}/_ext/1408260596/udp.o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1408260596/arp.o ${OBJECTDIR}/_ext/1408260596/dhcp.o ${OBJECTDIR}/_ext/1408260596/dns.o ${OBJECTDIR}/_ext/1408260596/icmp.o ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o ${OBJECTDIR}/_ext/1408260596/hash_fnv.o ${OBJECTDIR}/_ext/1408260596/oahash.o ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o ${OBJECTDIR}/_ext/1408260596/ipv4.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1774832663/drv_i2c_static_buffer_model.o.d ${OBJECTDIR}/_ext/1774832663/drv_i2c_mapping.o.d ${OBJECTDIR}/_ext/793758023/drv_ic_static.o.d ${OBJECTDIR}/_ext/965532929/drv_oc_static.o.d ${OBJECTDIR}/_ext/1892475994/sys_clk_static.o.d ${OBJECTDIR}/_ext/904121046/sys_ports_static.o.d ${OBJECTDIR}/_ext/1720293489/system_init.o.d ${OBJECTDIR}/_ext/1720293489/system_interrupt.o.d ${OBJECTDIR}/_ext/1720293489/system_exceptions.o.d ${OBJECTDIR}/_ext/1720293489/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/TCPServer.o.d ${OBJECTDIR}/_ext/1360937237/fan.o.d ${OBJECTDIR}/_ext/1360937237/led.o.d ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o.d ${OBJECTDIR}/_ext/1606841020/adler32.o.d ${OBJECTDIR}/_ext/1606841020/compress.o.d ${OBJECTDIR}/_ext/1606841020/crc32.o.d ${OBJECTDIR}/_ext/1606841020/deflate.o.d ${OBJECTDIR}/_ext/1606841020/infback.o.d ${OBJECTDIR}/_ext/1606841020/inffast.o.d ${OBJECTDIR}/_ext/1606841020/inflate.o.d ${OBJECTDIR}/_ext/1606841020/inftrees.o.d ${OBJECTDIR}/_ext/1606841020/trees.o.d ${OBJECTDIR}/_ext/1606841020/uncompr.o.d ${OBJECTDIR}/_ext/1606841020/zutil.o.d ${OBJECTDIR}/_ext/1886890887/ecc.o.d ${OBJECTDIR}/_ext/1886890887/ssl-dummy.o.d ${OBJECTDIR}/_ext/1886890887/arc4.o.d ${OBJECTDIR}/_ext/1886890887/pwdbased.o.d ${OBJECTDIR}/_ext/1886890887/tfm.o.d ${OBJECTDIR}/_ext/1886890887/asn.o.d ${OBJECTDIR}/_ext/1886890887/des3.o.d ${OBJECTDIR}/_ext/1886890887/rsa.o.d ${OBJECTDIR}/_ext/1886890887/aes.o.d ${OBJECTDIR}/_ext/1886890887/md5.o.d ${OBJECTDIR}/_ext/1886890887/sha.o.d ${OBJECTDIR}/_ext/1886890887/sha256.o.d ${OBJECTDIR}/_ext/1886890887/sha512.o.d ${OBJECTDIR}/_ext/1886890887/hmac.o.d ${OBJECTDIR}/_ext/1886890887/hash.o.d ${OBJECTDIR}/_ext/1886890887/compress.o.d ${OBJECTDIR}/_ext/1886890887/random.o.d ${OBJECTDIR}/_ext/1886890887/crypto.o.d ${OBJECTDIR}/_ext/1886890887/coding.o.d ${OBJECTDIR}/_ext/1886890887/error.o.d ${OBJECTDIR}/_ext/1886890887/integer.o.d ${OBJECTDIR}/_ext/1886890887/logging.o.d ${OBJECTDIR}/_ext/1886890887/memory.o.d ${OBJECTDIR}/_ext/1886890887/misc.o.d ${OBJECTDIR}/_ext/1886890887/port.o.d ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d ${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o.d ${OBJECTDIR}/_ext/185269848/drv_tmr.o.d ${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d ${OBJECTDIR}/_ext/77319752/sys_ports.o.d ${OBJECTDIR}/_ext/1283840359/sys_random.o.d ${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d ${OBJECTDIR}/_ext/1136935090/helpers.o.d ${OBJECTDIR}/_ext/1136935090/lfsr.o.d ${OBJECTDIR}/_ext/1408260596/tcp.o.d ${OBJECTDIR}/_ext/1408260596/udp.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o.d ${OBJECTDIR}/_ext/1408260596/arp.o.d ${OBJECTDIR}/_ext/1408260596/dhcp.o.d ${OBJECTDIR}/_ext/1408260596/dns.o.d ${OBJECTDIR}/_ext/1408260596/icmp.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d ${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d ${OBJECTDIR}/_ext/1408260596/oahash.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d ${OBJECTDIR}/_ext/1408260596/ipv4.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1774832663/drv_i2c_static_buffer_model.o ${OBJECTDIR}/_ext/1774832663/drv_i2c_mapping.o ${OBJECTDIR}/_ext/793758023/drv_ic_static.o ${OBJECTDIR}/_ext/965532929/drv_oc_static.o ${OBJECTDIR}/_ext/1892475994/sys_clk_static.o ${OBJECTDIR}/_ext/904121046/sys_ports_static.o ${OBJECTDIR}/_ext/1720293489/system_init.o ${OBJECTDIR}/_ext/1720293489/system_interrupt.o ${OBJECTDIR}/_ext/1720293489/system_exceptions.o ${OBJECTDIR}/_ext/1720293489/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/TCPServer.o ${OBJECTDIR}/_ext/1360937237/fan.o ${OBJECTDIR}/_ext/1360937237/led.o ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o ${OBJECTDIR}/_ext/1606841020/adler32.o ${OBJECTDIR}/_ext/1606841020/compress.o ${OBJECTDIR}/_ext/1606841020/crc32.o ${OBJECTDIR}/_ext/1606841020/deflate.o ${OBJECTDIR}/_ext/1606841020/infback.o ${OBJECTDIR}/_ext/1606841020/inffast.o ${OBJECTDIR}/_ext/1606841020/inflate.o ${OBJECTDIR}/_ext/1606841020/inftrees.o ${OBJECTDIR}/_ext/1606841020/trees.o ${OBJECTDIR}/_ext/1606841020/uncompr.o ${OBJECTDIR}/_ext/1606841020/zutil.o ${OBJECTDIR}/_ext/1886890887/ecc.o ${OBJECTDIR}/_ext/1886890887/ssl-dummy.o ${OBJECTDIR}/_ext/1886890887/arc4.o ${OBJECTDIR}/_ext/1886890887/pwdbased.o ${OBJECTDIR}/_ext/1886890887/tfm.o ${OBJECTDIR}/_ext/1886890887/asn.o ${OBJECTDIR}/_ext/1886890887/des3.o ${OBJECTDIR}/_ext/1886890887/rsa.o ${OBJECTDIR}/_ext/1886890887/aes.o ${OBJECTDIR}/_ext/1886890887/md5.o ${OBJECTDIR}/_ext/1886890887/sha.o ${OBJECTDIR}/_ext/1886890887/sha256.o ${OBJECTDIR}/_ext/1886890887/sha512.o ${OBJECTDIR}/_ext/1886890887/hmac.o ${OBJECTDIR}/_ext/1886890887/hash.o ${OBJECTDIR}/_ext/1886890887/compress.o ${OBJECTDIR}/_ext/1886890887/random.o ${OBJECTDIR}/_ext/1886890887/crypto.o ${OBJECTDIR}/_ext/1886890887/coding.o ${OBJECTDIR}/_ext/1886890887/error.o ${OBJECTDIR}/_ext/1886890887/integer.o ${OBJECTDIR}/_ext/1886890887/logging.o ${OBJECTDIR}/_ext/1886890887/memory.o ${OBJECTDIR}/_ext/1886890887/misc.o ${OBJECTDIR}/_ext/1886890887/port.o ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o ${OBJECTDIR}/_ext/732687875/drv_ethphy.o ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o ${OBJECTDIR}/_ext/185269848/drv_tmr.o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ${OBJECTDIR}/_ext/77319752/sys_ports.o ${OBJECTDIR}/_ext/1283840359/sys_random.o ${OBJECTDIR}/_ext/1264926591/sys_tmr.o ${OBJECTDIR}/_ext/1136935090/helpers.o ${OBJECTDIR}/_ext/1136935090/lfsr.o ${OBJECTDIR}/_ext/1408260596/tcp.o ${OBJECTDIR}/_ext/1408260596/udp.o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1408260596/arp.o ${OBJECTDIR}/_ext/1408260596/dhcp.o ${OBJECTDIR}/_ext/1408260596/dns.o ${OBJECTDIR}/_ext/1408260596/icmp.o ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o ${OBJECTDIR}/_ext/1408260596/hash_fnv.o ${OBJECTDIR}/_ext/1408260596/oahash.o ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o ${OBJECTDIR}/_ext/1408260596/ipv4.o

# Source Files
SOURCEFILES=../src/system_config/Diplomamunka/framework/driver/i2c/src/drv_i2c_static_buffer_model.c ../src/system_config/Diplomamunka/framework/driver/i2c/src/drv_i2c_mapping.c ../src/system_config/Diplomamunka/framework/driver/ic/src/drv_ic_static.c ../src/system_config/Diplomamunka/framework/driver/oc/src/drv_oc_static.c ../src/system_config/Diplomamunka/framework/system/clk/src/sys_clk_static.c ../src/system_config/Diplomamunka/framework/system/ports/src/sys_ports_static.c ../src/system_config/Diplomamunka/system_init.c ../src/system_config/Diplomamunka/system_interrupt.c ../src/system_config/Diplomamunka/system_exceptions.c ../src/system_config/Diplomamunka/system_tasks.c ../src/app.c ../src/main.c ../src/TCPServer.c ../src/fan.c ../src/led.c ../../../../bsp/pic32mx_eth_sk/bsp_sys_init.c ../../../../framework/crypto/src/zlib-1.2.7/adler32.c ../../../../framework/crypto/src/zlib-1.2.7/compress.c ../../../../framework/crypto/src/zlib-1.2.7/crc32.c ../../../../framework/crypto/src/zlib-1.2.7/deflate.c ../../../../framework/crypto/src/zlib-1.2.7/infback.c ../../../../framework/crypto/src/zlib-1.2.7/inffast.c ../../../../framework/crypto/src/zlib-1.2.7/inflate.c ../../../../framework/crypto/src/zlib-1.2.7/inftrees.c ../../../../framework/crypto/src/zlib-1.2.7/trees.c ../../../../framework/crypto/src/zlib-1.2.7/uncompr.c ../../../../framework/crypto/src/zlib-1.2.7/zutil.c ../../../../framework/crypto/src/ecc.c ../../../../framework/crypto/src/ssl-dummy.c ../../../../framework/crypto/src/arc4.c ../../../../framework/crypto/src/pwdbased.c ../../../../framework/crypto/src/tfm.c ../../../../framework/crypto/src/asn.c ../../../../framework/crypto/src/des3.c ../../../../framework/crypto/src/rsa.c ../../../../framework/crypto/src/aes.c ../../../../framework/crypto/src/md5.c ../../../../framework/crypto/src/sha.c ../../../../framework/crypto/src/sha256.c ../../../../framework/crypto/src/sha512.c ../../../../framework/crypto/src/hmac.c ../../../../framework/crypto/src/hash.c ../../../../framework/crypto/src/compress.c ../../../../framework/crypto/src/random.c ../../../../framework/crypto/src/crypto.c ../../../../framework/crypto/src/coding.c ../../../../framework/crypto/src/error.c ../../../../framework/crypto/src/integer.c ../../../../framework/crypto/src/logging.c ../../../../framework/crypto/src/memory.c ../../../../framework/crypto/src/misc.c ../../../../framework/crypto/src/port.c ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../framework/system/devcon/src/sys_devcon.c ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../framework/system/int/src/sys_int_pic32.c ../../../../framework/system/ports/src/sys_ports.c ../../../../framework/system/random/src/sys_random.c ../../../../framework/system/tmr/src/sys_tmr.c ../../../../framework/tcpip/src/common/helpers.c ../../../../framework/tcpip/src/common/lfsr.c ../../../../framework/tcpip/src/tcp.c ../../../../framework/tcpip/src/udp.c ../../../../framework/tcpip/src/tcpip_heap_alloc.c ../../../../framework/tcpip/src/tcpip_heap_internal.c ../../../../framework/tcpip/src/arp.c ../../../../framework/tcpip/src/dhcp.c ../../../../framework/tcpip/src/dns.c ../../../../framework/tcpip/src/icmp.c ../../../../framework/tcpip/src/tcpip_announce.c ../../../../framework/tcpip/src/hash_fnv.c ../../../../framework/tcpip/src/oahash.c ../../../../framework/tcpip/src/tcpip_helpers.c ../../../../framework/tcpip/src/tcpip_helper_c32.S ../../../../framework/tcpip/src/tcpip_manager.c ../../../../framework/tcpip/src/tcpip_notify.c ../../../../framework/tcpip/src/tcpip_packet.c ../../../../framework/tcpip/src/ipv4.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-Diplomamunka.mk dist/${CND_CONF}/${IMAGE_TYPE}/Diplomamunka.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o: ../../../../framework/tcpip/src/tcpip_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o ../../../../framework/tcpip/src/tcpip_helper_c32.S  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1
	
else
${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o: ../../../../framework/tcpip/src/tcpip_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o ../../../../framework/tcpip/src/tcpip_helper_c32.S  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1774832663/drv_i2c_static_buffer_model.o: ../src/system_config/Diplomamunka/framework/driver/i2c/src/drv_i2c_static_buffer_model.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774832663" 
	@${RM} ${OBJECTDIR}/_ext/1774832663/drv_i2c_static_buffer_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774832663/drv_i2c_static_buffer_model.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774832663/drv_i2c_static_buffer_model.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1774832663/drv_i2c_static_buffer_model.o.d" -o ${OBJECTDIR}/_ext/1774832663/drv_i2c_static_buffer_model.o ../src/system_config/Diplomamunka/framework/driver/i2c/src/drv_i2c_static_buffer_model.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1774832663/drv_i2c_mapping.o: ../src/system_config/Diplomamunka/framework/driver/i2c/src/drv_i2c_mapping.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774832663" 
	@${RM} ${OBJECTDIR}/_ext/1774832663/drv_i2c_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774832663/drv_i2c_mapping.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774832663/drv_i2c_mapping.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1774832663/drv_i2c_mapping.o.d" -o ${OBJECTDIR}/_ext/1774832663/drv_i2c_mapping.o ../src/system_config/Diplomamunka/framework/driver/i2c/src/drv_i2c_mapping.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/793758023/drv_ic_static.o: ../src/system_config/Diplomamunka/framework/driver/ic/src/drv_ic_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793758023" 
	@${RM} ${OBJECTDIR}/_ext/793758023/drv_ic_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/793758023/drv_ic_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793758023/drv_ic_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/793758023/drv_ic_static.o.d" -o ${OBJECTDIR}/_ext/793758023/drv_ic_static.o ../src/system_config/Diplomamunka/framework/driver/ic/src/drv_ic_static.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/965532929/drv_oc_static.o: ../src/system_config/Diplomamunka/framework/driver/oc/src/drv_oc_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/965532929" 
	@${RM} ${OBJECTDIR}/_ext/965532929/drv_oc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/965532929/drv_oc_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/965532929/drv_oc_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/965532929/drv_oc_static.o.d" -o ${OBJECTDIR}/_ext/965532929/drv_oc_static.o ../src/system_config/Diplomamunka/framework/driver/oc/src/drv_oc_static.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1892475994/sys_clk_static.o: ../src/system_config/Diplomamunka/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1892475994" 
	@${RM} ${OBJECTDIR}/_ext/1892475994/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1892475994/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1892475994/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1892475994/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/1892475994/sys_clk_static.o ../src/system_config/Diplomamunka/framework/system/clk/src/sys_clk_static.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/904121046/sys_ports_static.o: ../src/system_config/Diplomamunka/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/904121046" 
	@${RM} ${OBJECTDIR}/_ext/904121046/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/904121046/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/904121046/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/904121046/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/904121046/sys_ports_static.o ../src/system_config/Diplomamunka/framework/system/ports/src/sys_ports_static.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1720293489/system_init.o: ../src/system_config/Diplomamunka/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1720293489" 
	@${RM} ${OBJECTDIR}/_ext/1720293489/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1720293489/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1720293489/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1720293489/system_init.o.d" -o ${OBJECTDIR}/_ext/1720293489/system_init.o ../src/system_config/Diplomamunka/system_init.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1720293489/system_interrupt.o: ../src/system_config/Diplomamunka/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1720293489" 
	@${RM} ${OBJECTDIR}/_ext/1720293489/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1720293489/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1720293489/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1720293489/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1720293489/system_interrupt.o ../src/system_config/Diplomamunka/system_interrupt.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1720293489/system_exceptions.o: ../src/system_config/Diplomamunka/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1720293489" 
	@${RM} ${OBJECTDIR}/_ext/1720293489/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1720293489/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1720293489/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1720293489/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1720293489/system_exceptions.o ../src/system_config/Diplomamunka/system_exceptions.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1720293489/system_tasks.o: ../src/system_config/Diplomamunka/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1720293489" 
	@${RM} ${OBJECTDIR}/_ext/1720293489/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1720293489/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1720293489/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1720293489/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1720293489/system_tasks.o ../src/system_config/Diplomamunka/system_tasks.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/TCPServer.o: ../src/TCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/TCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/TCPServer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/TCPServer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/TCPServer.o.d" -o ${OBJECTDIR}/_ext/1360937237/TCPServer.o ../src/TCPServer.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/fan.o: ../src/fan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fan.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/fan.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/fan.o.d" -o ${OBJECTDIR}/_ext/1360937237/fan.o ../src/fan.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/led.o: ../src/led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/led.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/led.o.d" -o ${OBJECTDIR}/_ext/1360937237/led.o ../src/led.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o: ../../../../bsp/pic32mx_eth_sk/bsp_sys_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1837361561" 
	@${RM} ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o.d" -o ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o ../../../../bsp/pic32mx_eth_sk/bsp_sys_init.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/adler32.o: ../../../../framework/crypto/src/zlib-1.2.7/adler32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/adler32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/adler32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/adler32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/adler32.o.d" -o ${OBJECTDIR}/_ext/1606841020/adler32.o ../../../../framework/crypto/src/zlib-1.2.7/adler32.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/compress.o: ../../../../framework/crypto/src/zlib-1.2.7/compress.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/compress.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/compress.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/compress.o.d" -o ${OBJECTDIR}/_ext/1606841020/compress.o ../../../../framework/crypto/src/zlib-1.2.7/compress.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/crc32.o: ../../../../framework/crypto/src/zlib-1.2.7/crc32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/crc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/crc32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/crc32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/crc32.o.d" -o ${OBJECTDIR}/_ext/1606841020/crc32.o ../../../../framework/crypto/src/zlib-1.2.7/crc32.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/deflate.o: ../../../../framework/crypto/src/zlib-1.2.7/deflate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/deflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/deflate.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/deflate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/deflate.o.d" -o ${OBJECTDIR}/_ext/1606841020/deflate.o ../../../../framework/crypto/src/zlib-1.2.7/deflate.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/infback.o: ../../../../framework/crypto/src/zlib-1.2.7/infback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/infback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/infback.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/infback.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/infback.o.d" -o ${OBJECTDIR}/_ext/1606841020/infback.o ../../../../framework/crypto/src/zlib-1.2.7/infback.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/inffast.o: ../../../../framework/crypto/src/zlib-1.2.7/inffast.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/inffast.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/inffast.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/inffast.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/inffast.o.d" -o ${OBJECTDIR}/_ext/1606841020/inffast.o ../../../../framework/crypto/src/zlib-1.2.7/inffast.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/inflate.o: ../../../../framework/crypto/src/zlib-1.2.7/inflate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/inflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/inflate.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/inflate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/inflate.o.d" -o ${OBJECTDIR}/_ext/1606841020/inflate.o ../../../../framework/crypto/src/zlib-1.2.7/inflate.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/inftrees.o: ../../../../framework/crypto/src/zlib-1.2.7/inftrees.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/inftrees.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/inftrees.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/inftrees.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/inftrees.o.d" -o ${OBJECTDIR}/_ext/1606841020/inftrees.o ../../../../framework/crypto/src/zlib-1.2.7/inftrees.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/trees.o: ../../../../framework/crypto/src/zlib-1.2.7/trees.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/trees.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/trees.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/trees.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/trees.o.d" -o ${OBJECTDIR}/_ext/1606841020/trees.o ../../../../framework/crypto/src/zlib-1.2.7/trees.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/uncompr.o: ../../../../framework/crypto/src/zlib-1.2.7/uncompr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/uncompr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/uncompr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/uncompr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/uncompr.o.d" -o ${OBJECTDIR}/_ext/1606841020/uncompr.o ../../../../framework/crypto/src/zlib-1.2.7/uncompr.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/zutil.o: ../../../../framework/crypto/src/zlib-1.2.7/zutil.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/zutil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/zutil.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/zutil.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/zutil.o.d" -o ${OBJECTDIR}/_ext/1606841020/zutil.o ../../../../framework/crypto/src/zlib-1.2.7/zutil.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/ecc.o: ../../../../framework/crypto/src/ecc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/ecc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/ecc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/ecc.o.d" -o ${OBJECTDIR}/_ext/1886890887/ecc.o ../../../../framework/crypto/src/ecc.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/ssl-dummy.o: ../../../../framework/crypto/src/ssl-dummy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/ssl-dummy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/ssl-dummy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/ssl-dummy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/ssl-dummy.o.d" -o ${OBJECTDIR}/_ext/1886890887/ssl-dummy.o ../../../../framework/crypto/src/ssl-dummy.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/arc4.o: ../../../../framework/crypto/src/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/arc4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/arc4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/arc4.o.d" -o ${OBJECTDIR}/_ext/1886890887/arc4.o ../../../../framework/crypto/src/arc4.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/pwdbased.o: ../../../../framework/crypto/src/pwdbased.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/pwdbased.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/pwdbased.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/pwdbased.o.d" -o ${OBJECTDIR}/_ext/1886890887/pwdbased.o ../../../../framework/crypto/src/pwdbased.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/tfm.o: ../../../../framework/crypto/src/tfm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/tfm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/tfm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/tfm.o.d" -o ${OBJECTDIR}/_ext/1886890887/tfm.o ../../../../framework/crypto/src/tfm.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/asn.o: ../../../../framework/crypto/src/asn.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/asn.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/asn.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/asn.o.d" -o ${OBJECTDIR}/_ext/1886890887/asn.o ../../../../framework/crypto/src/asn.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/des3.o: ../../../../framework/crypto/src/des3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/des3.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/des3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/des3.o.d" -o ${OBJECTDIR}/_ext/1886890887/des3.o ../../../../framework/crypto/src/des3.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/rsa.o: ../../../../framework/crypto/src/rsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/rsa.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/rsa.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/rsa.o.d" -o ${OBJECTDIR}/_ext/1886890887/rsa.o ../../../../framework/crypto/src/rsa.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/aes.o: ../../../../framework/crypto/src/aes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/aes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/aes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/aes.o.d" -o ${OBJECTDIR}/_ext/1886890887/aes.o ../../../../framework/crypto/src/aes.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/md5.o: ../../../../framework/crypto/src/md5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/md5.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/md5.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/md5.o.d" -o ${OBJECTDIR}/_ext/1886890887/md5.o ../../../../framework/crypto/src/md5.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/sha.o: ../../../../framework/crypto/src/sha.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/sha.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/sha.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/sha.o.d" -o ${OBJECTDIR}/_ext/1886890887/sha.o ../../../../framework/crypto/src/sha.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/sha256.o: ../../../../framework/crypto/src/sha256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/sha256.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/sha256.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/sha256.o.d" -o ${OBJECTDIR}/_ext/1886890887/sha256.o ../../../../framework/crypto/src/sha256.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/sha512.o: ../../../../framework/crypto/src/sha512.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/sha512.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/sha512.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/sha512.o.d" -o ${OBJECTDIR}/_ext/1886890887/sha512.o ../../../../framework/crypto/src/sha512.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/hmac.o: ../../../../framework/crypto/src/hmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/hmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/hmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/hmac.o.d" -o ${OBJECTDIR}/_ext/1886890887/hmac.o ../../../../framework/crypto/src/hmac.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/hash.o: ../../../../framework/crypto/src/hash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/hash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/hash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/hash.o.d" -o ${OBJECTDIR}/_ext/1886890887/hash.o ../../../../framework/crypto/src/hash.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/compress.o: ../../../../framework/crypto/src/compress.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/compress.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/compress.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/compress.o.d" -o ${OBJECTDIR}/_ext/1886890887/compress.o ../../../../framework/crypto/src/compress.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/random.o: ../../../../framework/crypto/src/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/random.o.d" -o ${OBJECTDIR}/_ext/1886890887/random.o ../../../../framework/crypto/src/random.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/crypto.o: ../../../../framework/crypto/src/crypto.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/crypto.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/crypto.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/crypto.o.d" -o ${OBJECTDIR}/_ext/1886890887/crypto.o ../../../../framework/crypto/src/crypto.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/coding.o: ../../../../framework/crypto/src/coding.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/coding.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/coding.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/coding.o.d" -o ${OBJECTDIR}/_ext/1886890887/coding.o ../../../../framework/crypto/src/coding.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/error.o: ../../../../framework/crypto/src/error.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/error.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/error.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/error.o.d" -o ${OBJECTDIR}/_ext/1886890887/error.o ../../../../framework/crypto/src/error.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/integer.o: ../../../../framework/crypto/src/integer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/integer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/integer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/integer.o.d" -o ${OBJECTDIR}/_ext/1886890887/integer.o ../../../../framework/crypto/src/integer.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/logging.o: ../../../../framework/crypto/src/logging.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/logging.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/logging.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/logging.o.d" -o ${OBJECTDIR}/_ext/1886890887/logging.o ../../../../framework/crypto/src/logging.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/memory.o: ../../../../framework/crypto/src/memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/memory.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/memory.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/memory.o.d" -o ${OBJECTDIR}/_ext/1886890887/memory.o ../../../../framework/crypto/src/memory.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/misc.o: ../../../../framework/crypto/src/misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/misc.o.d" -o ${OBJECTDIR}/_ext/1886890887/misc.o ../../../../framework/crypto/src/misc.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/port.o: ../../../../framework/crypto/src/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/port.o.d" -o ${OBJECTDIR}/_ext/1886890887/port.o ../../../../framework/crypto/src/port.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1908841681/drv_ethmac.o: ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1908841681" 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o: ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1908841681" 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/732687875/drv_ethphy.o: ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732687875" 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_ethphy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/732687875/drv_ethphy.o ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o: ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732687875" 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o.d" -o ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/185269848/drv_tmr.o: ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/185269848" 
	@${RM} ${OBJECTDIR}/_ext/185269848/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/185269848/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/185269848/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/185269848/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/185269848/drv_tmr.o ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1271179505/sys_devcon.o: ../../../../framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ../../../../framework/system/devcon/src/sys_devcon.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o: ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/122796885/sys_int_pic32.o: ../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/122796885" 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ../../../../framework/system/int/src/sys_int_pic32.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/77319752/sys_ports.o: ../../../../framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/77319752" 
	@${RM} ${OBJECTDIR}/_ext/77319752/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/77319752/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/77319752/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/77319752/sys_ports.o.d" -o ${OBJECTDIR}/_ext/77319752/sys_ports.o ../../../../framework/system/ports/src/sys_ports.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1283840359/sys_random.o: ../../../../framework/system/random/src/sys_random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1283840359" 
	@${RM} ${OBJECTDIR}/_ext/1283840359/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283840359/sys_random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1283840359/sys_random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1283840359/sys_random.o.d" -o ${OBJECTDIR}/_ext/1283840359/sys_random.o ../../../../framework/system/random/src/sys_random.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1264926591/sys_tmr.o: ../../../../framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1264926591" 
	@${RM} ${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1264926591/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1264926591/sys_tmr.o ../../../../framework/system/tmr/src/sys_tmr.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1136935090/helpers.o: ../../../../framework/tcpip/src/common/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1136935090/helpers.o.d" -o ${OBJECTDIR}/_ext/1136935090/helpers.o ../../../../framework/tcpip/src/common/helpers.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1136935090/lfsr.o: ../../../../framework/tcpip/src/common/lfsr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/lfsr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/lfsr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/lfsr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1136935090/lfsr.o.d" -o ${OBJECTDIR}/_ext/1136935090/lfsr.o ../../../../framework/tcpip/src/common/lfsr.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/tcp.o: ../../../../framework/tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcp.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcp.o ../../../../framework/tcpip/src/tcp.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/udp.o: ../../../../framework/tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/udp.o.d" -o ${OBJECTDIR}/_ext/1408260596/udp.o ../../../../framework/tcpip/src/udp.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o: ../../../../framework/tcpip/src/tcpip_heap_alloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o ../../../../framework/tcpip/src/tcpip_heap_alloc.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o: ../../../../framework/tcpip/src/tcpip_heap_internal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o ../../../../framework/tcpip/src/tcpip_heap_internal.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/arp.o: ../../../../framework/tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/arp.o.d" -o ${OBJECTDIR}/_ext/1408260596/arp.o ../../../../framework/tcpip/src/arp.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/dhcp.o: ../../../../framework/tcpip/src/dhcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dhcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/dhcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/dhcp.o.d" -o ${OBJECTDIR}/_ext/1408260596/dhcp.o ../../../../framework/tcpip/src/dhcp.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/dns.o: ../../../../framework/tcpip/src/dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dns.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/dns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/dns.o.d" -o ${OBJECTDIR}/_ext/1408260596/dns.o ../../../../framework/tcpip/src/dns.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/icmp.o: ../../../../framework/tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/icmp.o.d" -o ${OBJECTDIR}/_ext/1408260596/icmp.o ../../../../framework/tcpip/src/icmp.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/tcpip_announce.o: ../../../../framework/tcpip/src/tcpip_announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o ../../../../framework/tcpip/src/tcpip_announce.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/hash_fnv.o: ../../../../framework/tcpip/src/hash_fnv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/hash_fnv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1408260596/hash_fnv.o ../../../../framework/tcpip/src/hash_fnv.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/oahash.o: ../../../../framework/tcpip/src/oahash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/oahash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/oahash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/oahash.o.d" -o ${OBJECTDIR}/_ext/1408260596/oahash.o ../../../../framework/tcpip/src/oahash.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o: ../../../../framework/tcpip/src/tcpip_helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o ../../../../framework/tcpip/src/tcpip_helpers.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/tcpip_manager.o: ../../../../framework/tcpip/src/tcpip_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o ../../../../framework/tcpip/src/tcpip_manager.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/tcpip_notify.o: ../../../../framework/tcpip/src/tcpip_notify.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o ../../../../framework/tcpip/src/tcpip_notify.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/tcpip_packet.o: ../../../../framework/tcpip/src/tcpip_packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o ../../../../framework/tcpip/src/tcpip_packet.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/ipv4.o: ../../../../framework/tcpip/src/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/ipv4.o.d" -o ${OBJECTDIR}/_ext/1408260596/ipv4.o ../../../../framework/tcpip/src/ipv4.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1774832663/drv_i2c_static_buffer_model.o: ../src/system_config/Diplomamunka/framework/driver/i2c/src/drv_i2c_static_buffer_model.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774832663" 
	@${RM} ${OBJECTDIR}/_ext/1774832663/drv_i2c_static_buffer_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774832663/drv_i2c_static_buffer_model.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774832663/drv_i2c_static_buffer_model.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1774832663/drv_i2c_static_buffer_model.o.d" -o ${OBJECTDIR}/_ext/1774832663/drv_i2c_static_buffer_model.o ../src/system_config/Diplomamunka/framework/driver/i2c/src/drv_i2c_static_buffer_model.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1774832663/drv_i2c_mapping.o: ../src/system_config/Diplomamunka/framework/driver/i2c/src/drv_i2c_mapping.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774832663" 
	@${RM} ${OBJECTDIR}/_ext/1774832663/drv_i2c_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774832663/drv_i2c_mapping.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774832663/drv_i2c_mapping.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1774832663/drv_i2c_mapping.o.d" -o ${OBJECTDIR}/_ext/1774832663/drv_i2c_mapping.o ../src/system_config/Diplomamunka/framework/driver/i2c/src/drv_i2c_mapping.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/793758023/drv_ic_static.o: ../src/system_config/Diplomamunka/framework/driver/ic/src/drv_ic_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793758023" 
	@${RM} ${OBJECTDIR}/_ext/793758023/drv_ic_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/793758023/drv_ic_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793758023/drv_ic_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/793758023/drv_ic_static.o.d" -o ${OBJECTDIR}/_ext/793758023/drv_ic_static.o ../src/system_config/Diplomamunka/framework/driver/ic/src/drv_ic_static.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/965532929/drv_oc_static.o: ../src/system_config/Diplomamunka/framework/driver/oc/src/drv_oc_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/965532929" 
	@${RM} ${OBJECTDIR}/_ext/965532929/drv_oc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/965532929/drv_oc_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/965532929/drv_oc_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/965532929/drv_oc_static.o.d" -o ${OBJECTDIR}/_ext/965532929/drv_oc_static.o ../src/system_config/Diplomamunka/framework/driver/oc/src/drv_oc_static.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1892475994/sys_clk_static.o: ../src/system_config/Diplomamunka/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1892475994" 
	@${RM} ${OBJECTDIR}/_ext/1892475994/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1892475994/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1892475994/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1892475994/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/1892475994/sys_clk_static.o ../src/system_config/Diplomamunka/framework/system/clk/src/sys_clk_static.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/904121046/sys_ports_static.o: ../src/system_config/Diplomamunka/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/904121046" 
	@${RM} ${OBJECTDIR}/_ext/904121046/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/904121046/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/904121046/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/904121046/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/904121046/sys_ports_static.o ../src/system_config/Diplomamunka/framework/system/ports/src/sys_ports_static.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1720293489/system_init.o: ../src/system_config/Diplomamunka/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1720293489" 
	@${RM} ${OBJECTDIR}/_ext/1720293489/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1720293489/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1720293489/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1720293489/system_init.o.d" -o ${OBJECTDIR}/_ext/1720293489/system_init.o ../src/system_config/Diplomamunka/system_init.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1720293489/system_interrupt.o: ../src/system_config/Diplomamunka/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1720293489" 
	@${RM} ${OBJECTDIR}/_ext/1720293489/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1720293489/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1720293489/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1720293489/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1720293489/system_interrupt.o ../src/system_config/Diplomamunka/system_interrupt.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1720293489/system_exceptions.o: ../src/system_config/Diplomamunka/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1720293489" 
	@${RM} ${OBJECTDIR}/_ext/1720293489/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1720293489/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1720293489/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1720293489/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1720293489/system_exceptions.o ../src/system_config/Diplomamunka/system_exceptions.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1720293489/system_tasks.o: ../src/system_config/Diplomamunka/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1720293489" 
	@${RM} ${OBJECTDIR}/_ext/1720293489/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1720293489/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1720293489/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1720293489/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1720293489/system_tasks.o ../src/system_config/Diplomamunka/system_tasks.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/TCPServer.o: ../src/TCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/TCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/TCPServer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/TCPServer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/TCPServer.o.d" -o ${OBJECTDIR}/_ext/1360937237/TCPServer.o ../src/TCPServer.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/fan.o: ../src/fan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fan.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/fan.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/fan.o.d" -o ${OBJECTDIR}/_ext/1360937237/fan.o ../src/fan.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/led.o: ../src/led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/led.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/led.o.d" -o ${OBJECTDIR}/_ext/1360937237/led.o ../src/led.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o: ../../../../bsp/pic32mx_eth_sk/bsp_sys_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1837361561" 
	@${RM} ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o.d" -o ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o ../../../../bsp/pic32mx_eth_sk/bsp_sys_init.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/adler32.o: ../../../../framework/crypto/src/zlib-1.2.7/adler32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/adler32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/adler32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/adler32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/adler32.o.d" -o ${OBJECTDIR}/_ext/1606841020/adler32.o ../../../../framework/crypto/src/zlib-1.2.7/adler32.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/compress.o: ../../../../framework/crypto/src/zlib-1.2.7/compress.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/compress.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/compress.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/compress.o.d" -o ${OBJECTDIR}/_ext/1606841020/compress.o ../../../../framework/crypto/src/zlib-1.2.7/compress.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/crc32.o: ../../../../framework/crypto/src/zlib-1.2.7/crc32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/crc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/crc32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/crc32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/crc32.o.d" -o ${OBJECTDIR}/_ext/1606841020/crc32.o ../../../../framework/crypto/src/zlib-1.2.7/crc32.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/deflate.o: ../../../../framework/crypto/src/zlib-1.2.7/deflate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/deflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/deflate.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/deflate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/deflate.o.d" -o ${OBJECTDIR}/_ext/1606841020/deflate.o ../../../../framework/crypto/src/zlib-1.2.7/deflate.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/infback.o: ../../../../framework/crypto/src/zlib-1.2.7/infback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/infback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/infback.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/infback.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/infback.o.d" -o ${OBJECTDIR}/_ext/1606841020/infback.o ../../../../framework/crypto/src/zlib-1.2.7/infback.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/inffast.o: ../../../../framework/crypto/src/zlib-1.2.7/inffast.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/inffast.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/inffast.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/inffast.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/inffast.o.d" -o ${OBJECTDIR}/_ext/1606841020/inffast.o ../../../../framework/crypto/src/zlib-1.2.7/inffast.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/inflate.o: ../../../../framework/crypto/src/zlib-1.2.7/inflate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/inflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/inflate.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/inflate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/inflate.o.d" -o ${OBJECTDIR}/_ext/1606841020/inflate.o ../../../../framework/crypto/src/zlib-1.2.7/inflate.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/inftrees.o: ../../../../framework/crypto/src/zlib-1.2.7/inftrees.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/inftrees.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/inftrees.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/inftrees.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/inftrees.o.d" -o ${OBJECTDIR}/_ext/1606841020/inftrees.o ../../../../framework/crypto/src/zlib-1.2.7/inftrees.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/trees.o: ../../../../framework/crypto/src/zlib-1.2.7/trees.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/trees.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/trees.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/trees.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/trees.o.d" -o ${OBJECTDIR}/_ext/1606841020/trees.o ../../../../framework/crypto/src/zlib-1.2.7/trees.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/uncompr.o: ../../../../framework/crypto/src/zlib-1.2.7/uncompr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/uncompr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/uncompr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/uncompr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/uncompr.o.d" -o ${OBJECTDIR}/_ext/1606841020/uncompr.o ../../../../framework/crypto/src/zlib-1.2.7/uncompr.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1606841020/zutil.o: ../../../../framework/crypto/src/zlib-1.2.7/zutil.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1606841020" 
	@${RM} ${OBJECTDIR}/_ext/1606841020/zutil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1606841020/zutil.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1606841020/zutil.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1606841020/zutil.o.d" -o ${OBJECTDIR}/_ext/1606841020/zutil.o ../../../../framework/crypto/src/zlib-1.2.7/zutil.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/ecc.o: ../../../../framework/crypto/src/ecc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/ecc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/ecc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/ecc.o.d" -o ${OBJECTDIR}/_ext/1886890887/ecc.o ../../../../framework/crypto/src/ecc.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/ssl-dummy.o: ../../../../framework/crypto/src/ssl-dummy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/ssl-dummy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/ssl-dummy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/ssl-dummy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/ssl-dummy.o.d" -o ${OBJECTDIR}/_ext/1886890887/ssl-dummy.o ../../../../framework/crypto/src/ssl-dummy.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/arc4.o: ../../../../framework/crypto/src/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/arc4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/arc4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/arc4.o.d" -o ${OBJECTDIR}/_ext/1886890887/arc4.o ../../../../framework/crypto/src/arc4.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/pwdbased.o: ../../../../framework/crypto/src/pwdbased.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/pwdbased.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/pwdbased.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/pwdbased.o.d" -o ${OBJECTDIR}/_ext/1886890887/pwdbased.o ../../../../framework/crypto/src/pwdbased.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/tfm.o: ../../../../framework/crypto/src/tfm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/tfm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/tfm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/tfm.o.d" -o ${OBJECTDIR}/_ext/1886890887/tfm.o ../../../../framework/crypto/src/tfm.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/asn.o: ../../../../framework/crypto/src/asn.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/asn.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/asn.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/asn.o.d" -o ${OBJECTDIR}/_ext/1886890887/asn.o ../../../../framework/crypto/src/asn.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/des3.o: ../../../../framework/crypto/src/des3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/des3.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/des3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/des3.o.d" -o ${OBJECTDIR}/_ext/1886890887/des3.o ../../../../framework/crypto/src/des3.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/rsa.o: ../../../../framework/crypto/src/rsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/rsa.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/rsa.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/rsa.o.d" -o ${OBJECTDIR}/_ext/1886890887/rsa.o ../../../../framework/crypto/src/rsa.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/aes.o: ../../../../framework/crypto/src/aes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/aes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/aes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/aes.o.d" -o ${OBJECTDIR}/_ext/1886890887/aes.o ../../../../framework/crypto/src/aes.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/md5.o: ../../../../framework/crypto/src/md5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/md5.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/md5.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/md5.o.d" -o ${OBJECTDIR}/_ext/1886890887/md5.o ../../../../framework/crypto/src/md5.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/sha.o: ../../../../framework/crypto/src/sha.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/sha.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/sha.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/sha.o.d" -o ${OBJECTDIR}/_ext/1886890887/sha.o ../../../../framework/crypto/src/sha.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/sha256.o: ../../../../framework/crypto/src/sha256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/sha256.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/sha256.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/sha256.o.d" -o ${OBJECTDIR}/_ext/1886890887/sha256.o ../../../../framework/crypto/src/sha256.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/sha512.o: ../../../../framework/crypto/src/sha512.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/sha512.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/sha512.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/sha512.o.d" -o ${OBJECTDIR}/_ext/1886890887/sha512.o ../../../../framework/crypto/src/sha512.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/hmac.o: ../../../../framework/crypto/src/hmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/hmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/hmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/hmac.o.d" -o ${OBJECTDIR}/_ext/1886890887/hmac.o ../../../../framework/crypto/src/hmac.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/hash.o: ../../../../framework/crypto/src/hash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/hash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/hash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/hash.o.d" -o ${OBJECTDIR}/_ext/1886890887/hash.o ../../../../framework/crypto/src/hash.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/compress.o: ../../../../framework/crypto/src/compress.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/compress.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/compress.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/compress.o.d" -o ${OBJECTDIR}/_ext/1886890887/compress.o ../../../../framework/crypto/src/compress.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/random.o: ../../../../framework/crypto/src/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/random.o.d" -o ${OBJECTDIR}/_ext/1886890887/random.o ../../../../framework/crypto/src/random.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/crypto.o: ../../../../framework/crypto/src/crypto.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/crypto.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/crypto.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/crypto.o.d" -o ${OBJECTDIR}/_ext/1886890887/crypto.o ../../../../framework/crypto/src/crypto.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/coding.o: ../../../../framework/crypto/src/coding.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/coding.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/coding.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/coding.o.d" -o ${OBJECTDIR}/_ext/1886890887/coding.o ../../../../framework/crypto/src/coding.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/error.o: ../../../../framework/crypto/src/error.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/error.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/error.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/error.o.d" -o ${OBJECTDIR}/_ext/1886890887/error.o ../../../../framework/crypto/src/error.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/integer.o: ../../../../framework/crypto/src/integer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/integer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/integer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/integer.o.d" -o ${OBJECTDIR}/_ext/1886890887/integer.o ../../../../framework/crypto/src/integer.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/logging.o: ../../../../framework/crypto/src/logging.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/logging.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/logging.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/logging.o.d" -o ${OBJECTDIR}/_ext/1886890887/logging.o ../../../../framework/crypto/src/logging.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/memory.o: ../../../../framework/crypto/src/memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/memory.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/memory.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/memory.o.d" -o ${OBJECTDIR}/_ext/1886890887/memory.o ../../../../framework/crypto/src/memory.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/misc.o: ../../../../framework/crypto/src/misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/misc.o.d" -o ${OBJECTDIR}/_ext/1886890887/misc.o ../../../../framework/crypto/src/misc.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1886890887/port.o: ../../../../framework/crypto/src/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/port.o.d" -o ${OBJECTDIR}/_ext/1886890887/port.o ../../../../framework/crypto/src/port.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1908841681/drv_ethmac.o: ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1908841681" 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o: ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1908841681" 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/732687875/drv_ethphy.o: ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732687875" 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_ethphy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/732687875/drv_ethphy.o ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o: ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732687875" 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o.d" -o ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/185269848/drv_tmr.o: ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/185269848" 
	@${RM} ${OBJECTDIR}/_ext/185269848/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/185269848/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/185269848/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/185269848/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/185269848/drv_tmr.o ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1271179505/sys_devcon.o: ../../../../framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ../../../../framework/system/devcon/src/sys_devcon.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o: ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/122796885/sys_int_pic32.o: ../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/122796885" 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ../../../../framework/system/int/src/sys_int_pic32.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/77319752/sys_ports.o: ../../../../framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/77319752" 
	@${RM} ${OBJECTDIR}/_ext/77319752/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/77319752/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/77319752/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/77319752/sys_ports.o.d" -o ${OBJECTDIR}/_ext/77319752/sys_ports.o ../../../../framework/system/ports/src/sys_ports.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1283840359/sys_random.o: ../../../../framework/system/random/src/sys_random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1283840359" 
	@${RM} ${OBJECTDIR}/_ext/1283840359/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283840359/sys_random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1283840359/sys_random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1283840359/sys_random.o.d" -o ${OBJECTDIR}/_ext/1283840359/sys_random.o ../../../../framework/system/random/src/sys_random.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1264926591/sys_tmr.o: ../../../../framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1264926591" 
	@${RM} ${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1264926591/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1264926591/sys_tmr.o ../../../../framework/system/tmr/src/sys_tmr.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1136935090/helpers.o: ../../../../framework/tcpip/src/common/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1136935090/helpers.o.d" -o ${OBJECTDIR}/_ext/1136935090/helpers.o ../../../../framework/tcpip/src/common/helpers.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1136935090/lfsr.o: ../../../../framework/tcpip/src/common/lfsr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/lfsr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/lfsr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/lfsr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1136935090/lfsr.o.d" -o ${OBJECTDIR}/_ext/1136935090/lfsr.o ../../../../framework/tcpip/src/common/lfsr.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/tcp.o: ../../../../framework/tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcp.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcp.o ../../../../framework/tcpip/src/tcp.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/udp.o: ../../../../framework/tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/udp.o.d" -o ${OBJECTDIR}/_ext/1408260596/udp.o ../../../../framework/tcpip/src/udp.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o: ../../../../framework/tcpip/src/tcpip_heap_alloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o ../../../../framework/tcpip/src/tcpip_heap_alloc.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o: ../../../../framework/tcpip/src/tcpip_heap_internal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o ../../../../framework/tcpip/src/tcpip_heap_internal.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/arp.o: ../../../../framework/tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/arp.o.d" -o ${OBJECTDIR}/_ext/1408260596/arp.o ../../../../framework/tcpip/src/arp.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/dhcp.o: ../../../../framework/tcpip/src/dhcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dhcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/dhcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/dhcp.o.d" -o ${OBJECTDIR}/_ext/1408260596/dhcp.o ../../../../framework/tcpip/src/dhcp.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/dns.o: ../../../../framework/tcpip/src/dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dns.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/dns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/dns.o.d" -o ${OBJECTDIR}/_ext/1408260596/dns.o ../../../../framework/tcpip/src/dns.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/icmp.o: ../../../../framework/tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/icmp.o.d" -o ${OBJECTDIR}/_ext/1408260596/icmp.o ../../../../framework/tcpip/src/icmp.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/tcpip_announce.o: ../../../../framework/tcpip/src/tcpip_announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o ../../../../framework/tcpip/src/tcpip_announce.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/hash_fnv.o: ../../../../framework/tcpip/src/hash_fnv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/hash_fnv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1408260596/hash_fnv.o ../../../../framework/tcpip/src/hash_fnv.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/oahash.o: ../../../../framework/tcpip/src/oahash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/oahash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/oahash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/oahash.o.d" -o ${OBJECTDIR}/_ext/1408260596/oahash.o ../../../../framework/tcpip/src/oahash.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o: ../../../../framework/tcpip/src/tcpip_helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o ../../../../framework/tcpip/src/tcpip_helpers.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/tcpip_manager.o: ../../../../framework/tcpip/src/tcpip_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o ../../../../framework/tcpip/src/tcpip_manager.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/tcpip_notify.o: ../../../../framework/tcpip/src/tcpip_notify.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o ../../../../framework/tcpip/src/tcpip_notify.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/tcpip_packet.o: ../../../../framework/tcpip/src/tcpip_packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o ../../../../framework/tcpip/src/tcpip_packet.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1408260596/ipv4.o: ../../../../framework/tcpip/src/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/Diplomamunka" -I"../src/Diplomamunka" -I"../../../../framework" -I"../src/system_config/Diplomamunka/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/ipv4.o.d" -o ${OBJECTDIR}/_ext/1408260596/ipv4.o ../../../../framework/tcpip/src/ipv4.c    -no-legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Diplomamunka.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../bin/framework/peripheral/PIC32MX795F512L_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PIC32MXSK=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Diplomamunka.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1,--defsym=_min_heap_size=44960,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Diplomamunka.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../bin/framework/peripheral/PIC32MX795F512L_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Diplomamunka.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=44960,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Diplomamunka.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Diplomamunka
	${RM} -r dist/Diplomamunka

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
