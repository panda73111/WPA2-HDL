#line 1 "usb-test.c"

#line 1 "d:\\ztex\\include\\ztex-conf.h"
/*!
   ZTEX Firmware Kit for EZ-USB FX2 Microcontrollers
   Copyright (C) 2009-2011 ZTEX GmbH.
   http://www.ztex.de

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License version 3 as
   published by the Free Software Foundation.

   This program is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, see http://www.gnu.org/licenses/.
!*/

/* 
   Configuration macros 
*/

#line 25 "d:\\ztex\\include\\ztex-conf.h"

/* 
   Don't expand macros in comments
*/
#line 35 "d:\\ztex\\include\\ztex-conf.h"

/* 
   This macro defines the USB Vendor ID and USB Product ID  (not the product ID
   from the ZTEX descriptor). The Vendor ID must be purchased from the USB-IF
   (http://www.usb.org). 
   
   The default vendor ID is the ZTEX vendor ID 0x221A, default product ID is
   0x100 which is assigned to ZTEX modules. These ID's can be shared by many
   different products which are identified by the product ID of the ZTEX
   descriptor. According to the USB-IF rules these ID's must not be used by
   hardware which is not manufactured by ZTEX. (Of course, this ID's can be 
   used during the development process or for internal purposes.)
   
   Please read the http://www.ztex.de/firmware-kit/usb_ids.e.html for more 
   informations about this topic.   
   
   Usage:
	SET_VPID(<Vendor ID>,<Product ID>);
*/
#line 57 "d:\\ztex\\include\\ztex-conf.h"

/* 
   This macro is called before FPGA Firmware is reset, e.g. to save some
   settings. After this macro is called the I/O ports are set to default
   states in order to avoid damage during / after the FPGA configuration.
   To append something to this macro use the following definition:
#define[PRE_FPGA_RESET][PRE_FPGA_RESET
...]
*/
#line 67 "d:\\ztex\\include\\ztex-conf.h"


/* 
   This macro is called after FPGA Firmware has been configured. This is
   usually used to configure the I/O ports.
   To append something to this macro use the following definition:
#define[POST_FW_LOAD][POST_FW_LOAD
...]
*/
#line 77 "d:\\ztex\\include\\ztex-conf.h"

/* 
   On multi FPGA boards this macro is called betwen deselection and
   selection of a FPGA. This can be used to store / resore I/O contents.
   To append something to this macro use the following definition:
#define[PRE_FPGA_SELECT][PRE_FPGA_SELECT
...]
*/
#line 86 "d:\\ztex\\include\\ztex-conf.h"


/* 
  Add a vedor request for endpoint 0, 

   Usage:
     ADD_EP0_VENDOR_REQUEST((<request number>,,<code executed after setup package received>,,<code executed after data package received>''));
   Example:
     ADD_EP0_VENDOR_REQUEST((0x33,,initHSFPGAConfiguration();,,));;
...]
*/
#line 109 "d:\\ztex\\include\\ztex-conf.h"


/* 
   Add a vedor command for endpoint 0, 

   Usage:
     ADD_EP0_VENDOR_COMMAND((<request number>,,<code executed after setup package received>,,<code executed after data package received>''));
   Example:
     ADD_EP0_VENDOR_COMMAND((0x33,,initHSFPGAConfiguration();,,));;
...]
*/
#line 132 "d:\\ztex\\include\\ztex-conf.h"

/* 
  This macro generates a EP0 stall and aborts the current loop. Stalls are usually used to indicate errors.
*/
#line 141 "d:\\ztex\\include\\ztex-conf.h"


/* 
   Endoint 1,2,4,5,8 configuration:

   EP_CONFIG(<EP number>,<interface>,<type>,<direction>,<size>,<buffers>)
        <EP number> = 1IN | 1OUT | 2 | 4 | 6 | 8	Endpoint number
        <INTERFACE> = 0 | 1 | 2 | 3			To which interface this endpoint belongs
	<type>      = BULK  | ISO | INT
	<dir>       = IN | OUT
	<size>      = 512 | 1024
	<buffers>   = 1 | 2 | 3 | 4
   Example: EP_CONFIG(2,0,ISO,OUT,1024,4);
   Important note: No spaces next to the commas


   Endpoint 1 configuration:
   
   These Endpoints are defined by default as bulk endpoints and are assigned to interface 0.
   Endpoint size is always 64 bytes, but reported Endpoint size will be 512 bytes for USB 2.0 compliance. 
   
   These Endpoints can be redefined using EP_CONFIG or using:
   
   EP1IN_CONFIG(<interface>);
           <INTERFACE> = 0 | 1 | 2 | 3		Interface to which EP1IN belongs; default: 0
   EP1OUT_CONFIG(<interface>);
           <INTERFACE> = 0 | 1 | 2 | 3		Interface to which EP1OUT belongs; default: 0
   EP1_CONFIG(<interface>);
           <INTERFACE> = 0 | 1 | 2 | 3		Interface to which EP1IN and EP1OUT belongs; default: 0

   The following (maximum) configurations are possible:
   EP2		EP4	EP6	EP8
   2x512	2x512	2x512	2x512
   2x512	2x512	4x512	
   2x512	2x512	2x1024
   4x512		2x512	2x512
   4x512		4x512	
   4x512		2x1024
   2x1024		2x512	2x512
   2x1024		4x512	
   2x1024		2x1024
   3x512		3x512	2x512
   3x1024			2x512
   4x1024		
*/
#line 225 "d:\\ztex\\include\\ztex-conf.h"

#line 230 "d:\\ztex\\include\\ztex-conf.h"

#line 186 "d:\\ztex\\include\\ztex-conf.h"

#line 186 "d:\\ztex\\include\\ztex-conf.h"

#line 233 "d:\\ztex\\include\\ztex-conf.h"

/* 
   ISO and INT Transactions per microframe:

   Default value is 1 for all endpoints.

   EP_PPMF(<EP number>,<transactions per microframe>)
        <EP number>                  = 1IN | 1OUT | 2 | 4 | 6 | 8	Endpoint
        <transactions per microframe> = 1 | 2 | 3			Transactions per microframe
        
   Example: EP_PPMF(2,3);
   Important note: No spaces next to the commas
*/
#line 261 "d:\\ztex\\include\\ztex-conf.h"

#line 246 "d:\\ztex\\include\\ztex-conf.h"

#line 246 "d:\\ztex\\include\\ztex-conf.h"

#line 246 "d:\\ztex\\include\\ztex-conf.h"

#line 246 "d:\\ztex\\include\\ztex-conf.h"

#line 246 "d:\\ztex\\include\\ztex-conf.h"

#line 246 "d:\\ztex\\include\\ztex-conf.h"

#line 268 "d:\\ztex\\include\\ztex-conf.h"

/* 
   Polling interval in microframes for INT transactions:

   Default value is 1 for all endpoints.

   EP_POLL(<EP number>,<polling interval>)
        <EP number>        = 1IN | 1OUT | 2 | 4 | 6 | 8		Endpoint
        <polling interval> = 1 | 2 | 3				Polling interval
        
   Example: EP_POLL(2,1);
   Important note: No spaces next to the commas
*/
#line 291 "d:\\ztex\\include\\ztex-conf.h"

#line 281 "d:\\ztex\\include\\ztex-conf.h"

#line 281 "d:\\ztex\\include\\ztex-conf.h"

#line 281 "d:\\ztex\\include\\ztex-conf.h"

#line 281 "d:\\ztex\\include\\ztex-conf.h"

#line 281 "d:\\ztex\\include\\ztex-conf.h"

#line 281 "d:\\ztex\\include\\ztex-conf.h"

#line 298 "d:\\ztex\\include\\ztex-conf.h"



/* 
   Settings which depends PRODUCT_ID, e.g extra capabilities.
   Overwrite this macros as desired.
*/
#line 317 "d:\\ztex\\include\\ztex-conf.h"

#line 319 "d:\\ztex\\include\\ztex-conf.h"

#line 324 "d:\\ztex\\include\\ztex-conf.h"


/* 
   Identify as ZTEX USB FPGA Module 1.0
   Usage: IDENTITY_UFM_1_0(<PRODUCT_ID_0>.<PRODUCT_ID_1><PRODUCT_ID_2>.<PRODUCT_ID_3>,<FW_VERSION>);
*/
#line 337 "d:\\ztex\\include\\ztex-conf.h"


/* 
   Identify as ZTEX USB FPGA Module 1.1
   Usage: IDENTITY_UFM_1_1(<PRODUCT_ID_0>.<PRODUCT_ID_1><PRODUCT_ID_2>.<PRODUCT_ID_3>,<FW_VERSION>);
*/
#line 350 "d:\\ztex\\include\\ztex-conf.h"


/* 
   Identify as ZTEX USB FPGA Module 1.2
   Usage: IDENTITY_UFM_1_2(<PRODUCT_ID_0>.<PRODUCT_ID_1><PRODUCT_ID_2>.<PRODUCT_ID_3>,<FW_VERSION>);
*/
#line 363 "d:\\ztex\\include\\ztex-conf.h"

/* 
   Identify as ZTEX USB FPGA Module 1.10
   Usage: IDENTITY_UFM_1_10(<PRODUCT_ID_0>.<PRODUCT_ID_1><PRODUCT_ID_2>.<PRODUCT_ID_3>,<FW_VERSION>);
*/
#line 375 "d:\\ztex\\include\\ztex-conf.h"

/* 
   Identify as ZTEX USB FPGA Module 1.11
   Usage: IDENTITY_UFM_1_10(<PRODUCT_ID_0>.<PRODUCT_ID_1><PRODUCT_ID_2>.<PRODUCT_ID_3>,<FW_VERSION>);
*/
#line 387 "d:\\ztex\\include\\ztex-conf.h"

/* 
   Identify as ZTEX USB FPGA Module 1.15
   Usage: IDENTITY_UFM_1_10(<PRODUCT_ID_0>.<PRODUCT_ID_1><PRODUCT_ID_2>.<PRODUCT_ID_3>,<FW_VERSION>);
*/
#line 400 "d:\\ztex\\include\\ztex-conf.h"

/* 
   Identify as ZTEX USB FPGA Module 1.15y
   Usage: IDENTITY_UFM_1_10(<PRODUCT_ID_0>.<PRODUCT_ID_1><PRODUCT_ID_2>.<PRODUCT_ID_3>,<FW_VERSION>);
*/
#line 413 "d:\\ztex\\include\\ztex-conf.h"


/* 
   Identify as ZTEX USB Module 1.0
   Usage: IDENTITY_UM_1_0(<PRODUCT_ID_0>.<PRODUCT_ID_1><PRODUCT_ID_2>.<PRODUCT_ID_3>,<FW_VERSION>);
*/
#line 426 "d:\\ztex\\include\\ztex-conf.h"


/* 
   Identify as ZTEX USB XMEGA Module 1.0
   Usage: IDENTITY_UM_1_0(<PRODUCT_ID_0>.<PRODUCT_ID_1><PRODUCT_ID_2>.<PRODUCT_ID_3>,<FW_VERSION>);
*/
#line 439 "d:\\ztex\\include\\ztex-conf.h"


/* 
   This macro defines the Manufacturer string. Limited to 31 characters. 
*/
#line 445 "d:\\ztex\\include\\ztex-conf.h"


/* 
   This macro defines the Product string. Limited to 31 characters. 
*/
#line 451 "d:\\ztex\\include\\ztex-conf.h"

/* 
   This macro enables defines the Configuration string. Limited to 31 characters. 
*/
#line 456 "d:\\ztex\\include\\ztex-conf.h"


/* 
   This macro disables EEPROM interface, I2C helper functions and all other I2C devices (enabled by default)
   Usage: DISABLE_EEPROM; 
*/
#line 463 "d:\\ztex\\include\\ztex-conf.h"


/* 
   This macro enables the Flash interface, if available
   Usage: ENABLE_FLASH; 
*/
#line 470 "d:\\ztex\\include\\ztex-conf.h"

/* 
   This macro enables the FPGA configuration using a bitstream from the Flash memory
   Usage: ENABLE_FLASH_BITSTREAM; 
*/
#line 476 "d:\\ztex\\include\\ztex-conf.h"

/* 
   This enables the debug helper. The debug helper consists in a stack of messages which can be read out from host software.
   See ../examples/all/debug/Readme.
   Usage: ENABLE_DEBUG(<stack size>,<message_size>);
	<stack size>	number of messages in stack
	<message size>  message size in bytes
*/
#line 487 "d:\\ztex\\include\\ztex-conf.h"

/* 
   This macro disables XMEGA support, if available
   Usage: XMEGA_DISABLE;
*/
#line 493 "d:\\ztex\\include\\ztex-conf.h"

/* 
   Enables support for ZTEX Experimantal Board 1.10
   Usage: EXTENSION_EXP_1_10;
*/
#line 499 "d:\\ztex\\include\\ztex-conf.h"

/* 
   Enables high speed FPGA configuration for ZTEX USB-FPGA Module 1.15 and 1.15y
   Usage: ENABLE_HS_FPGA_CONF(<ENDPOINT>);
	<endpoint>	endpoint which shall be used (any bulk output can be used)
*/
#line 513 "d:\\ztex\\include\\ztex-conf.h"

/* 
   This macro disables MAC EEPROM support, if available
   Usage: MAC_EEPROM_DISABLE;
*/
#line 519 "d:\\ztex\\include\\ztex-conf.h"

/* 
   Enables detection of USB-FPGA Modules 1.15x. This avoids some warnings and makes the variable is_ufm_1_15x available.
   Usage: ENABLE_UFM_1_15X_DETECTION;
*/
#line 525 "d:\\ztex\\include\\ztex-conf.h"

/* 
   This macro disables temperature sensor support
   Usage: TEMP_SENSOR_DISABLE;
*/
#line 531 "d:\\ztex\\include\\ztex-conf.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
	// Loads the configuration macros, see ztex-conf.h for the available macros
#line 1 "d:\\ztex\\include\\ztex-utils.h"
/*!
   ZTEX Firmware Kit for EZ-USB FX2 Microcontrollers
   Copyright (C) 2009-2011 ZTEX GmbH.
   http://www.ztex.de

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License version 3 as
   published by the Free Software Foundation.

   This program is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, see http://www.gnu.org/licenses/.
!*/

/* 
   Various utility routines
*/

#line 25 "d:\\ztex\\include\\ztex-utils.h"

#line 34 "d:\\ztex\\include\\ztex-utils.h"

#line 39 "d:\\ztex\\include\\ztex-utils.h"

#line 44 "d:\\ztex\\include\\ztex-utils.h"

typedef unsigned char BYTE;
typedef unsigned short WORD;
typedef unsigned long DWORD;

#line 1 "d:\\ztex\\include\\ezregs.h"
/*!
   ZTEX Firmware Kit for EZ-USB FX2 Microcontrollers
   Copyright (C) 2009-2011 ZTEX GmbH.
   http://www.ztex.de

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License version 3 as
   published by the Free Software Foundation.

   This program is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, see http://www.gnu.org/licenses/.
!*/

/* 
   EZ-USB registers
*/

#line 25 "d:\\ztex\\include\\ezregs.h"

#line 1 "d:\\ztex\\include\\ztex-utils.h"
/*!
   ZTEX Firmware Kit for EZ-USB FX2 Microcontrollers
   Copyright (C) 2009-2011 ZTEX GmbH.
   http://www.ztex.de

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License version 3 as
   published by the Free Software Foundation.

   This program is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, see http://www.gnu.org/licenses/.
!*/

/* 
   Various utility routines
*/

#line 26 "d:\\ztex\\include\\ezregs.h"


/* This syncronization delay is valid if <CPU Clock> <= 5/3*<Interface Clock>, 
   i.e. if the Interface Clock is equal or greater than 28.8 MHz
   
   The formula for the synchonization delay is:
   
                        /    <CPU Clock>        \
   <syncdelay> >= 1.5 * | ----------------- + 1 |
                        \ <Interface Clock>     /
   
   Overwrite this macro if this formula is not satisfied 
*/   

#line 49 "d:\\ztex\\include\\ezregs.h"
    
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// GPIF Waveform Memories
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE400 volatile BYTE GPIF_WAVE_DATA[128];	// GPIF Waveform Descriptor 0, 1, 2 3, data
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE400 volatile BYTE GPIF_WAVE0_DATA[32];	// GPIF Waveform Descriptor 0 data
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE420 volatile BYTE GPIF_WAVE1_DATA[32];	// GPIF Waveform Descriptor 1 data
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE440 volatile BYTE GPIF_WAVE2_DATA[32];	// GPIF Waveform Descriptor 2 data
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE460 volatile BYTE GPIF_WAVE3_DATA[32];	// GPIF Waveform Descriptor 3 data
#line 56 "d:\\ztex\\include\\ezregs.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// General Configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE50D volatile BYTE GPCR2;			// General Purpose Configuration Register 2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE600 volatile BYTE CPUCS;			// Control & Status
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE601 volatile BYTE IFCONFIG;			// Interface Configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE602 volatile BYTE PINFLAGSAB;		// FIFO FLAGA and FLAGB Assignments
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE603 volatile BYTE PINFLAGSCD;		// FIFO FLAGC and FLAGD Assignments
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE604 volatile BYTE FIFORESET;		// Restore FIFOS to default state
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE605 volatile BYTE BREAKPT;			// Breakpoint
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE606 volatile BYTE BPADDRH; 			// Breakpoint Address H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE607 volatile BYTE BPADDRL;			// Breakpoint Address L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE608 volatile BYTE UART230;			// 230 Kbaud clock for T0,T1,T2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE609 volatile BYTE FIFOPINPOLAR;		// FIFO polarities
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE60A volatile BYTE REVID;			// Chip Revision
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE60B volatile BYTE REVCTL;			// Chip Revision Control
#line 71 "d:\\ztex\\include\\ezregs.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// UDMA
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE60C volatile BYTE GPIFHOLDAMOUNT;		// MSTB Hold Time (for UDMA)
#line 74 "d:\\ztex\\include\\ezregs.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// Endpoint Configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE610 volatile BYTE EP1OUTCFG;		// Endpoint 1-OUT Configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE611 volatile BYTE EP1INCFG;			// Endpoint 1-IN Configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE612 volatile BYTE EP2CFG;			// Endpoint 2 Configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE613 volatile BYTE EP4CFG;			// Endpoint 4 Configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE614 volatile BYTE EP6CFG;			// Endpoint 6 Configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE615 volatile BYTE EP8CFG;			// Endpoint 8 Configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE618 volatile BYTE EP2FIFOCFG;		// Endpoint 2 FIFO configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE619 volatile BYTE EP4FIFOCFG;		// Endpoint 4 FIFO configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE61A volatile BYTE EP6FIFOCFG;		// Endpoint 6 FIFO configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE61B volatile BYTE EP8FIFOCFG;		// Endpoint 8 FIFO configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE620 volatile BYTE EP2AUTOINLENH;		// Endpoint 2 Packet Length H (IN only)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE621 volatile BYTE EP2AUTOINLENL;		// Endpoint 2 Packet Length L (IN only)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE622 volatile BYTE EP4AUTOINLENH;		// Endpoint 4 Packet Length H (IN only)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE623 volatile BYTE EP4AUTOINLENL;		// Endpoint 4 Packet Length L (IN only)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE624 volatile BYTE EP6AUTOINLENH;		// Endpoint 6 Packet Length H (IN only)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE625 volatile BYTE EP6AUTOINLENL;		// Endpoint 6 Packet Length L (IN only)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE626 volatile BYTE EP8AUTOINLENH;		// Endpoint 8 Packet Length H (IN only)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE627 volatile BYTE EP8AUTOINLENL;		// Endpoint 8 Packet Length L (IN only)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE628 volatile BYTE ECCCFG;			// ECC Configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE629 volatile BYTE ECCRESET;			// ECC Reset
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE62A volatile BYTE ECC1B0;			// ECC1 Byte 0 Address
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE62B volatile BYTE ECC1B1;			// ECC1 Byte 1 Address
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE62C volatile BYTE ECC1B2;			// ECC1 Byte 2 Address
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE62D volatile BYTE ECC2B0;			// ECC2 Byte 0 Address
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE62E volatile BYTE ECC2B1;			// ECC2 Byte 1 Address
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE62F volatile BYTE ECC2B2;			// ECC2 Byte 2 Address
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE630 volatile BYTE EP2FIFOPFH;		// EP2 Programmable Flag trigger H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE631 volatile BYTE EP2FIFOPFL;		// EP2 Programmable Flag trigger L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE632 volatile BYTE EP4FIFOPFH;		// EP4 Programmable Flag trigger H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE633 volatile BYTE EP4FIFOPFL;		// EP4 Programmable Flag trigger L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE634 volatile BYTE EP6FIFOPFH;		// EP6 Programmable Flag trigger H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE635 volatile BYTE EP6FIFOPFL;		// EP6 Programmable Flag trigger L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE636 volatile BYTE EP8FIFOPFH;		// EP8 Programmable Flag trigger H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE637 volatile BYTE EP8FIFOPFL;		// EP8 Programmable Flag trigger L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE640 volatile BYTE EP2ISOINPKTS;		// EP2 (if ISO) IN Packets per frame (1-3)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE641 volatile BYTE EP4ISOINPKTS;		// EP4 (if ISO) IN Packets per frame (1-3)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE642 volatile BYTE EP6ISOINPKTS;		// EP6 (if ISO) IN Packets per frame (1-3)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE643 volatile BYTE EP8ISOINPKTS;		// EP8 (if ISO) IN Packets per frame (1-3)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE648 volatile BYTE INPKTEND;			// Force IN Packet End
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE649 volatile BYTE OUTPKTEND;		// Force OUT Packet End
#line 116 "d:\\ztex\\include\\ezregs.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// Interrupts
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE650 volatile BYTE EP2FIFOIE;		// Endpoint 2 Flag Interrupt Enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE651 volatile BYTE EP2FIFOIRQ;		// Endpoint 2 Flag Interrupt Request
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE652 volatile BYTE EP4FIFOIE;		// Endpoint 4 Flag Interrupt Enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE653 volatile BYTE EP4FIFOIRQ;		// Endpoint 4 Flag Interrupt Request
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE654 volatile BYTE EP6FIFOIE;		// Endpoint 6 Flag Interrupt Enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE655 volatile BYTE EP6FIFOIRQ;		// Endpoint 6 Flag Interrupt Request
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE656 volatile BYTE EP8FIFOIE;		// Endpoint 8 Flag Interrupt Enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE657 volatile BYTE EP8FIFOIRQ;		// Endpoint 8 Flag Interrupt Request
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE658 volatile BYTE IBNIE;			// IN-BULK-NAK Interrupt Enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE659 volatile BYTE IBNIRQ;			// IN-BULK-NAK interrupt Request
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE65A volatile BYTE NAKIE;			// Endpoint Ping NAK interrupt Enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE65B volatile BYTE NAKIRQ;			// Endpoint Ping NAK interrupt Request
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE65C volatile BYTE USBIE;			// USB Int Enables
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE65D volatile BYTE USBIRQ;			// USB Interrupt Requests
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE65E volatile BYTE EPIE;			// Endpoint Interrupt Enables
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE65F volatile BYTE EPIRQ;			// Endpoint Interrupt Requests
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE660 volatile BYTE GPIFIE;			// GPIF Interrupt Enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE661 volatile BYTE GPIFIRQ;			// GPIF Interrupt Request
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE662 volatile BYTE USBERRIE;			// USB Error Interrupt Enables
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE663 volatile BYTE USBERRIRQ;		// USB Error Interrupt Requests
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE664 volatile BYTE ERRCNTLIM;		// USB Error counter and limit
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE665 volatile BYTE CLRERRCNT;		// Clear Error Counter EC[3..0]
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE666 volatile BYTE INT2IVEC;			// Interupt 2 (USB) Autovector
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE667 volatile BYTE INT4IVEC;			// Interupt 4 (FIFOS & GPIF) Autovector
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE668 volatile BYTE INTSETUP;			// Interrupt 2&4 Setup
#line 143 "d:\\ztex\\include\\ezregs.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// Input/Output
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE670 volatile BYTE PORTACFG;			// I/O PORTA Alternate Configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE671 volatile BYTE PORTCCFG;			// I/O PORTC Alternate Configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE672 volatile BYTE PORTECFG;			// I/O PORTE Alternate Configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE678 volatile BYTE I2CS;			// Control & Status
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE679 volatile BYTE I2DAT;			// Data
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE67A volatile BYTE I2CTL;			// I2C Control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE67B volatile BYTE XAUTODAT1;		// Autoptr1 MOVX access
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE67B volatile BYTE EXTAUTODAT1;		// Autoptr1 MOVX access
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE67C volatile BYTE XAUTODAT2;		// Autoptr2 MOVX access
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE67C volatile BYTE EXTAUTODAT2;		// Autoptr2 MOVX access
#line 155 "d:\\ztex\\include\\ezregs.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// UDMA CRC
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE67D volatile BYTE UDMACRCH;			// UDMA CRC MSB
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE67E volatile BYTE UDMACRCL;			// UDMA CRC LSB
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE67F volatile BYTE UDMACRCQUALIFIER;		// UDMA CRC Qualifier
#line 160 "d:\\ztex\\include\\ezregs.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// USB Control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE680 volatile BYTE USBCS;			// USB Control & Status
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE681 volatile BYTE SUSPEND;			// Put chip into suspend
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE682 volatile BYTE WAKEUPCS;			// Wakeup source and polarity
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE683 volatile BYTE TOGCTL;			// Toggle Control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE684 volatile BYTE USBFRAMEH;		// USB Frame count H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE685 volatile BYTE USBFRAMEL;		// USB Frame count L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE686 volatile BYTE MICROFRAME;		// Microframe count, 0-7
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE687 volatile BYTE FNADDR;			// USB Function address
#line 170 "d:\\ztex\\include\\ezregs.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// Endpoints
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE68A volatile BYTE EP0BCH;			// Endpoint 0 Byte Count H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE68B volatile BYTE EP0BCL;			// Endpoint 0 Byte Count L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE68D volatile BYTE EP1OUTBC;			// Endpoint 1 OUT Byte Count
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE68F volatile BYTE EP1INBC;			// Endpoint 1 IN Byte Count
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE690 volatile BYTE EP2BCH;			// Endpoint 2 Byte Count H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE691 volatile BYTE EP2BCL;			// Endpoint 2 Byte Count L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE694 volatile BYTE EP4BCH;			// Endpoint 4 Byte Count H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE695 volatile BYTE EP4BCL;			// Endpoint 4 Byte Count L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE698 volatile BYTE EP6BCH;			// Endpoint 6 Byte Count H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE699 volatile BYTE EP6BCL;			// Endpoint 6 Byte Count L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE69C volatile BYTE EP8BCH;			// Endpoint 8 Byte Count H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE69D volatile BYTE EP8BCL;			// Endpoint 8 Byte Count L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6A0 volatile BYTE EP0CS;			// Endpoint Control and Status
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6A1 volatile BYTE EP1OUTCS;			// Endpoint 1 OUT Control and Status
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6A2 volatile BYTE EP1INCS;			// Endpoint 1 IN Control and Status
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6A3 volatile BYTE EPXCS[4];			// Endpoint 2-8 Control and Status
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6A3 volatile BYTE EP2CS;			// Endpoint 2 Control and Status
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6A4 volatile BYTE EP4CS;			// Endpoint 4 Control and Status
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6A5 volatile BYTE EP6CS;			// Endpoint 6 Control and Status
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6A6 volatile BYTE EP8CS;			// Endpoint 8 Control and Status
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6A7 volatile BYTE EP2FIFOFLGS;		// Endpoint 2 Flags
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6A8 volatile BYTE EP4FIFOFLGS;		// Endpoint 4 Flags
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6A9 volatile BYTE EP6FIFOFLGS;		// Endpoint 6 Flags
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6AA volatile BYTE EP8FIFOFLGS;		// Endpoint 8 Flags
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6AB volatile BYTE EP2FIFOBCH;		// EP2 FIFO total byte count H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6AC volatile BYTE EP2FIFOBCL;		// EP2 FIFO total byte count L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6AD volatile BYTE EP4FIFOBCH;		// EP4 FIFO total byte count H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6AE volatile BYTE EP4FIFOBCL;		// EP4 FIFO total byte count L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6AF volatile BYTE EP6FIFOBCH;		// EP6 FIFO total byte count H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6B0 volatile BYTE EP6FIFOBCL;		// EP6 FIFO total byte count L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6B1 volatile BYTE EP8FIFOBCH;		// EP8 FIFO total byte count H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6B2 volatile BYTE EP8FIFOBCL;		// EP8 FIFO total byte count L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6B3 volatile BYTE SUDPTRH;			// Setup Data Pointer high address byte
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6B4 volatile BYTE SUDPTRL;			// Setup Data Pointer low address byte
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6B5 volatile BYTE SUDPTRCTL;		// Setup Data Pointer Auto Mode
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6B8 volatile BYTE SETUPDAT[8];		// 8 bytes of SETUP data
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6B8 volatile BYTE bmRequestType;		// Request Type, Direction, and Recipient
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6B9 volatile BYTE bRequest;			// The actual request
#line 210 "d:\\ztex\\include\\ezregs.h"
__xdata __at 0xE6BA volatile BYTE wValueL;
__xdata __at 0xE6BB volatile BYTE wValueH;
__xdata __at 0xE6BC volatile BYTE wIndexL;
__xdata __at 0xE6BD volatile BYTE wIndexH;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6BE volatile BYTE wLengthL;			// Number of bytes to transfer if there is a data phase
#line 215 "d:\\ztex\\include\\ezregs.h"
__xdata __at 0xE6BF volatile BYTE wLengthH;

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// GPIF
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6C0 volatile BYTE GPIFWFSELECT;		// Waveform Selector
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6C1 volatile BYTE GPIFIDLECS;		// GPIF Done, GPIF IDLE drive mode
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6C2 volatile BYTE GPIFIDLECTL;		// Inactive Bus, CTL states
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6C3 volatile BYTE GPIFCTLCFG;		// CTL OUT pin drive
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6C4 volatile BYTE GPIFADRH;			// GPIF Address H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6C5 volatile BYTE GPIFADRL;			// GPIF Address L
#line 224 "d:\\ztex\\include\\ezregs.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// FLOWSTATE 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6C6 volatile BYTE FLOWSTATE;		// Flowstate Enable and Selector
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6C7 volatile BYTE FLOWLOGIC;		// Flowstate Logic
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6C8 volatile BYTE FLOWEQ0CTL;		// CTL-Pin States in Flowstate (when Logic = 0)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6C9 volatile BYTE FLOWEQ1CTL;		// CTL-Pin States in Flowstate (when Logic = 1)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6CA volatile BYTE FLOWHOLDOFF;		// Holdoff Configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6CB volatile BYTE FLOWSTB;			// Flowstate Strobe Configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6CC volatile BYTE FLOWSTBEDGE;		// Flowstate Rising/Falling Edge Configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6CD volatile BYTE FLOWSTBHPERIOD;		// Master-Strobe Half-Period
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6CE volatile BYTE GPIFTCB3;			// GPIF Transaction Count Byte 3
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6CF volatile BYTE GPIFTCB2;			// GPIF Transaction Count Byte 2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6D0 volatile BYTE GPIFTCB1;			// GPIF Transaction Count Byte 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6D1 volatile BYTE GPIFTCB0;			// GPIF Transaction Count Byte 0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6D2 volatile BYTE EP2GPIFFLGSEL;		// EP2 GPIF Flag select
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6D3 volatile BYTE EP2GPIFPFSTOP;		// Stop GPIF EP2 transaction on prog. flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6D4 volatile BYTE EP2GPIFTRIG;		// EP2 FIFO Trigger
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6DA volatile BYTE EP4GPIFFLGSEL;		// EP4 GPIF Flag select
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6DB volatile BYTE EP4GPIFPFSTOP;		// Stop GPIF EP4 transaction on prog. flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6DC volatile BYTE EP4GPIFTRIG;		// EP4 FIFO Trigger
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6E2 volatile BYTE EP6GPIFFLGSEL;		// EP6 GPIF Flag select
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6E3 volatile BYTE EP6GPIFPFSTOP;		// Stop GPIF EP6 transaction on prog. flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6E4 volatile BYTE EP6GPIFTRIG;		// EP6 FIFO Trigger
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6EA volatile BYTE EP8GPIFFLGSEL;		// EP8 GPIF Flag select
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6EB volatile BYTE EP8GPIFPFSTOP;		// Stop GPIF EP8 transaction on prog. flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6EC volatile BYTE EP8GPIFTRIG;		// EP8 FIFO Trigger
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6F0 volatile BYTE XGPIFSGLDATH;		// GPIF Data H (16-bit mode only)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6F1 volatile BYTE XGPIFSGLDATLX;		// Read/Write GPIF Data L & trigger transac
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6F2 volatile BYTE XGPIFSGLDATLNOX;		// Read GPIF Data L, no transac trigger
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6F3 volatile BYTE GPIFREADYCFG;		// Internal RDY,Sync/Async, RDY5CFG
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6F4 volatile BYTE GPIFREADYSTAT;		// RDY pin states
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE6F5 volatile BYTE GPIFABORT;		// Abort GPIF cycles
#line 256 "d:\\ztex\\include\\ezregs.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// Endpoint Buffers
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE740 volatile BYTE EP0BUF[64];		// EP0 IN-OUT buffer
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE780 volatile BYTE EP1OUTBUF[64];		// EP1-OUT buffer
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xE7C0 volatile BYTE EP1INBUF[64];		// EP1-IN buffer
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xF000 volatile BYTE EP2FIFOBUF[1024];		// 512/1024-byte EP2 buffer (IN or OUT)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xF400 volatile BYTE EP4FIFOBUF[1024];		// 512 byte EP4 buffer (IN or OUT)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xF800 volatile BYTE EP6FIFOBUF[1024];		// 512/1024-byte EP6 buffer (IN or OUT)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata __at 0xFC00 volatile BYTE EP8FIFOBUF[1024];		// 512 byte EP8 buffer (IN or OUT)
#line 265 "d:\\ztex\\include\\ezregs.h"


#line 31 "d:\\ztex\\include\\ztex-conf.h"
// Special Function Registers (__sfrs)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x80 IOA;					// Port A
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x80+0 IOA0;					// Port A bit 0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x80+1 IOA1;					// Port A bit 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x80+2 IOA2;					// Port A bit 2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x80+3 IOA3;					// Port A bit 3
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x80+4 IOA4;					// Port A bit 4
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x80+5 IOA5;					// Port A bit 5
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x80+6 IOA6;					// Port A bit 6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x80+7 IOA7;					// Port A bit 7
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x81 SP;						// Stack Pointer
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x82 DPL0;					// Data Pointer 0 L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x83 DPH0;					// Data Pointer 0 H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x84 DPL1;					// Data Pointer 1 L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x85 DPH1;					// Data Pointer 0 H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x86 DPS;					// Data Pointer 0/1 select
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x87 PCON;					// Power Control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x88 TCON;					// Timer/Counter Control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x88+0 IT0;					// Interrupt 0 Type select
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x88+1 IE0;					// Interrupt 0 Edge detect
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x88+2 IT1;					// Interrupt 1 Type select
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x88+3 IE1;					// Interrupt 1 Edge detect
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x88+4 TR0;					// Timer 0 Run Control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x88+5 TF0;					// Timer 0 Overflow Flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x88+6 TR1;					// Timer 1 Run Control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x88+7 TF1;					// Timer 1 Overflow Flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x89 TMOD;					// Timer/Counter Mode Control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x8A TL0;					// Timer 0 reload L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x8B TL1;					// Timer 1 reload L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x8C TH0;					// Timer 0 reload H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x8D TH1;					// Timer 1 reload H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x8E CKCON;					// Clock Control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x90 IOB; 					// Port B
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x90+0 IOB0;					// Port B bit 0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x90+1 IOB1;					// Port B bit 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x90+2 IOB2;					// Port B bit 2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x90+3 IOB3;					// Port B bit 3
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x90+4 IOB4;					// Port B bit 4
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x90+5 IOB5;					// Port B bit 5
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x90+6 IOB6;					// Port B bit 6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x90+7 IOB7;					// Port B bit 7
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x91 EXIF;					// External Interrupt Flag(s)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x92 MPAGE;					// Upper Addr Byte of MOVX using @R0 / @R1
#line 310 "d:\\ztex\\include\\ezregs.h"
__sfr __at (0x92) _XPAGE;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x98 SCON0;					// Serial Port 0 Control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x98+0 RI_0;					// Recive Interrupt Flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x98+1 TI_0;					// Transmit Interrupt Flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x98+2 RB8_0;					// State of the 9th bit / Stop Bit received
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x98+3 TB8_0;					// State of the 9th bit transmitted
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x98+4 REN_0;					// Receive enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x98+5 SM2_0;					// Multiprocessor communication enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x98+6 SM1_0;					// Serial Port 0 mode bit 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0x98+7 SM0_0;					// Serial Port 0 mode bit 0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x99 SBUF0;					// Serial Port 0 Data Buffer
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x9A AUTOPTRH1;					// Autopointer 1 Address H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x9B AUTOPTRL1;					// Autopointer 1 Address L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x9D AUTOPTRH2;					// Autopointer 2 Address H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0x9E AUTOPTRL2; 					// Autopointer 2 Address L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xA0 IOC; 					// Port C
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xA0+0 IOC0;					// Port C bit 0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xA0+1 IOC1;					// Port C bit 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xA0+2 IOC2;					// Port C bit 2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xA0+3 IOC3;					// Port C bit 3
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xA0+4 IOC4;					// Port C bit 4
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xA0+5 IOC5;					// Port C bit 5
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xA0+6 IOC6;					// Port C bit 6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xA0+7 IOC7;					// Port C bit 7
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xA1 INT2CLR;					// Interrupt 2 clear
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xA2 INT4CLR;					// Interrupt 4clear
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xA8 IE;						// Interrupt Enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xA8+0 EX0;					// Enable external interrupt 0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xA8+1 ET0;					// Enable Timer 0 interrupt
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xA8+2 EX1;					// Enable external interrupt 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xA8+3 ET1;					// Enable Timer 1 interrupt
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xA8+4 ES0;					// Enable Serial Port 0 interrupt
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xA8+5 ET2;					// Enable Timer 2 interrupt
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xA8+6 ES1;					// Enable Serial Port 1 interrupt
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xA8+7 EA;					// Global interrupt enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xAA EP2468STAT;					// Endpoint 2,4,6,8 status flags
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xAB EP24FIFOFLGS;				// Endpoint 2,4 slave FIFO flags
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xAC EP68FIFOFLGS;				// Endpoint 6,8 slave FIFO flags
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xAF AUTOPTRSETUP;				// Autopointer 1&2 set-up
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xB0 IOD; 					// Port D
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xB0+0 IOD0;					// Port D bit 0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xB0+1 IOD1;					// Port D bit 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xB0+2 IOD2;					// Port D bit 2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xB0+3 IOD3;					// Port D bit 3
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xB0+4 IOD4;					// Port D bit 4
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xB0+5 IOD5;					// Port D bit 5
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xB0+6 IOD6;					// Port D bit 6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xB0+7 IOD7;					// Port D bit 7
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xB1 IOE;					// Port E
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xB2 OEA;					// Port A Output Enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xB3 OEB;					// Port B Output Enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xB4 OEC;					// Port C Output Enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xB5 OED;					// Port D Output Enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xB6 OEE;					// Port E Output Enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xB8 IP;						// Interrupt priority
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xB8+0 PX0;					// External interrupt 0 priority control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xB8+1 PT0;					// Timer 0 interrupt priority control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xB8+2 PX1;					// External interrupt 1 priority control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xB8+3 PT1;					// Timer 1 interrupt priority control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xB8+4 PS0;					// Serial Port 0 interrupt priority control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xB8+5 PT2;					// Timer 2 interrupt priority control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xB8+6 PS1;					// Serial Port 1 interrupt priority control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xBA EP01STAT;					// Endpoint 0&1 Status
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xBB GPIFTRIG;					// Endpoint 2,4,6,8 GPIF slafe FIFO Trigger
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xBD GPIFSGLDATH;				// GPIF Data H (16-bit mode only)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xBE GPIFSGLDATLX;				// GPIF Data L w/ Trigger
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xBF GPIFSGLDATLNOX;				// GPIF Data L w/ No Trigger
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xC0 SCON1;					// Serial Port 1 Control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xC0+0 RI_1;					// Recive Interrupt Flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xC0+1 TI_1;					// Transmit Interrupt Flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xC0+2 RB8_1;					// State of the 9th bit / Stop Bit received
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xC0+3 TB8_1;					// State of the 9th bit transmitted
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xC0+4 REN_1;					// Receive enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xC0+5 SM2_1;					// Multiprocessor communication enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xC0+6 SM1_1;					// Serial Port 1 mode bit 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xC0+7 SM0_1;					// Serial Port 1 mode bit 0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xC1 SBUF1;					// Serial Port 1 Data Buffer
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xC8 T2CON;					// Timer/Counter 2 Control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xC8+0 CPRL2;					// Capture/reload flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xC8+1 CT2;					// Counter/Timer select
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xC8+2 TR2;					// Timer 2 run control flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xC8+3 EXEN2;					// Timer 2 external enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xC8+4 TCLK;					// Transmit clock flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xC8+5 RCLK;					// Receive clock flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xC8+6 EXF2;					// Timer 2 external flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xC8+7 TF2;					// Timer 2 overflow flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xCA RCAP2L;					// Capture for Timer 2, auto-reload, up-counter L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xCB RCAP2H;					// Capture for Timer 2, auto-reload, up-counter H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xCC TL2;					// Timer 2 reload L
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xCD TH2;					// Timer 2 reload H
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xD0 PSW;					// Program Status Word
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xD0+0 PF;					// Parity flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xD0+1 F1;					// User flag 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xD0+2 OV;					// Overflow flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xD0+3 RS0;					// Register bank select bit 0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xD0+4 RS1;					// Register bank select bit 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xD0+5 F0;					// User flag 0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xD0+6 AC;					// Auxiliary carry flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xD0+7 CY;					// Carry flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xD8 EICON;					// External Interrupt Control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xD8+3 INT6;					// External interrupt 6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xD8+4 RESI;					// Wakeup interrupt flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xD8+5 ERESI;					// Enable Resume interrupt
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xD8+7 SMOD1;					// Serial Port 1 baud rate doubler enable
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xE0 ACC;					// Accumulator
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xE0+0 ACC0;					// Accumulator bit 0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xE0+1 ACC1;					// Accumulator bit 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xE0+2 ACC2;					// Accumulator bit 2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xE0+3 ACC3;					// Accumulator bit 3
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xE0+4 ACC4;					// Accumulator bit 4
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xE0+5 ACC5;					// Accumulator bit 5
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xE0+6 ACC6;					// Accumulator bit 6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xE0+7 ACC7;					// Accumulator bit 7
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xE8 EIE; 					// External Interrupt Enable(s)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xE8+0 EUSB;					// Enable USB interrupt (USBINT)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xE8+1 EI2C;					// Enable I2C bus interrupt (I2CINT)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xE8+2 EIEX4;					// Enable external interrupt 4
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xE8+3 EIEX5;					// Enable external interrupt 5
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xE8+4 EIEX6;					// Enable external interrupt 6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xF0 BREG;					// B Register
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xF0+0 BREG0;					// B Register bit 0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xF0+1 BREG1;					// B Register bit 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xF0+2 BREG2;					// B Register bit 2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xF0+3 BREG3;					// B Register bit 3
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xF0+4 BREG4;					// B Register bit 4
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xF0+5 BREG5;					// B Register bit 5
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xF0+6 BREG6;					// B Register bit 6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xF0+7 BREG7;					// B Register bit 7
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sfr __at 0xF8 EIP;					// External Interrupt Priority Control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xF8+0 PUSB;					// USBINT priority control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xF8+1 PI2C;					// I2CINT priority control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xF8+2 EIPX4;					// External interrupt 4 priority control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xF8+3 EIPX5;					// External interrupt 5 priority control
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__sbit __at 0xF8+4 EIPX6;					// External interrupt 6 priority control
#line 444 "d:\\ztex\\include\\ezregs.h"

#line 49 "d:\\ztex\\include\\ztex-utils.h"

#line 1 "d:\\ztex\\include\\ezintavecs.h"
/*!
   ZTEX Firmware Kit for EZ-USB FX2 Microcontrollers
   Copyright (C) 2009-2011 ZTEX GmbH.
   http://www.ztex.de

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License version 3 as
   published by the Free Software Foundation.

   This program is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, see http://www.gnu.org/licenses/.
!*/

/* 
   EZ-USB Autovectors
*/

#line 25 "d:\\ztex\\include\\ezintavecs.h"

#line 1 "d:\\ztex\\include\\ztex-utils.h"
/*!
   ZTEX Firmware Kit for EZ-USB FX2 Microcontrollers
   Copyright (C) 2009-2011 ZTEX GmbH.
   http://www.ztex.de

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License version 3 as
   published by the Free Software Foundation.

   This program is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, see http://www.gnu.org/licenses/.
!*/

/* 
   Various utility routines
*/

#line 26 "d:\\ztex\\include\\ezintavecs.h"


struct INTVEC {
    BYTE op;
    BYTE addrH;
    BYTE addrL;
};

#line 87 "d:\\ztex\\include\\ezintavecs.h"

#line 34 "d:\\ztex\\include\\ezintavecs.h"
__xdata __at 0x0003 struct INTVEC INT0VEC_IE0;
__xdata __at 0x000b struct INTVEC INT1VEC_T0;
__xdata __at 0x0013 struct INTVEC INT2VEC_IE1;
__xdata __at 0x001b struct INTVEC INT3VEC_T1;
__xdata __at 0x0023 struct INTVEC INT4VEC_USART0;
__xdata __at 0x002b struct INTVEC INT5VEC_T2;
__xdata __at 0x0033 struct INTVEC INT6VEC_RESUME;
__xdata __at 0x003b struct INTVEC INT7VEC_USART1;
__xdata __at 0x0043 struct INTVEC INT8VEC_USB;
__xdata __at 0x004b struct INTVEC INT9VEC_I2C;
__xdata __at 0x0053 struct INTVEC INT10VEC_GPIF;
__xdata __at 0x005b struct INTVEC INT11VEC_IE5;
__xdata __at 0x0063 struct INTVEC INT12VEC_IE6;
__xdata __at 0x0100 struct INTVEC INTVEC_SUDAV;
__xdata __at 0x0104 struct INTVEC INTVEC_SOF;
__xdata __at 0x0108 struct INTVEC INTVEC_SUTOK;
__xdata __at 0x010C struct INTVEC INTVEC_SUSPEND;
__xdata __at 0x0110 struct INTVEC INTVEC_USBRESET;
__xdata __at 0x0114 struct INTVEC INTVEC_HISPEED;
__xdata __at 0x0118 struct INTVEC INTVEC_EP0ACK;
__xdata __at 0x0120 struct INTVEC INTVEC_EP0IN;
__xdata __at 0x0124 struct INTVEC INTVEC_EP0OUT;
__xdata __at 0x0128 struct INTVEC INTVEC_EP1IN;
__xdata __at 0x012C struct INTVEC INTVEC_EP1OUT;
__xdata __at 0x0130 struct INTVEC INTVEC_EP2;
__xdata __at 0x0134 struct INTVEC INTVEC_EP4;
__xdata __at 0x0138 struct INTVEC INTVEC_EP6;
__xdata __at 0x013C struct INTVEC INTVEC_EP8;
__xdata __at 0x0140 struct INTVEC INTVEC_IBN;
__xdata __at 0x0148 struct INTVEC INTVEC_EP0PING;
__xdata __at 0x014C struct INTVEC INTVEC_EP1PING;
__xdata __at 0x0150 struct INTVEC INTVEC_EP2PING;
__xdata __at 0x0154 struct INTVEC INTVEC_EP4PING;
__xdata __at 0x0158 struct INTVEC INTVEC_EP6PING;
__xdata __at 0x015C struct INTVEC INTVEC_EP8PING;
__xdata __at 0x0160 struct INTVEC INTVEC_ERRLIMIT;
__xdata __at 0x0170 struct INTVEC INTVEC_EP2ISOERR;
__xdata __at 0x0174 struct INTVEC INTVEC_EP4ISOERR;
__xdata __at 0x0178 struct INTVEC INTVEC_EP6ISOERR;
__xdata __at 0x017C struct INTVEC INTVEC_EP8ISOERR;
__xdata __at 0x0180 struct INTVEC INTVEC_EP2PF;
__xdata __at 0x0184 struct INTVEC INTVEC_EP4PF;
__xdata __at 0x0188 struct INTVEC INTVEC_EP6PF;
__xdata __at 0x018C struct INTVEC INTVEC_EP8PF;
__xdata __at 0x0190 struct INTVEC INTVEC_EP2EF;
__xdata __at 0x0194 struct INTVEC INTVEC_EP4EF;
__xdata __at 0x0198 struct INTVEC INTVEC_EP6EF;
__xdata __at 0x019C struct INTVEC INTVEC_EP8EF;
__xdata __at 0x01A0 struct INTVEC INTVEC_EP2FF;
__xdata __at 0x01A8 struct INTVEC INTVEC_EP6FF;
__xdata __at 0x01AC struct INTVEC INTVEC_EP8FF;
__xdata __at 0x01B0 struct INTVEC INTVEC_GPIFDONE;
#line 89 "d:\\ztex\\include\\ezintavecs.h"
__xdata __at 0x01B4 struct INTVEC INTVEC_GPIFWF;
#line 91 "d:\\ztex\\include\\ezintavecs.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
void abscode_intvec()// _naked
#line 93 "d:\\ztex\\include\\ezintavecs.h"
{
#line 96 "d:\\ztex\\include\\ezintavecs.h"
    __asm
    .area ABSCODE (ABS,CODE)
    .org 0x0000
ENTRY:
	ljmp #0x0200
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0003
#line 34 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x000b
#line 35 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0013
#line 36 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x001b
#line 37 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0023
#line 38 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x002b
#line 39 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0033
#line 40 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x003b
#line 41 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0043
#line 42 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x004b
#line 43 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0053
#line 44 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x005b
#line 45 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0063
#line 46 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0100
#line 47 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0104
#line 48 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0108
#line 49 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x010C
#line 50 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0110
#line 51 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0114
#line 52 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0118
#line 53 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0120
#line 54 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0124
#line 55 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0128
#line 56 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x012C
#line 57 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0130
#line 58 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0134
#line 59 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0138
#line 60 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x013C
#line 61 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0140
#line 62 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0148
#line 63 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x014C
#line 64 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0150
#line 65 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0154
#line 66 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0158
#line 67 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x015C
#line 68 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0160
#line 69 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0170
#line 70 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0174
#line 71 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0178
#line 72 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x017C
#line 73 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0180
#line 74 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0184
#line 75 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0188
#line 76 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x018C
#line 77 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0190
#line 78 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0194
#line 79 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x0198
#line 80 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x019C
#line 81 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x01A0
#line 82 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x01A8
#line 83 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x01AC
#line 84 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x01B0
#line 85 "d:\\ztex\\include\\ezintavecs.h"
	reti
#line 94 "d:\\ztex\\include\\ezintavecs.h"
    .org 0x01B4
#line 101 "d:\\ztex\\include\\ezintavecs.h"
	reti
    .org 0x01b8
INTVEC_DUMMY:
        reti
    .area CSEG    (CODE)
    __endasm;    
}    

#line 111 "d:\\ztex\\include\\ezintavecs.h"


/* Init an interrupt vector */
#line 119 "d:\\ztex\\include\\ezintavecs.h"


/* Enable USB autovectors */
#line 128 "d:\\ztex\\include\\ezintavecs.h"


/* Disable USB autovectors */
#line 132 "d:\\ztex\\include\\ezintavecs.h"


/* Enable GPIF autovectors */
#line 141 "d:\\ztex\\include\\ezintavecs.h"


/* Disable GPIF autovectors */
#line 145 "d:\\ztex\\include\\ezintavecs.h"


#line 50 "d:\\ztex\\include\\ztex-utils.h"

/* *********************************************************************
   ***** global variables **********************************************
   ********************************************************************* */
/* 
    The following two variables are used to control HSNAK bit.
    
    ep0_payload_remaining is set to the length field of of the Setup Data
    structure (in SUDAV_ISR). At the begin of each payload data transfer (in 
    SUDAV_ISR, EP0IN_ISR and EP0OUT_ISR) the amount of payload of the current
    transfer s calculated (<=64 bytes) and subtracted from 
    ep0_payload_remaining. For Vendor Commands HSNAK bit is cleared
    automatically (at the end of EP0OUT_ISR) ifep0_payload_remaining == 0.
    For Vendor Requests HSNAK bit is always cleared at the end of SUDAV_ISR.
*/

#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata WORD ep0_payload_remaining = 0;		// remaining amount of ep0 payload data (excluding the data of the current transfer)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata BYTE ep0_payload_transfer = 0;		// transfer
#line 68 "d:\\ztex\\include\\ztex-utils.h"

/* *********************************************************************
   *********************************************************************
   ***** basic functions ***********************************************
   ********************************************************************* 
   ********************************************************************* */

/* *********************************************************************
   ***** wait **********************************************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
void wait(WORD short ms) {	  // wait in ms 
#line 79 "d:\\ztex\\include\\ztex-utils.h"
    WORD i,j;
    for (j=0; j<ms; j++) 
	for (i=0; i<1200; i++);
}


/* *********************************************************************
   ***** uwait *********************************************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
void uwait(WORD short us) {	  // wait in 10µs steps
#line 89 "d:\\ztex\\include\\ztex-utils.h"
    WORD i,j;
    for (j=0; j<us; j++) 
	for (i=0; i<10; i++);
}


/* *********************************************************************
   ***** MEM_COPY ******************************************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// copies 1..256 bytes 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
void MEM_COPY1_int() // __naked 
#line 100 "d:\\ztex\\include\\ztex-utils.h"
{
	__asm
020001$:
	    mov		_AUTOPTRSETUP,#0x07
	    mov		dptr,#_XAUTODAT1
	    movx	a,@dptr
	    mov		dptr,#_XAUTODAT2
	    movx	@dptr,a
	    djnz	r2, 020001$
	    ret
	__endasm;
}

/* 
    ! no spaces before/after commas allowed !
    
    This will work too: 
	MEM_COPY1(fpga_checksum,EP0BUF+1,6);    
*/	

#line 132 "d:\\ztex\\include\\ztex-utils.h"


#line 31 "d:\\ztex\\include\\ztex-conf.h"
	// include basic functions
#line 4 "usb-test.c"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// select ZTEX USB FPGA Module 1.11 as target (required for FPGA configuration)
#line 7 "usb-test.c"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// enable Flash support
#line 11 "usb-test.c"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// this product string is also used for identification by the host software
#line 14 "usb-test.c"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// outputs
#line 22 "usb-test.c"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// inputs
#line 28 "usb-test.c"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// sector where the status of the password generation is stored
#line 30 "usb-test.c"
__xdata WORD pwdStatusSector;
__xdata BYTE generatePwds = 0;
__xdata BYTE pwd[64];
__xdata BYTE pwdLen = 0;

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// this is called automatically after FPGA configuration
#line 57 "usb-test.c"

void receiveLen()
{
        IOB = SETUPDAT[2];
        IOA6 = 1;
#line 35 "d:\\ztex\\include\\ztex-utils.h"
        __asm 
	nop 
    __endasm;
#line 62 "usb-test.c"

#line 35 "d:\\ztex\\include\\ztex-utils.h"
        __asm 
	nop 
    __endasm;
#line 63 "usb-test.c"

        IOA6 = 0;
}

void receiveData()
{
        int size = EP0BCL, b;
        
        for ( b=0; b<size; b++ ) {
                IOB = EP0BUF[b];
                IOA2 = !IOA2;
#line 35 "d:\\ztex\\include\\ztex-utils.h"
                __asm 
	nop 
    __endasm;
#line 74 "usb-test.c"

#line 35 "d:\\ztex\\include\\ztex-utils.h"
                __asm 
	nop 
    __endasm;
#line 75 "usb-test.c"

        }
}


#line 31 "d:\\ztex\\include\\ztex-conf.h"
// ---------------------------------------------------------------
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// ---------- Senging the matching password to the host ----------
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// ---------------------------------------------------------------
#line 83 "usb-test.c"
void sendPwd()
{
        BYTE b, len;
        len = IOD;
        for ( b=0; b<len; b++ ) {
                IOA3 = !IOA3;
                EP0BUF[b] = IOD;
#line 35 "d:\\ztex\\include\\ztex-utils.h"
                __asm 
	nop 
    __endasm;
#line 90 "usb-test.c"

#line 35 "d:\\ztex\\include\\ztex-utils.h"
                __asm 
	nop 
    __endasm;
#line 91 "usb-test.c"

        }
        EP0BCH = 0;
        EP0BCL = len;
        ep0_payload_remaining = 0;
}

#line 103 "usb-test.c"


#line 31 "d:\\ztex\\include\\ztex-conf.h"
// ------------------------------------------------------------
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// ---------- Senging the current status to the host ----------
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// ------------------------------------------------------------
#line 108 "usb-test.c"
void sendStatus()
{
        EP0BUF[0] = IOC;
        EP0BCH = 0;
        EP0BCL = 1;
}

#line 119 "usb-test.c"


#line 31 "d:\\ztex\\include\\ztex-conf.h"
// ---------------------------------------------------------------
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// ---------- Receiving the next password from the host ----------
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// ---------------------------------------------------------------
#line 124 "usb-test.c"
void receivePassword()
{
        receiveData();
}

#line 135 "usb-test.c"


#line 31 "d:\\ztex\\include\\ztex-conf.h"
// -------------------------------------------------------
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// ---------- Receiving the ESSID from the host ----------
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// -------------------------------------------------------
#line 140 "usb-test.c"
void receiveEssid()
{
        IOA4 = 1;
        receiveData();
        IOA4 = 0;
}

#line 152 "usb-test.c"


#line 31 "d:\\ztex\\include\\ztex-conf.h"
// ------------------------------------------------------------
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// ---------- Receiving the target key from the host ----------
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// ------------------------------------------------------------
#line 157 "usb-test.c"
void receiveTargetKey()
{
        IOA7 = 1;
        receiveData();
        IOA7 = 0;
}

#line 169 "usb-test.c"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// -------------------------------------------------------------
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// ---------- Write the current password to the Flash ----------
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// -------------------------------------------------------------
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// BYTE writeCurrentPwd()
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        // flash_write_init(pwdStatusSector);
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        // flash_write_byte(generatePwds);
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        // flash_write((__xdata BYTE*) pwd, sizeof(pwd));
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        // flash_write_finish_sector(flash_sector_size - (1 + sizeof(pwd)));
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        // flash_write_finish();
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// }
#line 181 "usb-test.c"


#line 31 "d:\\ztex\\include\\ztex-conf.h"
// include the main part of the firmware kit, define the descriptors, ...
#line 1 "d:\\ztex\\include\\ztex.h"
/*!
   ZTEX Firmware Kit for EZ-USB FX2 Microcontrollers
   Copyright (C) 2009-2011 ZTEX GmbH.
   http://www.ztex.de

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License version 3 as
   published by the Free Software Foundation.

   This program is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, see http://www.gnu.org/licenses/.
!*/

/* 
   Puts everything together.
*/

#line 25 "d:\\ztex\\include\\ztex.h"

#line 27 "d:\\ztex\\include\\ztex.h"

#line 31 "d:\\ztex\\include\\ztex.h"

#line 35 "d:\\ztex\\include\\ztex.h"

/* *********************************************************************
   ***** include the basic functions ***********************************
   ********************************************************************* */
#line 1 "d:\\ztex\\include\\ztex-utils.h"
/*!
   ZTEX Firmware Kit for EZ-USB FX2 Microcontrollers
   Copyright (C) 2009-2011 ZTEX GmbH.
   http://www.ztex.de

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License version 3 as
   published by the Free Software Foundation.

   This program is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, see http://www.gnu.org/licenses/.
!*/

/* 
   Various utility routines
*/

#line 39 "d:\\ztex\\include\\ztex.h"


/* *********************************************************************
   ***** I2C helper functions, EEPROM and MAC EEPROM support ***********
   ********************************************************************* */
#line 45 "d:\\ztex\\include\\ztex.h"

#line 54 "d:\\ztex\\include\\ztex.h"

#line 1 "d:\\ztex\\include\\ztex-eeprom.h"
/*!
   ZTEX Firmware Kit for EZ-USB FX2 Microcontrollers
   Copyright (C) 2009-2011 ZTEX GmbH.
   http://www.ztex.de

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License version 3 as
   published by the Free Software Foundation.

   This program is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, see http://www.gnu.org/licenses/.
!*/

/*
    EEPROM support an some I2C helper routines
*/    

#line 25 "d:\\ztex\\include\\ztex-eeprom.h"

#line 28 "d:\\ztex\\include\\ztex-eeprom.h"

/* *********************************************************************
   ***** global variables **********************************************
   ********************************************************************* */
__xdata WORD eeprom_addr;
__xdata WORD eeprom_write_bytes;
__xdata BYTE eeprom_write_checksum;


/* *********************************************************************
   ***** i2c_waitWrite *************************************************
   ********************************************************************* */
/* Do the necessary steps after writing I2DAT register. Returns 1 on error. */
BYTE i2c_waitWrite()
{
    unsigned char i2csbuf,toc;
    for ( toc=0; toc<255 && !(I2CS & 1); toc++ );
    i2csbuf = I2CS;
    if ( (i2csbuf & 4) || (!(i2csbuf & 2)) ) {
        I2CS |= 64;
	return 1;
    }
    return 0;
}

/* *********************************************************************
   ***** i2c_waitRead **************************************************
   ********************************************************************* */
/* Do the necessary steps after reading I2DAT register. Returns 1 on error. */
BYTE i2c_waitRead(void)
{
    unsigned char i2csbuf, toc;
    for ( toc=0; toc<255 && !(I2CS & 1); toc++ );
    i2csbuf = I2CS;
    if (i2csbuf & 4) {
        I2CS |= 64;
	return 1;
    }
    return 0;
}

/* *********************************************************************
   ***** i2c_waitStart *************************************************
   ********************************************************************* */
/* Do the necessary steps after start bit. Returns 1 on error. */
BYTE i2c_waitStart()
{
    BYTE toc;
    for ( toc=0; toc<255; toc++ ) {
	if ( ! (I2CS & 4) )
	    return 0;
    }
    return 1;
}

/* *********************************************************************
   ***** i2c_waitStop **************************************************
   ********************************************************************* */
/* Do the necessary steps after stop bit. Returns 1 on error. */
BYTE i2c_waitStop()
{
    BYTE toc;
    for ( toc=0; toc<255; toc++ ) {
	if ( ! (I2CS & 64) )
	    return 0;
    }
    return 1;
}

/* *********************************************************************
   ***** eeprom_select *************************************************
   ********************************************************************* */
/* Select the EEPROM device, i.e. send the control Byte. 
   <to> specifies the time to wait in 0.1ms steps if the EEPROM is busy (during a write cycle).
   if <stop>=0 no sop bit is sent. Returns 1 on error or if EEPROM is busy. */
BYTE eeprom_select (BYTE addr, BYTE to, BYTE stop ) {
    BYTE toc = 0;
eeprom_select_start:
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    I2CS |= 128;		// start bit
#line 107 "d:\\ztex\\include\\ztex-eeprom.h"
    i2c_waitStart();
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    I2DAT = addr;		// select device for writing
#line 109 "d:\\ztex\\include\\ztex-eeprom.h"
    if ( ! i2c_waitWrite() ) {
        if ( stop ) {
            I2CS |= 64;
	    i2c_waitStop();
    	}
	return 0;
    }
    else if (toc<to) {
	uwait(10);
	goto eeprom_select_start;
    }
    if ( stop ) {
	I2CS |= 64;
    }
    return 1;
}

/* *********************************************************************
   ***** eeprom_read ***************************************************
   ********************************************************************* */
/* Reads <length> bytes from EEPROM address <addr> and write them to buf. 
   Returns the number of bytes read. This number is 0 during a write cycle. */
BYTE eeprom_read ( __xdata BYTE *buf, WORD addr, BYTE length ) { 
    BYTE bytes = 0,i;
    
    if ( length == 0 ) 
	return 0;
    
    if ( eeprom_select(0xA2, 100,0) ) 
	goto eeprom_read_end;
    
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    I2DAT = ((BYTE)((((unsigned short)(addr)) >> 8) & 0xff)) ;		// write address
#line 141 "d:\\ztex\\include\\ztex-eeprom.h"
    if ( i2c_waitWrite() ) goto eeprom_read_end;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    I2DAT = ((BYTE)(addr));		// write address
#line 143 "d:\\ztex\\include\\ztex-eeprom.h"
    if ( i2c_waitWrite() ) goto eeprom_read_end;
    I2CS |= 64;
    i2c_waitStop();

#line 31 "d:\\ztex\\include\\ztex-conf.h"
    I2CS |= 128;		// start bit
#line 148 "d:\\ztex\\include\\ztex-eeprom.h"
    i2c_waitStart();
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    I2DAT = 0xA2 | 1;	// select device for reading
#line 150 "d:\\ztex\\include\\ztex-eeprom.h"
    if ( i2c_waitWrite() ) goto eeprom_read_end;

#line 31 "d:\\ztex\\include\\ztex-conf.h"
    *buf = I2DAT;		// dummy read
#line 153 "d:\\ztex\\include\\ztex-eeprom.h"
    if ( i2c_waitRead()) goto eeprom_read_end; 
    for (; bytes<length; bytes++ ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	*buf = I2DAT;		// read data
#line 156 "d:\\ztex\\include\\ztex-eeprom.h"
	buf++;
	if ( i2c_waitRead()) goto eeprom_read_end; 
    }

#line 31 "d:\\ztex\\include\\ztex-conf.h"
    I2CS |= 32;		// no ACK
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    i = I2DAT;			// dummy read
#line 162 "d:\\ztex\\include\\ztex-eeprom.h"
    if ( i2c_waitRead()) goto eeprom_read_end; 

#line 31 "d:\\ztex\\include\\ztex-conf.h"
    I2CS |= 64;		// stop bit
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    i = I2DAT;			// dummy read
#line 166 "d:\\ztex\\include\\ztex-eeprom.h"
    i2c_waitStop();

eeprom_read_end:
    return bytes;
}

/* *********************************************************************
   ***** eeprom_write **************************************************
   ********************************************************************* */
/* Writes <length> bytes from buf to EEPROM address <addr>.
   <length> must be smaller or equal than 8. Returns the number of bytes
   read. This number is 0 during a write cycle. */
BYTE eeprom_write ( __xdata BYTE *buf, WORD addr, BYTE length ) {
    BYTE bytes = 0;

    if ( eeprom_select(0xA2, 100,0) ) 
	goto eeprom_write_end;
    
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    I2DAT = ((BYTE)((((unsigned short)(addr)) >> 8) & 0xff)) ;          	// write address
#line 185 "d:\\ztex\\include\\ztex-eeprom.h"
    if ( i2c_waitWrite() ) goto eeprom_write_end;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    I2DAT = ((BYTE)(addr));          	// write address
#line 187 "d:\\ztex\\include\\ztex-eeprom.h"
    if ( i2c_waitWrite() ) goto eeprom_write_end;
    
    for (; bytes<length; bytes++ ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	I2DAT = *buf;         	// write data 
#line 191 "d:\\ztex\\include\\ztex-eeprom.h"
	eeprom_write_checksum += *buf;
	buf++;
	eeprom_write_bytes+=1;
	if ( i2c_waitWrite() ) goto eeprom_write_end;
    }
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    I2CS |= 64;		// stop bit
#line 197 "d:\\ztex\\include\\ztex-eeprom.h"
    i2c_waitStop();
	
eeprom_write_end:
    return bytes;
}

/* *********************************************************************
   ***** EP0 vendor request 0x38 ***************************************
   ********************************************************************* */
BYTE eeprom_read_ep0 () { 
    BYTE i, b;
    b = ep0_payload_transfer;
    i = eeprom_read(EP0BUF, eeprom_addr, b);
    eeprom_addr += b;
    return i;
}

#line 222 "d:\\ztex\\include\\ztex-eeprom.h"


/* *********************************************************************
   ***** EP0 vendor command 0x39 ***************************************
   ********************************************************************* */
void eeprom_write_ep0 ( BYTE length ) { 	
    eeprom_write(EP0BUF, eeprom_addr, length);
    eeprom_addr += length;
}

#line 239 "d:\\ztex\\include\\ztex-eeprom.h"

/* *********************************************************************
   ***** EP0 vendor request 0x3A ***************************************
   ********************************************************************* */
#line 251 "d:\\ztex\\include\\ztex-eeprom.h"


#line 371 "d:\\ztex\\include\\ztex-eeprom.h"

#line 55 "d:\\ztex\\include\\ztex.h"


#line 58 "d:\\ztex\\include\\ztex.h"


/* *********************************************************************
   ***** Flash memory support ******************************************
   ********************************************************************* */
#line 64 "d:\\ztex\\include\\ztex.h"

#line 1 "d:\\ztex\\include\\ztex-flash1.h"
/*!
   ZTEX Firmware Kit for EZ-USB FX2 Microcontrollers
   Copyright (C) 2009-2011 ZTEX GmbH.
   http://www.ztex.de

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License version 3 as
   published by the Free Software Foundation.

   This program is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, see http://www.gnu.org/licenses/.
!*/

/*
    Support for SD cards in SPI mode. 
    This module is not MMC compatible anymore since multi block read/write commands are used.
*/    

#line 32 "d:\\ztex\\include\\ztex-flash1.h"

#line 35 "d:\\ztex\\include\\ztex-flash1.h"

#line 37 "d:\\ztex\\include\\ztex-flash1.h"

#line 41 "d:\\ztex\\include\\ztex-flash1.h"

#line 45 "d:\\ztex\\include\\ztex-flash1.h"

#line 49 "d:\\ztex\\include\\ztex-flash1.h"

#line 53 "d:\\ztex\\include\\ztex-flash1.h"

#line 57 "d:\\ztex\\include\\ztex-flash1.h"

#line 61 "d:\\ztex\\include\\ztex-flash1.h"

#line 67 "d:\\ztex\\include\\ztex-flash1.h"

#line 72 "d:\\ztex\\include\\ztex-flash1.h"

#line 75 "d:\\ztex\\include\\ztex-flash1.h"

#line 82 "d:\\ztex\\include\\ztex-flash1.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
// may be redefined if the first sectors are reserved (e.g. for a FPGA bitstream)
#line 85 "d:\\ztex\\include\\ztex-flash1.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata BYTE flash_enabled;	// 0	1: enabled, 0:disabled
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata WORD flash_sector_size; // 1    sector size
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata DWORD flash_sectors;	// 3	number of sectors
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata BYTE flash_ec; 	        // 7	error code
#line 90 "d:\\ztex\\include\\ztex-flash1.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata BYTE mmc_last_cmd;	// 0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata BYTE mmc_response;	// 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata BYTE mmc_version;	// 2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata BYTE mmc_buffer[16];	// 3
#line 95 "d:\\ztex\\include\\ztex-flash1.h"

__xdata BYTE mmc_ep0_wait;

#line 105 "d:\\ztex\\include\\ztex-flash1.h"

/* *********************************************************************
   ***** mmc_clocks ****************************************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// perform c (256 if c=0) clocks
#line 110 "d:\\ztex\\include\\ztex-flash1.h"
void mmc_clocks (BYTE c) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	c;					// this avoids stupid warnings
#line 112 "d:\\ztex\\include\\ztex-flash1.h"
__asm
	mov 	r2,dpl
#line 125 "d:\\ztex\\include\\ztex-flash1.h"
010014$:
        setb	_IOC6
	nop
        clr	_IOC6
#line 130 "d:\\ztex\\include\\ztex-flash1.h"
	djnz 	r2,010014$
__endasm;    
}


/* *********************************************************************
   ***** flash_read_byte ***********************************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// read a single byte from the flash
#line 31 "d:\\ztex\\include\\ztex-conf.h"
BYTE flash_read_byte() { // uses r2,r3,r4
#line 140 "d:\\ztex\\include\\ztex-flash1.h"
__asm  
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	// 8*7 + 6 = 62 clocks 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	mov	c,_IOD0	// 7
#line 223 "d:\\ztex\\include\\ztex-flash1.h"
        setb	_IOC6
        rlc 	a		
        clr	_IOC6

#line 31 "d:\\ztex\\include\\ztex-conf.h"
        mov	c,_IOD0	// 6
#line 228 "d:\\ztex\\include\\ztex-flash1.h"
        setb 	_IOC6
        rlc 	a		
        clr 	_IOC6

#line 31 "d:\\ztex\\include\\ztex-conf.h"
        mov	c,_IOD0	// 5
#line 233 "d:\\ztex\\include\\ztex-flash1.h"
        setb 	_IOC6
        rlc 	a		
        clr 	_IOC6

#line 31 "d:\\ztex\\include\\ztex-conf.h"
        mov	c,_IOD0	// 4
#line 238 "d:\\ztex\\include\\ztex-flash1.h"
        setb 	_IOC6
        rlc 	a		
        clr 	_IOC6

#line 31 "d:\\ztex\\include\\ztex-conf.h"
        mov	c,_IOD0	// 3
#line 243 "d:\\ztex\\include\\ztex-flash1.h"
        setb 	_IOC6
        rlc 	a		
        clr 	_IOC6

#line 31 "d:\\ztex\\include\\ztex-conf.h"
        mov	c,_IOD0	// 2
#line 248 "d:\\ztex\\include\\ztex-flash1.h"
        setb 	_IOC6
        rlc 	a		
        clr 	_IOC6

#line 31 "d:\\ztex\\include\\ztex-conf.h"
        mov	c,_IOD0	// 1
#line 253 "d:\\ztex\\include\\ztex-flash1.h"
        setb 	_IOC6
        rlc 	a		
        clr 	_IOC6

#line 31 "d:\\ztex\\include\\ztex-conf.h"
        mov	c,_IOD0	// 0
#line 258 "d:\\ztex\\include\\ztex-flash1.h"
        setb 	_IOC6
        rlc 	a		
        clr 	_IOC6
#line 262 "d:\\ztex\\include\\ztex-flash1.h"
        mov	dpl,a
        ret
__endasm;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	return 0;		// never ever called (just to avoid warnings)
#line 266 "d:\\ztex\\include\\ztex-flash1.h"
} 

/* *********************************************************************
   ***** flash_read ****************************************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// read len (256 if len=0) bytes from the flash to the buffer
#line 272 "d:\\ztex\\include\\ztex-flash1.h"
void flash_read(__xdata BYTE *buf, BYTE len) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	*buf;					// this avoids stupid warnings
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	len;					// this too
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__asm						// *buf is in dptr, len is in _flash_read_PARM_2
#line 276 "d:\\ztex\\include\\ztex-flash1.h"
	mov	r2,_flash_read_PARM_2
#line 357 "d:\\ztex\\include\\ztex-flash1.h"
010012$:
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	// 2 + len*(8*7 + 9) + 4 = 6 + len*65 clocks
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	mov	c,_IOD0	// 7
#line 360 "d:\\ztex\\include\\ztex-flash1.h"
        setb	_IOC6
        rlc 	a		
        clr	_IOC6

#line 31 "d:\\ztex\\include\\ztex-conf.h"
        mov	c,_IOD0	// 6
#line 365 "d:\\ztex\\include\\ztex-flash1.h"
        setb 	_IOC6
        rlc 	a		
        clr 	_IOC6

#line 31 "d:\\ztex\\include\\ztex-conf.h"
        mov	c,_IOD0	// 5
#line 370 "d:\\ztex\\include\\ztex-flash1.h"
        setb 	_IOC6
        rlc 	a		
        clr 	_IOC6

#line 31 "d:\\ztex\\include\\ztex-conf.h"
        mov	c,_IOD0	// 4
#line 375 "d:\\ztex\\include\\ztex-flash1.h"
        setb 	_IOC6
        rlc 	a		
        clr 	_IOC6

#line 31 "d:\\ztex\\include\\ztex-conf.h"
        mov	c,_IOD0	// 3
#line 380 "d:\\ztex\\include\\ztex-flash1.h"
        setb 	_IOC6
        rlc 	a		
        clr 	_IOC6

#line 31 "d:\\ztex\\include\\ztex-conf.h"
        mov	c,_IOD0	// 2
#line 385 "d:\\ztex\\include\\ztex-flash1.h"
        setb 	_IOC6
        rlc 	a		
        clr 	_IOC6

#line 31 "d:\\ztex\\include\\ztex-conf.h"
        mov	c,_IOD0	// 1
#line 390 "d:\\ztex\\include\\ztex-flash1.h"
        setb 	_IOC6
        rlc 	a		
        clr 	_IOC6

#line 31 "d:\\ztex\\include\\ztex-conf.h"
        mov	c,_IOD0	// 0
#line 395 "d:\\ztex\\include\\ztex-flash1.h"
        setb 	_IOC6
        rlc 	a		
        clr 	_IOC6
#line 399 "d:\\ztex\\include\\ztex-flash1.h"
	movx	@dptr,a
	inc	dptr
	djnz 	r2,010012$
__endasm;
} 

/* *********************************************************************
   ***** flash_write_byte **********************************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// send one bytes from buffer buf to the card
#line 31 "d:\\ztex\\include\\ztex-conf.h"
void flash_write_byte (BYTE b) {	// b is in dpl
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	b;				// this avoids stupid warnings
#line 411 "d:\\ztex\\include\\ztex-flash1.h"
__asm
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        // 3 + 8*7 + 4 = 63 clocks 
#line 478 "d:\\ztex\\include\\ztex-flash1.h"
	mov 	a,dpl
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc	a		// 7
#line 480 "d:\\ztex\\include\\ztex-flash1.h"

	mov	_IOC7,c
        setb	_IOC6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc	a		// 6
#line 484 "d:\\ztex\\include\\ztex-flash1.h"
        clr	_IOC6

	mov	_IOC7,c
        setb	_IOC6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc	a		// 5
#line 489 "d:\\ztex\\include\\ztex-flash1.h"
        clr	_IOC6

	mov	_IOC7,c
        setb	_IOC6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc	a		// 4
#line 494 "d:\\ztex\\include\\ztex-flash1.h"
        clr	_IOC6

	mov	_IOC7,c
        setb	_IOC6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc	a		// 3
#line 499 "d:\\ztex\\include\\ztex-flash1.h"
        clr	_IOC6

	mov	_IOC7,c
        setb	_IOC6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc	a		// 2
#line 504 "d:\\ztex\\include\\ztex-flash1.h"
        clr	_IOC6

	mov	_IOC7,c
        setb	_IOC6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc	a		// 1
#line 509 "d:\\ztex\\include\\ztex-flash1.h"
        clr	_IOC6

	mov	_IOC7,c
        setb	_IOC6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc	a		// 0
#line 514 "d:\\ztex\\include\\ztex-flash1.h"
        clr	_IOC6

	mov	_IOC7,c
        setb	_IOC6
	nop
        clr	_IOC6
#line 521 "d:\\ztex\\include\\ztex-flash1.h"
__endasm;
}  

/* *********************************************************************
   ***** flash_write ***************************************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// write len (256 id len=0) bytes from the buffer to the flash
#line 528 "d:\\ztex\\include\\ztex-flash1.h"
void flash_write(__xdata BYTE *buf, BYTE len) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	*buf;					// this avoids stupid warnings
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	len;					// this too
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__asm						// *buf is in dptr, len is in _flash_read_PARM_2
#line 532 "d:\\ztex\\include\\ztex-flash1.h"
	mov	r2,_flash_read_PARM_2
#line 602 "d:\\ztex\\include\\ztex-flash1.h"
010013$:
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	// 2 + len*(3 + 8*7 - 1 + 7 ) + 4 = 6 + len*65 clocks
#line 604 "d:\\ztex\\include\\ztex-flash1.h"
	movx	a,@dptr
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc	a		// 7
#line 606 "d:\\ztex\\include\\ztex-flash1.h"

	mov	_IOC7,c
        setb	_IOC6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc	a		// 6
#line 610 "d:\\ztex\\include\\ztex-flash1.h"
        clr	_IOC6

	mov	_IOC7,c
        setb	_IOC6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc	a		// 5
#line 615 "d:\\ztex\\include\\ztex-flash1.h"
        clr	_IOC6

	mov	_IOC7,c
        setb	_IOC6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc	a		// 4
#line 620 "d:\\ztex\\include\\ztex-flash1.h"
        clr	_IOC6

	mov	_IOC7,c
        setb	_IOC6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc	a		// 3
#line 625 "d:\\ztex\\include\\ztex-flash1.h"
        clr	_IOC6

	mov	_IOC7,c
        setb	_IOC6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc	a		// 2
#line 630 "d:\\ztex\\include\\ztex-flash1.h"
        clr	_IOC6

	mov	_IOC7,c
        setb	_IOC6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc	a		// 1
#line 635 "d:\\ztex\\include\\ztex-flash1.h"
        clr	_IOC6

	mov	_IOC7,c
        setb	_IOC6
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc	a		// 0
#line 640 "d:\\ztex\\include\\ztex-flash1.h"
        clr	_IOC6

	mov	_IOC7,c
        setb	_IOC6
	inc	dptr
        clr	_IOC6 

	djnz 	r2,010013$ 
#line 649 "d:\\ztex\\include\\ztex-flash1.h"
__endasm;
} 

/* *********************************************************************
   ***** mmc_wait_busy *************************************************
   ********************************************************************* */
BYTE mmc_wait_busy () {
    WORD i;
    flash_ec = 3;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    IOC |= 128;				// avoids that in-data is interpreted as command
#line 659 "d:\\ztex\\include\\ztex-flash1.h"
    for (i=0; (flash_read_byte()!=255) && i<65535; i++ ) ;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
//    for (i=0; (flash_read_byte()==0) && i<65535; i++ ) ;
#line 661 "d:\\ztex\\include\\ztex-flash1.h"
    if ( IOD & 1 ) {
	flash_ec = 0;
	return 0;
    }
    return 1;
}

/* *********************************************************************
   ***** mmc_select ****************************************************
   ********************************************************************* */
/* 
   select the card (CS) and waits if busy
   returns 1 if busy
*/
BYTE mmc_select() {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    IOC |= 32;				// CS = 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks to finish a previous command
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    IOC &= ~32;			// CS = 0
#line 679 "d:\\ztex\\include\\ztex-flash1.h"

    return mmc_wait_busy();
}

/* *********************************************************************
   ***** mmc_deselect **************************************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// de-select the card (CS) and waits if busy
#line 687 "d:\\ztex\\include\\ztex-flash1.h"
void mmc_deselect() {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    IOC |= 128;				// CS = 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks to finish a previous command
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    IOC |= 32; 			// CS = 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 more dummy clocks
#line 692 "d:\\ztex\\include\\ztex-flash1.h"
}
   
/* *********************************************************************
   ***** mmc_read_response *********************************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// read the first response byte
#line 698 "d:\\ztex\\include\\ztex-flash1.h"
BYTE mmc_read_response() {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	IOC |= 128;			// avoids that in-data is interpreted as command
#line 700 "d:\\ztex\\include\\ztex-flash1.h"
__asm
	mov	r2,#0x255
010010$:
	lcall	_flash_read_byte
	mov	a,dpl
	jnb	acc.7,010011$
	djnz 	r2, 010010$

010011$:
	mov	dptr,#_mmc_response
	movx	@dptr,a
	mov	dpl,a
	ret
__endasm;    
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	return 0;				// never ever called, just to avoid stupid warnings
#line 715 "d:\\ztex\\include\\ztex-flash1.h"
} 

/* *********************************************************************
   ***** mmc_send_cmd **************************************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// send a command   
#line 733 "d:\\ztex\\include\\ztex-flash1.h"

/* *********************************************************************
   ***** mmc_wait_start ************************************************
   ********************************************************************* */
/*
   wait for the start byte
   returns 1 on error
*/   
BYTE mmc_wait_start() {
    WORD to;
    to=0;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    IOC |= 128;				// avoids that in-data is interpreted as command
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    while ( flash_read_byte() != 0xfe ) {	// wait for the start byte
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	if ( ++to == 0 )   			// 65536 * 8 clocks
#line 747 "d:\\ztex\\include\\ztex-flash1.h"
	    return 1;
    }
    return 0;
} 

/* *********************************************************************
   ***** flash_read_init ***********************************************
   ********************************************************************* */
/*
   Start the initialization sequence for reading sector s.
   The whole sector must be read.
   returns an error code (FLASH_EC_*). 0 means no error.
*/   
BYTE flash_read_init(DWORD s) {
    if ( (IOC & 32) == 0 ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	return 4;		// we interrupted a pending Flash operation
#line 763 "d:\\ztex\\include\\ztex-flash1.h"
    }  
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    if ( mmc_select() )	{			// select the card
#line 765 "d:\\ztex\\include\\ztex-flash1.h"
	mmc_deselect();
	return 3;
    }
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 769 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 18;
    mmc_buffer[0] = 18 | 64;
    if ( mmc_version == 0 ) {
	s = s << 1;
	mmc_buffer[1] = s >> 16;
	mmc_buffer[2] = s >> 8;
	mmc_buffer[3] = s;
	mmc_buffer[4] = 0;
    }
    else {
	mmc_buffer[1] = s >> 24;
	mmc_buffer[2] = s >> 16;
	mmc_buffer[3] = s >> 8;
	mmc_buffer[4] = s;
    }
    mmc_buffer[5] = 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
    if ( mmc_response != 0 ) {
	mmc_deselect();
	return 1; 
    }

#line 31 "d:\\ztex\\include\\ztex-conf.h"
    if ( mmc_wait_start() ) {			// wait for the start byte
#line 793 "d:\\ztex\\include\\ztex-flash1.h"
	mmc_deselect();
	return 2;
    }
    return 0;
}

/* *********************************************************************
   ***** flash_read_next ***********************************************
   ********************************************************************* */
/*
   Initialization sequence for reading the next sector.
   The whole sector must be read.
   returns an error code (FLASH_EC_*). 0 means no error.
*/   
BYTE flash_read_next() {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(16);				// 16 CRC clocks
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    if ( mmc_wait_start() ) {			// wait for the start byte
#line 810 "d:\\ztex\\include\\ztex-flash1.h"
	mmc_deselect();
	return 2;
    }
    return 0;
}

/* *********************************************************************
   ***** flash_read_finish *********************************************
   ********************************************************************* */
/*
   Reads n dummy bytes (the whole sector has to be read out)
   and runs the finalization sequence for a sector read. 
*/   
void flash_read_finish(WORD n) {
    while ( n > 32 ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	mmc_clocks(0);			// 256 clocks = 32 dummy bytes
#line 826 "d:\\ztex\\include\\ztex-flash1.h"
	n-=32;
    }
    if ( n>0) mmc_clocks(n << 3);
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(16);			// 16 CRC clocks 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    {			// send a command, argument=0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 723 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 12;
    mmc_buffer[0] = 64 | (12 & 127);
    mmc_buffer[1] =  0;
    mmc_buffer[2] = 0;
    mmc_buffer[3] = 0;
    mmc_buffer[4] = 0;
    mmc_buffer[5] =  0 | 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
#line 31 "d:\\ztex\\include\\ztex-conf.h"
}	// stop transmission command, errors are ignored
#line 31 "d:\\ztex\\include\\ztex-conf.h"
//    mmc_wait_busy();			// not required here
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);			// 8 dummy clocks
#line 833 "d:\\ztex\\include\\ztex-flash1.h"
   mmc_deselect();
}


/* *********************************************************************
   ***** flash_write_init **********************************************
   ********************************************************************* */
/*
   Start the initialization sequence for writing sector s
   The whole sector must be written.
   returns an error code (FLASH_EC_*). 0 means no error.
*/   
BYTE flash_write_init(DWORD s) {
    if ( (IOC & 32) == 0 ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	return 4;		// we interrupted a pending Flash operation
#line 848 "d:\\ztex\\include\\ztex-flash1.h"
    }  
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    if ( mmc_select() )	{			// select the card
#line 850 "d:\\ztex\\include\\ztex-flash1.h"
	mmc_deselect();
	return 3;
    }
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 854 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 25;
    mmc_buffer[0] = 25 | 64;
    if ( mmc_version == 0 ) {
	s = s << 1;
	mmc_buffer[1] = s >> 16;
	mmc_buffer[2] = s >> 8;
	mmc_buffer[3] = s;
	mmc_buffer[4] = 0;
    }
    else {
	mmc_buffer[1] = s >> 24;
	mmc_buffer[2] = s >> 16;
	mmc_buffer[3] = s >> 8;
	mmc_buffer[4] = s;
    }
    mmc_buffer[5] = 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
    if ( mmc_response != 0 ) {
	mmc_deselect();
	return 1; 
    }

    IOC |= 128;				
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// send one dummy byte
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    flash_write_byte( 0xfc );			// send the start byte
#line 880 "d:\\ztex\\include\\ztex-flash1.h"
    return 0;
}

/* *********************************************************************
   ***** flash_write_finish_sector *************************************
   ********************************************************************* */
/*
   Writes the rest of the sector (n dummy bytes + CRC, the whole sector has to be written)
   but do not write the finalization procedure. This is done by flash_write_finish 
   or flash_write_next, i.e. these functions must be called after flash_write_finish_sector.
   
   Between flash_write_finish / flash_write_next and flash_write_finish_sector some code
   may be executed because flash_write_finish / flash_write_next start with
   mmc_wait_busy().

   Returns an error code (FLASH_EC_*). 0 means no error.
*/   
BYTE flash_write_finish_sector (WORD n) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    IOC &= ~128;			// value of the dummy data is 0
#line 899 "d:\\ztex\\include\\ztex-flash1.h"
    while ( n > 32 ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	mmc_clocks(0);				// 256 clocks = 32 dummy bytes
#line 901 "d:\\ztex\\include\\ztex-flash1.h"
	n-=32;
    }
    if ( n>0) mmc_clocks(n << 3);

    IOC |= 128;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(16);				// 16 CRC clocks
#line 907 "d:\\ztex\\include\\ztex-flash1.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
    if ( (flash_read_byte() & 0xf) != 5 ) {	// data response: last four bits must be 5
#line 909 "d:\\ztex\\include\\ztex-flash1.h"
       flash_ec = 6; 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
       {			// send a command, argument=0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 723 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 12;
    mmc_buffer[0] = 64 | (12 & 127);
    mmc_buffer[1] =  0;
    mmc_buffer[2] = 0;
    mmc_buffer[3] = 0;
    mmc_buffer[4] = 0;
    mmc_buffer[5] =  0 | 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
#line 31 "d:\\ztex\\include\\ztex-conf.h"
}		// stop transmission command, errors are ignored
#line 31 "d:\\ztex\\include\\ztex-conf.h"
       mmc_clocks(8);				// 8 dummy clocks
#line 912 "d:\\ztex\\include\\ztex-flash1.h"
       mmc_deselect();
       return 6; 
    }   
    return 0;
}

/* *********************************************************************
   ***** flash_write_finish ********************************************
   ********************************************************************* */
/*
   Stops the write transimssion, see flash_write_finish1.
*/   
void flash_write_finish () {
    mmc_wait_busy();			
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    flash_write_byte( 0xfd );			// send the stop byte
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 928 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_deselect();
}

/* *********************************************************************
   ***** flash_write_next **********************************************
   ********************************************************************* */
/*
   Prepare the nexte sector for write transimssion, see flash_write_finish1.
*/   
void flash_write_next () {
    mmc_wait_busy();			
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    flash_write_byte( 0xfc );			// send the stop byte
#line 940 "d:\\ztex\\include\\ztex-flash1.h"
}

/* *********************************************************************
   ***** flash_init ****************************************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// init the card
#line 946 "d:\\ztex\\include\\ztex-flash1.h"
void flash_init() {
    BYTE i, j, k;

#line 956 "d:\\ztex\\include\\ztex-flash1.h"

    flash_enabled = 1;
    flash_sector_size = 512;
    mmc_version = 0;
    
    OEC = OEC | ( 32 | 128 | 64 );
    OED = OED & ~1;

    IOC |= 128;
    IOC |= 32;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(0);				// 256 clocks
#line 967 "d:\\ztex\\include\\ztex-flash1.h"
    
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_select();				// select te card
#line 969 "d:\\ztex\\include\\ztex-flash1.h"
    flash_ec = 3;
	
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    {			// send a command, argument=0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 723 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 0;
    mmc_buffer[0] = 64 | (0 & 127);
    mmc_buffer[1] =  0;
    mmc_buffer[2] = 0;
    mmc_buffer[3] = 0;
    mmc_buffer[4] = 0;
    mmc_buffer[5] =  0x95 | 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
#line 31 "d:\\ztex\\include\\ztex-conf.h"
}		// send reset command
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    if ( mmc_response & ~1 ) {			// check for errors
#line 973 "d:\\ztex\\include\\ztex-flash1.h"
	wait(50);				
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	{			// send a command, argument=0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 723 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 0;
    mmc_buffer[0] = 64 | (0 & 127);
    mmc_buffer[1] =  0;
    mmc_buffer[2] = 0;
    mmc_buffer[3] = 0;
    mmc_buffer[4] = 0;
    mmc_buffer[5] =  0x95 | 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
#line 31 "d:\\ztex\\include\\ztex-conf.h"
}		// 2nd try
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	if ( mmc_response & ~1 ) 		// check for errors 
#line 976 "d:\\ztex\\include\\ztex-flash1.h"
	    goto mmc_init_cmd_err;
    }
    
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    // send cmd8, valid ? 2.0 mode : 1.xx mode
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    {			// send a command, argument=0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 723 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 8;
    mmc_buffer[0] = 64 | (8 & 127);
    mmc_buffer[1] =  0;
    mmc_buffer[2] = 0;
    mmc_buffer[3] = 1;
    mmc_buffer[4] = 0xaa;
    mmc_buffer[5] =  0x87 | 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
#line 980 "d:\\ztex\\include\\ztex-flash1.h"
}
    if ( ( mmc_response & 4) == 0 ) {
	if ( (mmc_response & 0xfe) != 0 )  
	    goto mmc_init_cmd_err;
	flash_read(mmc_buffer,4);
	if ( ( (mmc_buffer[2] & 15) != 1) || (mmc_buffer[3] != 0xaa ) ) {
	    flash_ec = 7;
	    goto mmc_init_err;
	}
	mmc_version=1;
    }
    
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    // CMD1 is not recommended, therefore we try ACMD41 first
#line 993 "d:\\ztex\\include\\ztex-flash1.h"
    k=mmc_version ? 64 : 0;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    {			// send a command, argument=0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 723 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 55;
    mmc_buffer[0] = 64 | (55 & 127);
    mmc_buffer[1] =  0;
    mmc_buffer[2] = 0;
    mmc_buffer[3] = 0;
    mmc_buffer[4] = 0;
    mmc_buffer[5] =  0 | 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
#line 994 "d:\\ztex\\include\\ztex-flash1.h"
}
    if ( (mmc_response & 0xfe) == 0 )
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	{			// send a command, argument=0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 723 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 41;
    mmc_buffer[0] = 64 | (41 & 127);
    mmc_buffer[1] =  k;
    mmc_buffer[2] = 0;
    mmc_buffer[3] = 0;
    mmc_buffer[4] = 0;
    mmc_buffer[5] =  0 | 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
#line 996 "d:\\ztex\\include\\ztex-flash1.h"
}
    j = mmc_response & 0xfe;
    
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    for ( i=0; mmc_response != 0 && i<255; i++ ) {	// send the init command and wait wait (up to 1s) until ready
#line 1000 "d:\\ztex\\include\\ztex-flash1.h"
	wait(4);
	if ( j ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	    {			// send a command, argument=0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 723 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 1;
    mmc_buffer[0] = 64 | (1 & 127);
    mmc_buffer[1] =  k;
    mmc_buffer[2] = 0;
    mmc_buffer[3] = 0;
    mmc_buffer[4] = 0;
    mmc_buffer[5] =  0xff | 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
#line 1002 "d:\\ztex\\include\\ztex-flash1.h"
}
	}
	else {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	    {			// send a command, argument=0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 723 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 55;
    mmc_buffer[0] = 64 | (55 & 127);
    mmc_buffer[1] =  0;
    mmc_buffer[2] = 0;
    mmc_buffer[3] = 0;
    mmc_buffer[4] = 0;
    mmc_buffer[5] =  0 | 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
#line 1005 "d:\\ztex\\include\\ztex-flash1.h"
}
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	    {			// send a command, argument=0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 723 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 41;
    mmc_buffer[0] = 64 | (41 & 127);
    mmc_buffer[1] =  k;
    mmc_buffer[2] = 0;
    mmc_buffer[3] = 0;
    mmc_buffer[4] = 0;
    mmc_buffer[5] =  0 | 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
#line 1006 "d:\\ztex\\include\\ztex-flash1.h"
}
	}
    }
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    if ( mmc_response != 0 ) {			// check for errors
#line 1010 "d:\\ztex\\include\\ztex-flash1.h"
	goto mmc_init_cmd_err;
    } 

    if ( mmc_version ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	{			// send a command, argument=0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 723 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 58;
    mmc_buffer[0] = 64 | (58 & 127);
    mmc_buffer[1] =  0;
    mmc_buffer[2] = 0;
    mmc_buffer[3] = 0;
    mmc_buffer[4] = 0;
    mmc_buffer[5] =  0 | 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
#line 31 "d:\\ztex\\include\\ztex-conf.h"
}  		// check the high capacity mode
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	if ( mmc_response != 0 ) 		// check for errors
#line 1016 "d:\\ztex\\include\\ztex-flash1.h"
	    goto mmc_init_cmd_err;
	flash_read(mmc_buffer,4);
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	if ( (mmc_buffer[0] & 64) == 0 )	// card in standard capacity mode
#line 1019 "d:\\ztex\\include\\ztex-flash1.h"
	    mmc_version = 0;
    }

#line 31 "d:\\ztex\\include\\ztex-conf.h"
    {			// send a command, argument=0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 723 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 9;
    mmc_buffer[0] = 64 | (9 & 127);
    mmc_buffer[1] =  0;
    mmc_buffer[2] = 0;
    mmc_buffer[3] = 0;
    mmc_buffer[4] = 0;
    mmc_buffer[5] =  0 | 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
#line 31 "d:\\ztex\\include\\ztex-conf.h"
}		// read the CSD
#line 1023 "d:\\ztex\\include\\ztex-flash1.h"
    if ( mmc_wait_start() ) {
	flash_ec = 2;
	goto mmc_init_err;
    }
    flash_read(mmc_buffer,16);
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(16);				// CRC is clocked out
#line 1029 "d:\\ztex\\include\\ztex-flash1.h"

    mmc_buffer[0] &= 192;
    if ( (mmc_buffer[0] & 192) == 0  ) {
	i = (mmc_buffer[5] & 15) + ((mmc_buffer[10] >> 7) | ((mmc_buffer[9] & 3) << 1)) - 7;
	flash_sectors = ((mmc_buffer[8] >> 6) | (mmc_buffer[7] << 2) | ((mmc_buffer[6] & 3) << 10)) + 1;
	flash_sectors = flash_sectors << i;
    }
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    else if ( (mmc_buffer[0] & 192) == 64  ) { // todo
#line 1037 "d:\\ztex\\include\\ztex-flash1.h"
	flash_sectors = ( ( ((DWORD)(mmc_buffer[7] & 63) << 16) | (mmc_buffer[8] << 8) | mmc_buffer[9]  ) +1 ) << 10;
    } 
    else {
	flash_ec = 7;
	goto mmc_init_err;
    }

    flash_ec = 0;
    mmc_deselect();
    
    return;

mmc_init_cmd_err:
    flash_ec = 1;
mmc_init_err:
    flash_enabled = 0;
    mmc_deselect();
}


/* *********************************************************************
   ***** EP0 vendor request 0x40 ***************************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// send mmc information structure (card size, error status,  ...) to the host
#line 1067 "d:\\ztex\\include\\ztex-flash1.h"

/* *********************************************************************
   ***** EP0 vendor request 0x41 ***************************************
   ********************************************************************* */
void mmc_read_ep0 () { 
    if ( mmc_ep0_wait ) {
	mmc_ep0_wait = 0;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	if ( mmc_wait_start() ) {		// wait for the start byte of the next block
#line 1075 "d:\\ztex\\include\\ztex-flash1.h"
	    flash_ec = 2;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
            {			// send a command, argument=0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 723 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 12;
    mmc_buffer[0] = 64 | (12 & 127);
    mmc_buffer[1] =  0;
    mmc_buffer[2] = 0;
    mmc_buffer[3] = 0;
    mmc_buffer[4] = 0;
    mmc_buffer[5] =  0 | 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
#line 31 "d:\\ztex\\include\\ztex-conf.h"
}	// stop transmission command
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    	    mmc_clocks(8);			// 8 dummy clocks
#line 1078 "d:\\ztex\\include\\ztex-flash1.h"
	    mmc_deselect();
	    return;
	}
    }

    flash_read(EP0BUF, ep0_payload_transfer);
    if ( ep0_payload_remaining == 0 ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	mmc_clocks(16);				// 16 CRC clocks 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	{			// send a command, argument=0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 723 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 12;
    mmc_buffer[0] = 64 | (12 & 127);
    mmc_buffer[1] =  0;
    mmc_buffer[2] = 0;
    mmc_buffer[3] = 0;
    mmc_buffer[4] = 0;
    mmc_buffer[5] =  0 | 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
#line 31 "d:\\ztex\\include\\ztex-conf.h"
}		// stop transmission command, errors are ignored
#line 31 "d:\\ztex\\include\\ztex-conf.h"
//	mmc_wait_busy();			// not required here
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	mmc_clocks(8);				// 8 dummy clocks
#line 1089 "d:\\ztex\\include\\ztex-flash1.h"
	mmc_deselect();
    } 
    else if ( (ep0_payload_remaining & 511) == 0 ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	mmc_clocks(16);				// 16 CRC clocks
#line 1093 "d:\\ztex\\include\\ztex-flash1.h"
	mmc_ep0_wait = 1;
    }   
}

#line 1165 "d:\\ztex\\include\\ztex-flash1.h"

/* *********************************************************************
   ***** EP0 vendor command 0x42 ***************************************
   ********************************************************************* */
void mmc_send_ep0 () { 
    if ( mmc_ep0_wait ) {
	mmc_ep0_wait = 0;
	mmc_wait_busy();			
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        flash_write_byte( 0xfc );			// send the start byte of the next data block
#line 1174 "d:\\ztex\\include\\ztex-flash1.h"
    }
    
    flash_write(EP0BUF, ep0_payload_transfer);
    if ( (ep0_payload_remaining & 511) == 0 ) {
	IOC |= 128;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	mmc_clocks(16);					// 16 CRC clocks
#line 1180 "d:\\ztex\\include\\ztex-flash1.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
	if ( (flash_read_byte() & 0xf) != 5 ) {		// data response: last four bits must be 5
#line 1182 "d:\\ztex\\include\\ztex-flash1.h"
	   flash_ec = 6; 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	   {			// send a command, argument=0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 723 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 12;
    mmc_buffer[0] = 64 | (12 & 127);
    mmc_buffer[1] =  0;
    mmc_buffer[2] = 0;
    mmc_buffer[3] = 0;
    mmc_buffer[4] = 0;
    mmc_buffer[5] =  0 | 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
#line 31 "d:\\ztex\\include\\ztex-conf.h"
}		// stop transmission command, errors are ignored
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	   mmc_clocks(8);				// 8 dummy clocks
#line 1185 "d:\\ztex\\include\\ztex-flash1.h"
	   mmc_deselect();
	} 

	if ( ep0_payload_remaining != 0 ) {
	    mmc_ep0_wait = 1;
    	}
    	else {
	    mmc_wait_busy();			
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    	    flash_write_byte( 0xfd );			// send the stop byte
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	    mmc_clocks(8);				// 8 dummy clocks
#line 1195 "d:\\ztex\\include\\ztex-flash1.h"
	    mmc_deselect();
	}
    }
}

#line 1264 "d:\\ztex\\include\\ztex-flash1.h"

/* *********************************************************************
   ***** EP0 vendor request 0x43 ***************************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// send detailed MMC status plus debug information
#line 1281 "d:\\ztex\\include\\ztex-flash1.h"

#line 113 "d:\\ztex\\include\\ztex.h"


#line 136 "d:\\ztex\\include\\ztex.h"

/* *********************************************************************
   ***** FPGA configuration support ************************************
   ********************************************************************* */
#line 1 "d:\\ztex\\include\\ztex-fpga3.h"
/*!
   ZTEX Firmware Kit for EZ-USB FX2 Microcontrollers
   Copyright (C) 2009-2011 ZTEX GmbH.
   http://www.ztex.de

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License version 3 as
   published by the Free Software Foundation.

   This program is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, see http://www.gnu.org/licenses/.
!*/

/*
    FPGA support for ZTEX USB FPGA Modules 1.11
*/    

#line 25 "d:\\ztex\\include\\ztex-fpga3.h"

#line 27 "d:\\ztex\\include\\ztex-fpga3.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata BYTE fpga_checksum;         // checksum
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata DWORD fpga_bytes;           // transfered bytes
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata BYTE fpga_init_b;           // init_b state (should be 222 after configuration)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata BYTE fpga_flash_result;     // result of automatic fpga configuarion from Flash
#line 32 "d:\\ztex\\include\\ztex-fpga3.h"

/* *********************************************************************
   ***** reset_fpga ****************************************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
static void reset_fpga_int (BYTE mode) {		// reset FPGA
#line 37 "d:\\ztex\\include\\ztex-fpga3.h"
    unsigned short k;
    IFCONFIG = 128;
#line 41 "d:\\ztex\\include\\ezregs.h"
    __asm 
	nop 
	nop 
	nop 
	nop 
    __endasm;
#line 39 "d:\\ztex\\include\\ztex-fpga3.h"
 
    PORTACFG = 0;
    PORTCCFG = 0;

    OEA = 2 | 8 | 16 | 32 | 64 | 128;
    IOA = 128 | mode;
    wait(10);
		    
    OEC &= ~8;

#line 31 "d:\\ztex\\include\\ztex-conf.h"
    IOA = 2 | mode;				// ready for configuration
#line 50 "d:\\ztex\\include\\ztex-fpga3.h"
    k=0;
    while (!IOA0 && k<65535)
	k++;

    fpga_init_b = IOA0 ? 200 : 100;
    fpga_bytes = 0;
    fpga_checksum = 0;
}    

static void reset_fpga () {
    reset_fpga_int(32);
}

static void reset_fpga_flash () {
    reset_fpga_int(32 | 64);
}
    
/* *********************************************************************
   ***** init_fpga_configuration ***************************************
   ********************************************************************* */
static void init_fpga_configuration () {
    {
	
    }
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    reset_fpga();			// reset FPGA
#line 75 "d:\\ztex\\include\\ztex-fpga3.h"
}    

/* *********************************************************************
   ***** post_fpga_confog **********************************************
   ********************************************************************* */
static void post_fpga_config () {
#line 36 "usb-test.c"
    
        
        pwdStatusSector = 0;
        
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        // outputs
#line 41 "usb-test.c"
        OEB = 0xFF;
        OEA = 4 | 8 | 16 | 32 | 64 | 128;
        
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        // RST = 0;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        // RD_CLK = 0;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        // WR_CLK = 0;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        // ESSID_WR_EN = 0;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        // LEN_VALID = 0;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        // TARGET_KEY_WR_EN = 0;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        IOA &= ~OEA; // reset all outputs
#line 51 "usb-test.c"
        
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        // reset fpga
#line 53 "usb-test.c"
        IOA5 = 1;
#line 35 "d:\\ztex\\include\\ztex-utils.h"
        __asm 
	nop 
    __endasm;
#line 54 "usb-test.c"

        IOA5 = 0;
#line 81 "d:\\ztex\\include\\ztex-fpga3.h"

}

/* *********************************************************************
   ***** finish_fpga_configuration *************************************
   ********************************************************************* */
static void finish_fpga_configuration () {
    BYTE w;
    fpga_init_b += IOA0 ? 20 : 10;

    for ( w=0; w<64; w++ ) {
        IOA3 = 1; IOA3 = 0; 
    }
    IOA7 = 1;
    IOA3 = 1; IOA3 = 0;
    IOA3 = 1; IOA3 = 0;
    IOA3 = 1; IOA3 = 0;
    IOA3 = 1; IOA3 = 0;

    OEA = OEA & 5;
    fpga_init_b += IOA0 ? 2 : 1;
    if ( IOA1 )  {
	IOA1 = 1;		
	post_fpga_config();
    }

    IOA1 = 1;		
    OEA |= 2; 
}    


/* *********************************************************************
   ***** EP0 vendor request 0x30 ***************************************
   ********************************************************************* */
#line 132 "d:\\ztex\\include\\ztex-fpga3.h"


/* *********************************************************************
   ***** EP0 vendor command 0x31 ***************************************
   ********************************************************************* */
#line 138 "d:\\ztex\\include\\ztex-fpga3.h"


/* *********************************************************************
   ***** EP0 vendor command 0x32 ***************************************
   ********************************************************************* */
void fpga_send_ep0() {
    BYTE oOED;
    oOED = OED;
    OED = 255;
    fpga_bytes += ep0_payload_transfer;
    __asm
	mov	dptr,#_EP0BCL
	movx	a,@dptr
	jz 	010000$
  	mov	r2,a
	mov 	_AUTOPTRL1,#(_EP0BUF)
	mov 	_AUTOPTRH1,#(_EP0BUF >> 8)
	mov 	_AUTOPTRSETUP,#0x07
	mov	dptr,#_fpga_checksum
	movx 	a,@dptr
	mov 	r1,a
	mov	dptr,#_XAUTODAT1
010001$:
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	movx	a,@dptr			// 2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	mov	_IOD,a			// 2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	setb	_IOA3			// 2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	add 	a,r1			// 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	mov 	r1,a                    // 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	clr	_IOA3                   // 2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	djnz	r2, 010001$		// 4
#line 168 "d:\\ztex\\include\\ztex-fpga3.h"

	mov	dptr,#_fpga_checksum
	mov	a,r1
	movx	@dptr,a
	
010000$:
    	__endasm; 
    OED = oOED;
    if ( EP0BCL<64 ) {
    	finish_fpga_configuration();
    } 
}

#line 185 "d:\\ztex\\include\\ztex-fpga3.h"


#line 189 "d:\\ztex\\include\\ztex-fpga3.h"

/* *********************************************************************
   ***** fpga_send_bitstream_from_flash ********************************
   ********************************************************************* */
void fpga_send_bitstream_from_flash (WORD size) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	size;			// this avoids stupid warnings
#line 195 "d:\\ztex\\include\\ztex-fpga3.h"
__asm
	push 	_OED
	mov	_OED,#0

#line 31 "d:\\ztex\\include\\ztex-conf.h"
	mov	r5,dpl		// = size
#line 200 "d:\\ztex\\include\\ztex-fpga3.h"
	mov	r6,dph

#line 31 "d:\\ztex\\include\\ztex-conf.h"
	// fpga_bytes+=size
#line 203 "d:\\ztex\\include\\ztex-fpga3.h"
	mov	dptr,#_fpga_bytes
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a

	mov	dptr,#_fpga_bytes
	mov	a,r5
	add	a,r1
	movx	@dptr,a
	mov	a,r6
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,#0
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,#0
	addc	a,r4
	inc	dptr
	movx	@dptr,a

010003$:
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	cjne	r5,#0x00,010002$	// 4
#line 235 "d:\\ztex\\include\\ztex-fpga3.h"
	cjne	r6,#0x00,010002$
	pop 	_OED
	ret
#line 31 "d:\\ztex\\include\\ztex-conf.h"
010002$:			   	// approx 73 cycles per byte
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	setb	_IOA3  // 2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	setb	_IOC6  // 2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	clr	_IOA3  // 2
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	clr	_IOC6  // 2
#line 243 "d:\\ztex\\include\\ztex-fpga3.h"

	setb	_IOA3
	setb	_IOC6
	clr	_IOA3
	clr	_IOC6
	
	setb	_IOA3
	setb	_IOC6
	clr	_IOA3
	clr	_IOC6

	setb	_IOA3
	setb	_IOC6
	clr	_IOA3
	clr	_IOC6
	
	setb	_IOA3
	setb	_IOC6
	clr	_IOA3
	clr	_IOC6

	setb	_IOA3
	setb	_IOC6
	clr	_IOA3
	clr	_IOC6
	
	setb	_IOA3
	setb	_IOC6
	clr	_IOA3
	clr	_IOC6

	setb	_IOA3
	setb	_IOC6
	clr	_IOA3
	clr	_IOC6
	
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	dec	r5			// 1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	cjne	r5,#0xff,010003$	// 4
#line 281 "d:\\ztex\\include\\ztex-fpga3.h"
	dec	r6 
	sjmp	010003$
__endasm;    
}

#line 1 "d:\\ztex\\include\\ztex-fpga-flash.h"
/*!
   ZTEX Firmware Kit for EZ-USB FX2 Microcontrollers
   Copyright (C) 2009-2011 ZTEX GmbH.
   http://www.ztex.de

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License version 3 as
   published by the Free Software Foundation.

   This program is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, see http://www.gnu.org/licenses/.
!*/

/*
    Common functions for FPGA configuration from flash memory
*/    


__code BYTE fpga_flash_boot_id[] = {'Z','T','E', 'X', 'B', 'S', '\1', '\1'};

/* *********************************************************************
   ***** fpga_configure_from_flash *************************************
   ********************************************************************* */
/* 
    Configure the FPGA using a bitstream from flash.
    If force == 0 a already configured FPGA is not re-configured.
    Return values:
	0 : Configuration successful
	1 : FPGA already configured
	2 : Flash error
	3 : No bitstream found
	4 : Configuration error

    The format of the boot sector (secor 0 of the flash memeory) is
	0..7	ID, must be "ZTEXBS",1,1
	8..9	Number of used sectors, or 0 is disabled
	10..11  Number of bytes in the last sector, i.e. th total size of bitstream is ((bs[8] | (bs[9]<<8) - 1) * flash_sector_size + ((bs[10] | (bs[11]<<8)
	the rest of the sector is reserved for future use and preserved by the host software
*/

BYTE fpga_configure_from_flash( BYTE force) {
    WORD i,j,k;
    if ( force == 0 ) {
	OEA &= ~2;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	if ( IOA1 )  {			// FPGA already configured
#line 51 "d:\\ztex\\include\\ztex-fpga-flash.h"
	    IOA1 = 1;		
	    OEA |= 2;
	    return 1;
	}
    }
    {
	
    }
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    reset_fpga_flash();			// reset FPGA
#line 60 "d:\\ztex\\include\\ztex-fpga-flash.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
    // read the boot sector
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    if ( flash_read_init( 0 ) )		// prepare reading sector 0
#line 63 "d:\\ztex\\include\\ztex-fpga-flash.h"
	return 2;
    for ( i=0; i<8 && flash_read_byte()==fpga_flash_boot_id[i]; i++ );
    if ( i != 8 ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	flash_read_finish(flash_sector_size - i);	// dummy-read the rest of the sector + finish read opration
#line 67 "d:\\ztex\\include\\ztex-fpga-flash.h"
	return 3;
    }
    i = flash_read_byte();
    i |= flash_read_byte() << 8;
    j = flash_read_byte();
    j |= flash_read_byte() << 8;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    flash_read_finish(flash_sector_size - 12);		// dummy-read the rest of the sector + finish read opration
#line 74 "d:\\ztex\\include\\ztex-fpga-flash.h"
    if ( i==0 )
	return 3;

#line 31 "d:\\ztex\\include\\ztex-conf.h"
    // read the bitstream
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    if ( flash_read_init( 1 ) )			// prepare reading sector 1
#line 79 "d:\\ztex\\include\\ztex-fpga-flash.h"
        return 2;
    for ( k=1; k<i; k++ ) {
	fpga_send_bitstream_from_flash( flash_sector_size );
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	if ( flash_read_next() )		// prepare reading next sector
#line 83 "d:\\ztex\\include\\ztex-fpga-flash.h"
    	    return 2;
    }
    fpga_send_bitstream_from_flash( j );
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    flash_read_finish(flash_sector_size - j);	// finish read opration
#line 87 "d:\\ztex\\include\\ztex-fpga-flash.h"
    
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    finish_fpga_configuration();		// finish the FPGA configuration
#line 89 "d:\\ztex\\include\\ztex-fpga-flash.h"

    OEA &= ~2;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    if ( IOA1 )  {				// FPGA configured
#line 92 "d:\\ztex\\include\\ztex-fpga-flash.h"
	IOA1 = 1;		
	OEA |= 2;
	return 0;
    }
    
    IOA1 = 1;		
    OEA |= 2;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    return 4;					// FPGA not configured correctly
#line 100 "d:\\ztex\\include\\ztex-fpga-flash.h"
}

/* *********************************************************************
   ***** fpga_first_free_sector ****************************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// First free sector. Returns 0 if no boot sector exeists.   
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// Use the macro FLASH_FIRST_FREE_SECTOR instead of this function.
#line 108 "d:\\ztex\\include\\ztex-fpga-flash.h"
WORD fpga_first_free_sector() {
    BYTE i,j;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    flash_read_init( 0 ); 				// prepare reading sector 0
#line 111 "d:\\ztex\\include\\ztex-fpga-flash.h"
    for ( i=0; i<8 && flash_read_byte()==fpga_flash_boot_id[i]; i++ );
    if ( i != 8 ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	flash_read_finish(flash_sector_size - i);	// dummy-read the rest of the sector + finish read opration
#line 114 "d:\\ztex\\include\\ztex-fpga-flash.h"
	return 0;
    }
    i=flash_read_byte();
    j=flash_read_byte();
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    flash_read_finish(flash_sector_size - 10);		// dummy-read the rest of the sector + finish read opration
#line 119 "d:\\ztex\\include\\ztex-fpga-flash.h"
    
    return (i | (j<<8))+1;
}


/* *********************************************************************
   ***** fpga_configure_from_flash_init ********************************
   ********************************************************************* */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
// this function is colled by init_USB;
#line 128 "d:\\ztex\\include\\ztex-fpga-flash.h"
void fpga_configure_from_flash_init() {
    if ( ! flash_enabled ) {
        fpga_flash_result = 2;
        return;
    }

    fpga_flash_result = fpga_configure_from_flash(0);
    if ( fpga_flash_result == 1 ) {
    	post_fpga_config();
    }
    else if ( fpga_flash_result == 4 ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	fpga_flash_result = fpga_configure_from_flash(0);	// up to two tries
#line 140 "d:\\ztex\\include\\ztex-fpga-flash.h"
    }
}    


#line 287 "d:\\ztex\\include\\ztex-fpga3.h"

#line 293 "d:\\ztex\\include\\ztex-fpga3.h"

#line 149 "d:\\ztex\\include\\ztex.h"

#line 155 "d:\\ztex\\include\\ztex.h"


/* *********************************************************************
   ***** DEBUG helper functions ****************************************
   ********************************************************************* */
#line 163 "d:\\ztex\\include\\ztex.h"


/* *********************************************************************
   ***** XMEGA support *************************************************
   ********************************************************************* */
#line 169 "d:\\ztex\\include\\ztex.h"

#line 176 "d:\\ztex\\include\\ztex.h"

#line 191 "d:\\ztex\\include\\ztex.h"

#line 193 "d:\\ztex\\include\\ztex.h"

/* *********************************************************************
   ***** define the descriptors ****************************************
   ********************************************************************* */
#line 1 "d:\\ztex\\include\\ztex-descriptors.h"
/*!
   ZTEX Firmware Kit for EZ-USB FX2 Microcontrollers
   Copyright (C) 2009-2011 ZTEX GmbH.
   http://www.ztex.de

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License version 3 as
   published by the Free Software Foundation.

   This program is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, see http://www.gnu.org/licenses/.
!*/

/* 
   Defines the USB descriptors
*/

#line 25 "d:\\ztex\\include\\ztex-descriptors.h"

#line 28 "d:\\ztex\\include\\ztex-descriptors.h"

__xdata __at 0x06c BYTE ZTEX_DESCRIPTOR;

/* ZTEX descriptor version. Must be 1. */
__xdata __at 0x06c+1 BYTE ZTEX_DESCRIPTOR_VERSION;

/* Must not be modified, ID="ZTEX" */
__xdata __at 0x06c+2 BYTE ZTEXID[4];  

/* 
   Product ID and firmware compatibility information. 
   
   A firmware can overwrite an installed one if
   if ( INSTALLED.PRODUCTID[0]==0 || PRODUCTID[0]==0 || INSTALLED.PRODUCTID[0]==PRODUCTID[0] ) &&
      ( INSTALLED.PRODUCTID[1]==0 || PRODUCTID[1]==0 || INSTALLED.PRODUCTID[1]==PRODUCTID[1] ) &&
      ( INSTALLED.PRODUCTID[2]==0 || PRODUCTID[2]==0 || INSTALLED.PRODUCTID[2]==PRODUCTID[2] ) &&
      ( INSTALLED.PRODUCTID[3]==0 || PRODUCTID[3]==0 || INSTALLED.PRODUCTID[3]==PRODUCTID[3] ) 

   Reserved Product ID's:
   
   0.0.0.0		// default Product ID (no product specified)
   1.*.*.*   		// may be used for experimental purposes
   10.*.*.*		// used for ZTEX products
   10.11.*.*		// ZTEX USB-FPGA-Module 1.2
   10.12.*.*		// ZTEX USB-FPGA-Module 1.11
   10.12.2.1..4		// NIT (http://www.niteurope.com/)
   10.13.*.*		// ZTEX USB-FPGA-Module 1.15 (not 1.15y)
   10.14.*.*		// ZTEX USB-FPGA-Module 1.15x
   10.15.*.*		// ZTEX USB-FPGA-Module 1.15y
   10.20.*.*		// ZTEX USB-Module 1.0
   10.30.*.*		// ZTEX USB-XMEGA-Module 1.0
   10.0.1.1		// ZTEX bitminer firmware
   
   Please contact us (http://www.ztex.de/contact.e.html) if you want to register/reserve a Product ID (range).
*/
__xdata __at 0x06c+6 BYTE PRODUCT_ID[4];  

/* Firmware version, may be used to distinguish seveveral firmware versions */
__xdata __at 0x06c+10 BYTE FW_VERSION;  

/* Interface version. Must be 1. */
__xdata __at 0x06c+11 BYTE INTERFACE_VERSION;

/* 
    Standard interface capabilities:
	0.0  : EEPROM read/write, see ztex-eeprom.h
	0.1  : FPGA configuration, see ztex-fpga.h
	0.2  : Flash memory support, see ztex-flash1.h
	0.3  : Debug helper, see ztex-debug.h
	0.4  : AVR XMEGA support, see ztex-xmega.h
	0.5  : High speed FPGA configuration support
	0.6  : MAC EEPROM support
	0.7  : Multi-FPGA support
	1.0  : Temperature sensor support 
*/
__xdata __at 0x06c+12 BYTE INTERFACE_CAPABILITIES[6];

/* Space for settings which depends on PRODUCT_ID, e.g extra capabilities */
__xdata __at 0x06c+18 BYTE MODULE_RESERVED[12];

/* 
   Serial number string 
   default: "0000000000"
   Should only be modified by the the firmware upload software 
*/
__xdata __at 0x06c+30 BYTE SN_STRING[10];

/* Are Vendor ID and Product ID defined? */
#line 99 "d:\\ztex\\include\\ztex-descriptors.h"

#line 103 "d:\\ztex\\include\\ztex-descriptors.h"

/* Prepare the Interfaces, i.e. check which interfaces are defined */
#line 120 "d:\\ztex\\include\\ztex-descriptors.h"

#line 105 "d:\\ztex\\include\\ztex-descriptors.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
//Interface 0: YES
#line 105 "d:\\ztex\\include\\ztex-descriptors.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
//Interface 1: NO
#line 105 "d:\\ztex\\include\\ztex-descriptors.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
//Interface 2: NO
#line 105 "d:\\ztex\\include\\ztex-descriptors.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
//Interface 3: NO
#line 125 "d:\\ztex\\include\\ztex-descriptors.h"

/* define the ZTEX descriptor */
#line 31 "d:\\ztex\\include\\ztex-conf.h"
void abscode_identity()// _naked
#line 128 "d:\\ztex\\include\\ztex-descriptors.h"
{
    __asm	
    .area ABSCODE (ABS,CODE)

    .org 0x06c
    .db 40

    .org _ZTEX_DESCRIPTOR_VERSION
    .db 1

    .org _ZTEXID
    .ascii "ZTEX"

    .org _PRODUCT_ID
    .db 10
    .db 12
    .db 0
    .db 0

    .org _FW_VERSION
    .db 0

    .org _INTERFACE_VERSION
    .db 1

    .org _INTERFACE_CAPABILITIES
#line 165 "d:\\ztex\\include\\ztex-descriptors.h"
    .db 0 + 1 + 2 + 4
#line 187 "d:\\ztex\\include\\ztex-descriptors.h"
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0

    .org _MODULE_RESERVED
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0

    .org _SN_STRING
    .ascii "0000000000"

    .area CSEG    (CODE)
    __endasm;
}    

/* *********************************************************************
   ***** strings *******************************************************
   ********************************************************************* */
__code char manufacturerString[] = "ZTEX";
__code char productString[] = "USB_Test UFM 1.11";
__code char configurationString[] = "default";


/* *********************************************************************
   ***** descriptors ***************************************************
   ********************************************************************* */
#line 267 "d:\\ztex\\include\\ztex-descriptors.h"
   
#line 331 "d:\\ztex\\include\\ztex-descriptors.h"

#line 333 "d:\\ztex\\include\\ztex-descriptors.h"

#line 335 "d:\\ztex\\include\\ztex-descriptors.h"
__code BYTE PadByte = 0;
#line 337 "d:\\ztex\\include\\ztex-descriptors.h"

__code BYTE DeviceDescriptor[] = 
    {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	18, 	// 0, Descriptor length
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	0x01,	// 1, Descriptor type
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	0x00,	// 2, Specification Version (L)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	0x02,	// 3, Specification Version (H)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	0xff,	// 4, Device class
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	0xff,	// 5, Device sub-class
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	0xff,	// 6, Device protocol
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	64,	// 7, Maximum packet size for EP0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	(0x221a) & 255,	// 8, VENDOR_ID (L)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	(0x221a) >> 8,	// 9, VENDOR_ID (H)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	(0x100) & 255,	// 10, PRODUCT_ID (L)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	(0x100) >> 8,	// 11, PRODUCT_ID (H)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	0x00,   // 12, device release number (BCD, L)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	0x00,   // 13, device release number (BCD, H)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	1,	// 14, Manufacturer string index
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	2,	// 15, Product string index
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	3,	// 16, Serial number string index
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	1	// 17, Number of configurations
#line 358 "d:\\ztex\\include\\ztex-descriptors.h"
    };
    
__code BYTE DeviceQualifierDescriptor[] =
    {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	10, 	// 0, Descriptor length
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	0x06,	// 1, Decriptor type
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	0x00,	// 2, Specification Version (L)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	0x02,	// 3, Specification Version (H)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	0xff,	// 4, Device class
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	0xff,	// 5, Device sub-class
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	0xff,	// 6, Device protocol
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	64,	// 7, Maximum packet size (EP0?)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	1,	// 8, Number of configurations
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	0,	// 9, Reserved, must be zero
#line 372 "d:\\ztex\\include\\ztex-descriptors.h"
    };

__code BYTE HighSpeedConfigDescriptor[] = 
    {   
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	9	// 0, Descriptor length
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0x02	// 1, Decriptor type
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,sizeof(HighSpeedConfigDescriptor) & 0xff	// 2, Total length (LSB)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
//	,sizeof(HighSpeedConfigDescriptor) >> 8		// 3, Total length (MB)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0						// 3, To avoid warnings, descriptor length will never exceed 255 bytes
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0	// 4, Number of Interfaces
#line 384 "d:\\ztex\\include\\ztex-descriptors.h"
	  +1
#line 395 "d:\\ztex\\include\\ztex-descriptors.h"
	
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,1	// 5, Configuration number
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,4	// 6, Configuration string
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0xc0	// 7, Attributes: bus and self powered
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,50	// Maximum bus power 100 mA
#line 268 "d:\\ztex\\include\\ztex-descriptors.h"
	
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		// Interface 0 descriptor
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,9	// 0, Descriptor length
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0x04	// 1, Descriptor type
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0	// 2, Zero-based index of this interface
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0	// 3, Alternate setting	0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0	// 4, Number of end points 
#line 291 "d:\\ztex\\include\\ztex-descriptors.h"
	  +1
#line 294 "d:\\ztex\\include\\ztex-descriptors.h"
	  +1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0xff	// 5, Interface class
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0xff	// 6, Interface sub class
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0xff   // 7, Interface protocol
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0 	// 8, Index of interface string descriptor
#line 225 "d:\\ztex\\include\\ztex-descriptors.h"
	 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
				// Endpoint 1IN descriptor
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,7 			// 0, Descriptor length
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,5			// 1, Descriptor type
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0x81			// 2, direction=output, address=1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,2			// 3, BULK transferns
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,512 & 0xff 	// 4, max. packet size (L) 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,512 >> 8 	// 5, max. packet size (H) 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0 			// 6, Polling interval
#line 313 "d:\\ztex\\include\\ztex-descriptors.h"

#line 225 "d:\\ztex\\include\\ztex-descriptors.h"
	 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
				// Endpoint 1OUT descriptor
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,7 			// 0, Descriptor length
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,5			// 1, Descriptor type
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0x01			// 2, direction=output, address=1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,2			// 3, BULK transferns
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,512 & 0xff 	// 4, max. packet size (L) 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,512 >> 8 	// 5, max. packet size (H) 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0 			// 6, Polling interval
#line 316 "d:\\ztex\\include\\ztex-descriptors.h"

#line 401 "d:\\ztex\\include\\ztex-descriptors.h"

#line 413 "d:\\ztex\\include\\ztex-descriptors.h"
    };
__code BYTE HighSpeedConfigDescriptor_PadByte[2-(sizeof(HighSpeedConfigDescriptor) & 1)] = { 0 };

__code BYTE FullSpeedConfigDescriptor[] = 
    {   
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	9 	// 0, Descriptor length
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0x02	// 1, Decriptor type
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,sizeof(FullSpeedConfigDescriptor) & 0xff	// 2, Total length (LSB)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
//	,sizeof(FullSpeedConfigDescriptor) >> 8		// 3, Total length (MSB)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0						// 3, To avoid warnings, descriptor length will never exceed 255 bytes
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0	// 4, Number of Interfaces
#line 425 "d:\\ztex\\include\\ztex-descriptors.h"
	  +1
#line 436 "d:\\ztex\\include\\ztex-descriptors.h"
	
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,1	// 5, Configuration number
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,4	// 6, Configuration string
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0xc0	// 7, Attributes: bus and self powered
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,50	// Maximum bus power 100 mA
#line 268 "d:\\ztex\\include\\ztex-descriptors.h"
	
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		// Interface 0 descriptor
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,9	// 0, Descriptor length
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0x04	// 1, Descriptor type
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0	// 2, Zero-based index of this interface
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0	// 3, Alternate setting	0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0	// 4, Number of end points 
#line 291 "d:\\ztex\\include\\ztex-descriptors.h"
	  +1
#line 294 "d:\\ztex\\include\\ztex-descriptors.h"
	  +1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0xff	// 5, Interface class
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0xff	// 6, Interface sub class
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0xff   // 7, Interface protocol
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0 	// 8, Index of interface string descriptor
#line 225 "d:\\ztex\\include\\ztex-descriptors.h"
	 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
				// Endpoint 1IN descriptor
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,7 			// 0, Descriptor length
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,5			// 1, Descriptor type
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0x81			// 2, direction=output, address=1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,2			// 3, BULK transferns
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,64			// 4, max. packet size (L) 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0 			// 5, max. packet size (H) 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0 			// 6, Polling interval
#line 313 "d:\\ztex\\include\\ztex-descriptors.h"

#line 225 "d:\\ztex\\include\\ztex-descriptors.h"
	 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
				// Endpoint 1OUT descriptor
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,7 			// 0, Descriptor length
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,5			// 1, Descriptor type
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0x01			// 2, direction=output, address=1
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,2			// 3, BULK transferns
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,64			// 4, max. packet size (L) 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0 			// 5, max. packet size (H) 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	,0 			// 6, Polling interval
#line 316 "d:\\ztex\\include\\ztex-descriptors.h"

#line 442 "d:\\ztex\\include\\ztex-descriptors.h"

#line 453 "d:\\ztex\\include\\ztex-descriptors.h"
    };
__code BYTE FullSpeedConfigDescriptor_PadByte[2-(sizeof(FullSpeedConfigDescriptor) & 1)] = { 0 };

__code BYTE EmptyStringDescriptor[] = 
    {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	sizeof(EmptyStringDescriptor),  	// Length
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	0x03,					// Descriptor type
#line 460 "d:\\ztex\\include\\ztex-descriptors.h"
	0, 0
    };

#line 197 "d:\\ztex\\include\\ztex.h"



/* *********************************************************************
   ***** Temperature sensor support ************************************
   ********************************************************************* */
#line 208 "d:\\ztex\\include\\ztex.h"

#line 211 "d:\\ztex\\include\\ztex.h"


/* *********************************************************************
   ***** interrupt routines ********************************************
   ********************************************************************* */
#line 1 "d:\\ztex\\include\\ztex-isr.h"
/*!
   ZTEX Firmware Kit for EZ-USB FX2 Microcontrollers
   Copyright (C) 2009-2011 ZTEX GmbH.
   http://www.ztex.de

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License version 3 as
   published by the Free Software Foundation.

   This program is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, see http://www.gnu.org/licenses/.
!*/

/* 
   Interrupt routines
*/

#line 25 "d:\\ztex\\include\\ztex-isr.h"

__xdata BYTE ep0_prev_setup_request = 0xff;
__xdata BYTE ep0_vendor_cmd_setup = 0;

#line 31 "d:\\ztex\\include\\ztex-conf.h"
__xdata WORD ISOFRAME_COUNTER[4] = {0, 0, 0, 0}; 	// counters for iso frames automatically reset by sync frame request
#line 30 "d:\\ztex\\include\\ztex-isr.h"

/* *********************************************************************
   ***** toggleData ****************************************************
   ********************************************************************* */
static void resetToggleData () {
#line 44 "d:\\ztex\\include\\ztex-isr.h"

#line 31 "d:\\ztex\\include\\ztex-conf.h"
    TOGCTL = 0;				// EP0 out
#line 46 "d:\\ztex\\include\\ztex-isr.h"
    TOGCTL = 0 | 32;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    TOGCTL = 0x10;			// EP0 in
#line 48 "d:\\ztex\\include\\ztex-isr.h"
    TOGCTL = 0x10 | 32;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    TOGCTL = 1;				// EP1 out
#line 51 "d:\\ztex\\include\\ztex-isr.h"
    TOGCTL = 1 | 32;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    TOGCTL = 0x11;			// EP1 in
#line 55 "d:\\ztex\\include\\ztex-isr.h"
    TOGCTL = 0x11 | 32;
#line 35 "d:\\ztex\\include\\ztex-isr.h"
    
#line 35 "d:\\ztex\\include\\ztex-isr.h"
    
#line 35 "d:\\ztex\\include\\ztex-isr.h"
    
#line 35 "d:\\ztex\\include\\ztex-isr.h"
    
#line 61 "d:\\ztex\\include\\ztex-isr.h"
}

/* *********************************************************************
   ***** getStringDescriptor *******************************************
   ********************************************************************* */
#line 67 "d:\\ztex\\include\\ztex-isr.h"

static void sendStringDescriptor (BYTE loAddr, BYTE hiAddr, BYTE size)
{
    BYTE i;
    if ( size > 31) size = 31;
    if (SETUPDAT[7] == 0 && SETUPDAT[6]<size ) size = SETUPDAT[6];
    AUTOPTRSETUP = 7;
    AUTOPTRL1 = loAddr;
    AUTOPTRH1 = hiAddr;
    AUTOPTRL2 = (BYTE)(((unsigned short)(&EP0BUF))+1);
    AUTOPTRH2 = (BYTE)((((unsigned short)(&EP0BUF))+1) >> 8);
    XAUTODAT2 = 3;
    for (i=0; i<size; i++) {
	XAUTODAT2 = XAUTODAT1;
	XAUTODAT2 = 0;
    }
    i = (size+1) << 1;
    EP0BUF[0] = i;
    EP0BUF[1] = 3;
    EP0BCH = 0;
    EP0BCL = i;
}

/* *********************************************************************
   ***** ep0_payload_update ********************************************
   ********************************************************************* */
static void ep0_payload_update() {
    ep0_payload_transfer = ( ep0_payload_remaining > 64 ) ? 64 : ep0_payload_remaining;
    ep0_payload_remaining -= ep0_payload_transfer;
}


/* *********************************************************************
   ***** ep0_vendor_cmd_su **********************************************
   ********************************************************************* */
static void ep0_vendor_cmd_su() {
    switch ( ep0_prev_setup_request ) {
#line 122 "d:\\ztex\\include\\ztex-conf.h"
	
case 0x00:			
#line 129 "usb-test.c"
    
        while (IOC1 == 0);
        receiveLen();
#line 124 "d:\\ztex\\include\\ztex-conf.h"
        
    break;
#line 122 "d:\\ztex\\include\\ztex-conf.h"

case 0x02:			
#line 147 "usb-test.c"
    
        receiveLen();
#line 124 "d:\\ztex\\include\\ztex-conf.h"
        
    break;
#line 122 "d:\\ztex\\include\\ztex-conf.h"

case 0x04:			
#line 164 "usb-test.c"
    
        receiveLen();
#line 124 "d:\\ztex\\include\\ztex-conf.h"
        
    break;
#line 122 "d:\\ztex\\include\\ztex-conf.h"

case 0x39:			
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    				// write to EEPROM
#line 233 "d:\\ztex\\include\\ztex-eeprom.h"
    eeprom_write_checksum = 0;
    eeprom_write_bytes = 0;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    eeprom_addr =  ( SETUPDAT[3] << 8) | SETUPDAT[2];	// Address
#line 124 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 122 "d:\\ztex\\include\\ztex-conf.h"

case 0x42:			
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    			// write integer number of sectors
#line 1201 "d:\\ztex\\include\\ztex-flash1.h"
    if ( (IOC & 32) == 0 ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	flash_ec = 4;		// we interrupted a pending Flash operation
#line 136 "d:\\ztex\\include\\ztex-conf.h"
	{
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EP0CS |= 0x01;	// set stall
#line 138 "d:\\ztex\\include\\ztex-conf.h"
    ep0_payload_remaining = 0;
    break;
#line 1203 "d:\\ztex\\include\\ztex-flash1.h"
}
    } 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    if ( mmc_select() ) {			// select the card
#line 1206 "d:\\ztex\\include\\ztex-flash1.h"
	mmc_deselect();
#line 136 "d:\\ztex\\include\\ztex-conf.h"
	{
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EP0CS |= 0x01;	// set stall
#line 138 "d:\\ztex\\include\\ztex-conf.h"
    ep0_payload_remaining = 0;
    break;
#line 1207 "d:\\ztex\\include\\ztex-flash1.h"
}
    }
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 1210 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 25;
    mmc_buffer[0] = 25 | 64;
    if ( mmc_version == 0 ) {
__asm
    clr c
    mov	dptr,#(_SETUPDAT + 2)
    movx a,@dptr
    mov	dptr,#(_mmc_buffer + 3)
    rlc a
    movx @dptr,a

    mov	dptr,#(_SETUPDAT + 3)
    movx a,@dptr
    mov	dptr,#(_mmc_buffer + 2)
    rlc a
    movx @dptr,a

    mov	dptr,#(_SETUPDAT + 4)
    movx a,@dptr
    mov	dptr,#(_mmc_buffer + 1)
    rlc a
    movx @dptr,a
__endasm;
	mmc_buffer[4] = 0;
    }
    else {
	mmc_buffer[1] = SETUPDAT[5];
	mmc_buffer[2] = SETUPDAT[4];
	mmc_buffer[3] = SETUPDAT[3];
	mmc_buffer[4] = SETUPDAT[2];
    }

    mmc_buffer[5] = 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
    if ( mmc_response != 0 ) {
	flash_ec = 1; 
	mmc_deselect();
#line 136 "d:\\ztex\\include\\ztex-conf.h"
	{
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EP0CS |= 0x01;	// set stall
#line 138 "d:\\ztex\\include\\ztex-conf.h"
    ep0_payload_remaining = 0;
    break;
#line 1248 "d:\\ztex\\include\\ztex-flash1.h"
}
    }	

    IOC |= 128;				
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// send one dummy byte
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    flash_write_byte( 0xfc );			// send the start byte
#line 1254 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_ep0_wait = 0;
#line 124 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 122 "d:\\ztex\\include\\ztex-conf.h"

case 0x31:			
    init_fpga_configuration();
    break;
#line 122 "d:\\ztex\\include\\ztex-conf.h"

case 0x32:			
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    		// send FPGA configuration data
#line 124 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 104 "d:\\ztex\\include\\ztex-isr.h"

	default:
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    	    EP0CS |= 0x01;			// set stall, unknown request
#line 107 "d:\\ztex\\include\\ztex-isr.h"
    }
}

/* *********************************************************************
   ***** SUDAV_ISR *****************************************************
   ********************************************************************* */
static void SUDAV_ISR () __interrupt
{
    BYTE a;
    ep0_prev_setup_request = bRequest;
    SUDPTRCTL = 1;
    
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    // standard USB requests
#line 120 "d:\\ztex\\include\\ztex-isr.h"
    switch ( bRequest ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	case 0x00:	// get status 
#line 122 "d:\\ztex\\include\\ztex-isr.h"
    	    switch(SETUPDAT[0]) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		case 0x80:  		// self powered and remote 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		    EP0BUF[0] = 0;	// not self-powered, no remote wakeup
#line 125 "d:\\ztex\\include\\ztex-isr.h"
		    EP0BUF[1] = 0;
		    EP0BCH = 0;
		    EP0BCL = 2;
		    break;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		case 0x81:		// interface (reserved)
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		    EP0BUF[0] = 0; 	// always return zeros
#line 131 "d:\\ztex\\include\\ztex-isr.h"
		    EP0BUF[1] = 0;
		    EP0BCH = 0;
		    EP0BCL = 2;
		    break;
		case 0x82:	
		    switch ( SETUPDAT[4] ) {
			case 0x00 :
			case 0x80 :
			    EP0BUF[0] = EP0CS & 1;
			    break;
			case 0x01 :
			    EP0BUF[0] = EP1OUTCS & 1;
			    break;
			case 0x81 :
			    EP0BUF[0] = EP1INCS & 1;
			    break;
			default:
			    EP0BUF[0] = EPXCS[ ((SETUPDAT[4] >> 1)-1) & 3 ] & 1;
			    break;
			}
		    EP0BUF[1] = 0;
		    EP0BCH = 0;
		    EP0BCL = 2;
		    break;
	    }
	    break;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	case 0x01:	// disable feature, e.g. remote wake, stall bit
#line 158 "d:\\ztex\\include\\ztex-isr.h"
	    if ( SETUPDAT[0] == 2 && SETUPDAT[2] == 0 ) {
		switch ( SETUPDAT[4] ) {
		    case 0x00 :
		    case 0x80 :
			EP0CS &= ~1;
			break;
		    case 0x01 :
			EP1OUTCS &= ~1;
			break;
		    case 0x81 :
		         EP1INCS &= ~1;
			break;
		    default:
			 EPXCS[ ((SETUPDAT[4] >> 1)-1) & 3 ] &= ~1;
			break;
		} 
	    }
	    break;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	case 0x03:      // enable feature, e.g. remote wake, test mode, stall bit
#line 177 "d:\\ztex\\include\\ztex-isr.h"
	    if ( SETUPDAT[0] == 2 && SETUPDAT[2] == 0 ) {
		switch ( SETUPDAT[4] ) {
		    case 0x00 :
		    case 0x80 :
			EP0CS |= 1;
			break;
		    case 0x01 :
			EP1OUTCS |= 1;
			break;
		    case 0x81 :
		         EP1INCS |= 1;
			break;
		    default:
			 EPXCS[ ((SETUPDAT[4] >> 1)-1) & 3 ] |= ~1;
			break;
		}
		a = ( (SETUPDAT[4] & 0x80) >> 3 ) | (SETUPDAT[4] & 0x0f);
		TOGCTL = a;
		TOGCTL = a | 32;
	    } 
	    break;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	case 0x06:			// get descriptor
#line 199 "d:\\ztex\\include\\ztex-isr.h"
	    switch(SETUPDAT[3]) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		case 0x01:		// device
#line 201 "d:\\ztex\\include\\ztex-isr.h"
		    SUDPTRH = ((BYTE)((((unsigned short)(&DeviceDescriptor)) >> 8) & 0xff)) ;
		    SUDPTRL = ((BYTE)(&DeviceDescriptor));
		    break;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		case 0x02: 		// configuration
#line 205 "d:\\ztex\\include\\ztex-isr.h"
		    if (USBCS & 128) {
    	    	        SUDPTRH = ((BYTE)((((unsigned short)(&HighSpeedConfigDescriptor)) >> 8) & 0xff)) ;
			SUDPTRL = ((BYTE)(&HighSpeedConfigDescriptor));
		    }
		    else {
    	    	        SUDPTRH = ((BYTE)((((unsigned short)(&FullSpeedConfigDescriptor)) >> 8) & 0xff)) ;
			SUDPTRL = ((BYTE)(&FullSpeedConfigDescriptor));
		    }
		    break; 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		case 0x03:		// strings
#line 215 "d:\\ztex\\include\\ztex-isr.h"
		    switch (SETUPDAT[2]) {
			case 1:
			    sendStringDescriptor(((BYTE)(manufacturerString)), ((BYTE)((((unsigned short)(manufacturerString)) >> 8) & 0xff)) , sizeof(manufacturerString) );
			    break;
			case 2:
			    sendStringDescriptor(((BYTE)(productString)), ((BYTE)((((unsigned short)(productString)) >> 8) & 0xff)) , sizeof(productString) );
			    break;
			case 3:
			    sendStringDescriptor(((BYTE)(SN_STRING)), ((BYTE)((((unsigned short)(SN_STRING)) >> 8) & 0xff)) , sizeof(SN_STRING) );
			    break;
			case 4:
			    sendStringDescriptor(((BYTE)(configurationString)), ((BYTE)((((unsigned short)(configurationString)) >> 8) & 0xff)) , sizeof(configurationString) );
			    break; 
			default:
			    SUDPTRH = ((BYTE)((((unsigned short)(&EmptyStringDescriptor)) >> 8) & 0xff)) ;
			    SUDPTRL = ((BYTE)(&EmptyStringDescriptor));
			    break;
			}	
		    break;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		case 0x06:		// device qualifier
#line 235 "d:\\ztex\\include\\ztex-isr.h"
		    SUDPTRH = ((BYTE)((((unsigned short)(&DeviceQualifierDescriptor)) >> 8) & 0xff)) ;
		    SUDPTRL = ((BYTE)(&DeviceQualifierDescriptor));
		    break;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		case 0x07: 		// other speed configuration
#line 239 "d:\\ztex\\include\\ztex-isr.h"
		    if (USBCS & 128) {
    	    	        SUDPTRH = ((BYTE)((((unsigned short)(&FullSpeedConfigDescriptor)) >> 8) & 0xff)) ;
			SUDPTRL = ((BYTE)(&FullSpeedConfigDescriptor));
		    }
		    else {
    	    	        SUDPTRH = ((BYTE)((((unsigned short)(&HighSpeedConfigDescriptor)) >> 8) & 0xff)) ;
			SUDPTRL = ((BYTE)(&HighSpeedConfigDescriptor));
		    }
		    break; 
		default:
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		    EP0CS |= 0x01;	// set stall, unknown descriptor
#line 250 "d:\\ztex\\include\\ztex-isr.h"
	    }
	    break;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	case 0x07:			// set descriptor
#line 253 "d:\\ztex\\include\\ztex-isr.h"
	    break;			
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	case 0x08:			// get configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	    EP0BUF[0] = 0;		// only one configuration
#line 256 "d:\\ztex\\include\\ztex-isr.h"
	    EP0BCH = 0;
	    EP0BCL = 1;
	    break;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	case 0x09:			// set configuration
#line 260 "d:\\ztex\\include\\ztex-isr.h"
	    resetToggleData();
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	    break;			// do nothing since we have only one configuration
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	case 0x0a:			// get alternate setting for an interface
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	    EP0BUF[0] = 0;		// only one alternate setting
#line 264 "d:\\ztex\\include\\ztex-isr.h"
	    EP0BCH = 0;
	    EP0BCL = 1;
	    break;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	case 0x0b:			// set alternate setting for an interface
#line 268 "d:\\ztex\\include\\ztex-isr.h"
	    resetToggleData();
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	    break;			// do nothing since we have only on alternate setting
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	case 0x0c:			// sync frame
#line 271 "d:\\ztex\\include\\ztex-isr.h"
	    if ( SETUPDAT[0] == 0x82 ) {
		ISOFRAME_COUNTER[ ((SETUPDAT[4] >> 1)-1) & 3 ] = 0;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		EP0BUF[0] = USBFRAMEL;	// use current frame as sync frame, i hope that works
#line 274 "d:\\ztex\\include\\ztex-isr.h"
		EP0BUF[1] = USBFRAMEH;	
		EP0BCH = 0;
    		EP0BCL = 2;
	    }
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	    break;			// do nothing since we have only on alternate setting
#line 279 "d:\\ztex\\include\\ztex-isr.h"
	    
    }

#line 31 "d:\\ztex\\include\\ztex-conf.h"
    // vendor request and commands
#line 283 "d:\\ztex\\include\\ztex-isr.h"
    switch ( bmRequestType ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	case 0xc0: 					// vendor request 
#line 285 "d:\\ztex\\include\\ztex-isr.h"
	    ep0_payload_remaining = (SETUPDAT[7] << 8) | SETUPDAT[6];
	    ep0_payload_update();
	    
	    switch ( bRequest ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		case 0x22: 				// get ZTEX descriptor
#line 290 "d:\\ztex\\include\\ztex-isr.h"
		    SUDPTRCTL = 0;
		    EP0BCH = 0;
		    EP0BCL = 40;
		    SUDPTRH = ((BYTE)((((unsigned short)(0x06c)) >> 8) & 0xff)) ;
		    SUDPTRL = ((BYTE)(0x06c)); 
		    break;
#line 99 "d:\\ztex\\include\\ztex-conf.h"
		
case 0x01:
#line 98 "usb-test.c"
    
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        // while (FINISHED == 0);
#line 100 "usb-test.c"
        sendPwd();
#line 101 "d:\\ztex\\include\\ztex-conf.h"
        
    break;
#line 99 "d:\\ztex\\include\\ztex-conf.h"

case 0x03:
#line 115 "usb-test.c"
    
        sendStatus();
#line 101 "d:\\ztex\\include\\ztex-conf.h"
        
    break;
#line 99 "d:\\ztex\\include\\ztex-conf.h"

case 0x38:
#line 31 "d:\\ztex\\include\\ztex-conf.h"
     				// read from EEPROM
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    eeprom_addr =  (SETUPDAT[3] << 8) | SETUPDAT[2];	// Address
#line 216 "d:\\ztex\\include\\ztex-eeprom.h"
    EP0BCH = 0;
    EP0BCL = eeprom_read_ep0(); 
#line 101 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 99 "d:\\ztex\\include\\ztex-conf.h"

case 0x3A:
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    				// EEPROM state
#line 244 "d:\\ztex\\include\\ztex-eeprom.h"
    EP0BUF[0] = ((BYTE)(eeprom_write_bytes));
    EP0BUF[1] = ((BYTE)((((unsigned short)(eeprom_write_bytes)) >> 8) & 0xff)) ;
    EP0BUF[2] = eeprom_write_checksum;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EP0BUF[3] = eeprom_select(0xA2,0,1);		// 1 means busy or error
#line 248 "d:\\ztex\\include\\ztex-eeprom.h"
    EP0BCH = 0;
    EP0BCL = 4;
#line 101 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 99 "d:\\ztex\\include\\ztex-conf.h"

case 0x40:
#line 1061 "d:\\ztex\\include\\ztex-flash1.h"
    
#line 120 "d:\\ztex\\include\\ztex-utils.h"
    {
	AUTOPTRL1=((BYTE)(&(flash_enabled)));
	AUTOPTRH1=((BYTE)((((unsigned short)(&(flash_enabled)) >> 8) & 0xff)) );
	AUTOPTRL2=((BYTE)(&(EP0BUF)));
	AUTOPTRH2=((BYTE)((((unsigned short)(&(EP0BUF)) >> 8) & 0xff)) );
        __asm
		push	ar2
  		mov	r2,#(8);
		lcall 	_MEM_COPY1_int
		pop	ar2
        __endasm; 
#line 1062 "d:\\ztex\\include\\ztex-flash1.h"
}
    EP0BCH = 0;
    EP0BCL = 8;
#line 101 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 99 "d:\\ztex\\include\\ztex-conf.h"

case 0x41:
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    			// read integer number of sectotrs
#line 1098 "d:\\ztex\\include\\ztex-flash1.h"
    if ( (IOC & 32) == 0 ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	flash_ec = 4;		// we interrupted a pending Flash operation
#line 136 "d:\\ztex\\include\\ztex-conf.h"
	{
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EP0CS |= 0x01;	// set stall
#line 138 "d:\\ztex\\include\\ztex-conf.h"
    ep0_payload_remaining = 0;
    break;
#line 1100 "d:\\ztex\\include\\ztex-flash1.h"
}
    }  
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    if ( mmc_select() )	{			// select the card
#line 1103 "d:\\ztex\\include\\ztex-flash1.h"
	mmc_deselect();
#line 136 "d:\\ztex\\include\\ztex-conf.h"
	{
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EP0CS |= 0x01;	// set stall
#line 138 "d:\\ztex\\include\\ztex-conf.h"
    ep0_payload_remaining = 0;
    break;
#line 1104 "d:\\ztex\\include\\ztex-flash1.h"
}
    }
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 1107 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 18;
    mmc_buffer[0] = 18 | 64;
    if ( mmc_version == 0 ) {
__asm
    clr c
    mov	dptr,#(_SETUPDAT + 2)
    movx a,@dptr
    mov	dptr,#(_mmc_buffer + 3)
    rlc a
    movx @dptr,a

    mov	dptr,#(_SETUPDAT + 3)
    movx a,@dptr
    mov	dptr,#(_mmc_buffer + 2)
    rlc a
    movx @dptr,a

    mov	dptr,#(_SETUPDAT + 4)
    movx a,@dptr
    mov	dptr,#(_mmc_buffer + 1)
    rlc a
    movx @dptr,a
__endasm;
	mmc_buffer[4] = 0;
    }
    else {
	mmc_buffer[1] = SETUPDAT[5];
	mmc_buffer[2] = SETUPDAT[4];
	mmc_buffer[3] = SETUPDAT[3];
	mmc_buffer[4] = SETUPDAT[2];
    }
    mmc_buffer[5] = 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
    if ( mmc_response != 0 ) {
	flash_ec = 1; 
	mmc_deselect();
#line 136 "d:\\ztex\\include\\ztex-conf.h"
	{
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EP0CS |= 0x01;	// set stall
#line 138 "d:\\ztex\\include\\ztex-conf.h"
    ep0_payload_remaining = 0;
    break;
#line 1144 "d:\\ztex\\include\\ztex-flash1.h"
}
    }

    mmc_ep0_wait = 1;
    mmc_read_ep0();  
    if ( flash_ec != 0 ) {
#line 136 "d:\\ztex\\include\\ztex-conf.h"
        {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EP0CS |= 0x01;	// set stall
#line 138 "d:\\ztex\\include\\ztex-conf.h"
    ep0_payload_remaining = 0;
    break;
#line 1150 "d:\\ztex\\include\\ztex-flash1.h"
}
    } 
    EP0BCH = 0;
    EP0BCL = ep0_payload_transfer; 
#line 101 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 99 "d:\\ztex\\include\\ztex-conf.h"

case 0x43:
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    			// this may interrupt a pending operation
#line 120 "d:\\ztex\\include\\ztex-utils.h"
    {
	AUTOPTRL1=((BYTE)(&(flash_ec)));
	AUTOPTRH1=((BYTE)((((unsigned short)(&(flash_ec)) >> 8) & 0xff)) );
	AUTOPTRL2=((BYTE)(&(EP0BUF+2)));
	AUTOPTRH2=((BYTE)((((unsigned short)(&(EP0BUF+2)) >> 8) & 0xff)) );
        __asm
		push	ar2
  		mov	r2,#(20);
		lcall 	_MEM_COPY1_int
		pop	ar2
        __endasm; 
#line 1270 "d:\\ztex\\include\\ztex-flash1.h"
}	
    EP0BUF[22] = (IOD & 1) == 0;
    mmc_select();
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    {			// send a command, argument=0
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    mmc_clocks(8);				// 8 dummy clocks
#line 723 "d:\\ztex\\include\\ztex-flash1.h"
    mmc_last_cmd = 13;
    mmc_buffer[0] = 64 | (13 & 127);
    mmc_buffer[1] =  0;
    mmc_buffer[2] = 0;
    mmc_buffer[3] = 0;
    mmc_buffer[4] = 0;
    mmc_buffer[5] =  0 | 1;
    flash_write(mmc_buffer,6);
    mmc_read_response();
#line 1273 "d:\\ztex\\include\\ztex-flash1.h"
}
    EP0BUF[0] = mmc_response;
    EP0BUF[1] = flash_read_byte();
    mmc_deselect();
    EP0BCH = 0;
    EP0BCL = 23;
#line 101 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 99 "d:\\ztex\\include\\ztex-conf.h"

case 0x30:
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    		// get FPGA state
#line 120 "d:\\ztex\\include\\ztex-utils.h"
    {
	AUTOPTRL1=((BYTE)(&(fpga_checksum)));
	AUTOPTRH1=((BYTE)((((unsigned short)(&(fpga_checksum)) >> 8) & 0xff)) );
	AUTOPTRL2=((BYTE)(&(EP0BUF+1)));
	AUTOPTRH2=((BYTE)((((unsigned short)(&(EP0BUF+1)) >> 8) & 0xff)) );
        __asm
		push	ar2
  		mov	r2,#(7);
		lcall 	_MEM_COPY1_int
		pop	ar2
        __endasm; 
#line 116 "d:\\ztex\\include\\ztex-fpga3.h"
}    
    OEA &= ~2;
    if ( IOA1 )  {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	EP0BUF[0] = 0; 	 		// FPGA configured 
#line 120 "d:\\ztex\\include\\ztex-fpga3.h"
	IOA1 = 1;		
	OEA |= 2;
    }
    else {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        EP0BUF[0] = 1;			// FPGA unconfigured 
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	reset_fpga();			// prepare FPGA for configuration
#line 126 "d:\\ztex\\include\\ztex-fpga3.h"
    }
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EP0BUF[8] = 1;			// bit order for bitstream in Flash memory: swapped
#line 128 "d:\\ztex\\include\\ztex-fpga3.h"
    
    EP0BCH = 0;
    EP0BCL = 9;
#line 101 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 296 "d:\\ztex\\include\\ztex-isr.h"

		default:
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		    EP0CS |= 0x01;			// set stall, unknown request
#line 299 "d:\\ztex\\include\\ztex-isr.h"
	    }
	    break;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	case 0x40: 					// vendor command
#line 302 "d:\\ztex\\include\\ztex-isr.h"
	    /* vendor commands may overlap if they are send without pause. To avoid
	       synchronization problems the setup sequences are executed in EP0OUT_ISR, i.e.
	       after the first packet of payload data received. */
	    if ( SETUPDAT[7]!=0 || SETUPDAT[6]!=0 ) {
		ep0_vendor_cmd_setup = 1;
		EP0BCL = 0;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		EXIF &= ~16;			// clear main USB interrupt flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		USBIRQ = 1;			// clear SUADV IRQ
#line 31 "d:\\ztex\\include\\ztex-conf.h"
		return;					// don't clear HSNAK bit. This is done after the command has completed
#line 311 "d:\\ztex\\include\\ztex-isr.h"
	    }
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	    ep0_vendor_cmd_su();			// setup sequences of vendor command with no payload ara executed immediately
#line 313 "d:\\ztex\\include\\ztex-isr.h"
	    EP0BCL = 0;
	    break;
    }

#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EXIF &= ~16;					// clear main USB interrupt flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    USBIRQ = 1;					// clear SUADV IRQ
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EP0CS |= 0x80;					// clear the HSNAK bit
#line 320 "d:\\ztex\\include\\ztex-isr.h"
}

/* *********************************************************************
   ***** SOF_ISR ******************************************************* 
   ********************************************************************* */
void SOF_ISR() __interrupt
{
        EXIF &= ~16;
	USBIRQ = 2;
}

/* *********************************************************************
   ***** SUTOK_ISR ***************************************************** 
   ********************************************************************* */
void SUTOK_ISR() __interrupt 
{
        EXIF &= ~16;
	USBIRQ = 4;
}

/* *********************************************************************
   ***** SUSP_ISR ****************************************************** 
   ********************************************************************* */
void SUSP_ISR() __interrupt
{
        EXIF &= ~16;
	USBIRQ = 8;
}

/* *********************************************************************
   ***** URES_ISR ****************************************************** 
   ********************************************************************* */
void URES_ISR() __interrupt
{
        EXIF &= ~16;
	USBIRQ = 16;
}

/* *********************************************************************
   ***** HSGRANT_ISR *************************************************** 
   ********************************************************************* */
void HSGRANT_ISR() __interrupt
{
        EXIF &= ~16;
#line 31 "d:\\ztex\\include\\ztex-conf.h"
//        while ( USBIRQ & bmBIT5 )
#line 365 "d:\\ztex\\include\\ztex-isr.h"
	    USBIRQ = 32;
}        

/* *********************************************************************
   ***** EP0ACK_ISR **************************************************** 
   ********************************************************************* */
void EP0ACK_ISR() __interrupt
{
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        EXIF &= ~16;	// clear USB interrupt flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	USBIRQ = 64;	// clear EP0ACK IRQ
#line 375 "d:\\ztex\\include\\ztex-isr.h"
}

/* *********************************************************************
   ***** EP0IN_ISR *****************************************************
   ********************************************************************* */
static void EP0IN_ISR () __interrupt
{
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EUSB = 0;			// block all USB interrupts
#line 383 "d:\\ztex\\include\\ztex-isr.h"
    ep0_payload_update();
    switch ( ep0_prev_setup_request ) {
#line 104 "d:\\ztex\\include\\ztex-conf.h"
	
case 0x01:
#line 101 "usb-test.c"
    
#line 106 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 104 "d:\\ztex\\include\\ztex-conf.h"

case 0x03:
#line 117 "usb-test.c"
    
#line 106 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 104 "d:\\ztex\\include\\ztex-conf.h"

case 0x38:
#line 218 "d:\\ztex\\include\\ztex-eeprom.h"
    
    EP0BCH = 0;
    EP0BCL = eeprom_read_ep0(); 
#line 106 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 104 "d:\\ztex\\include\\ztex-conf.h"

case 0x3A:
    
    break;
#line 104 "d:\\ztex\\include\\ztex-conf.h"

case 0x40:
#line 1065 "d:\\ztex\\include\\ztex-flash1.h"
    
#line 106 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 104 "d:\\ztex\\include\\ztex-conf.h"

case 0x41:
#line 1154 "d:\\ztex\\include\\ztex-flash1.h"
    
    if ( ep0_payload_transfer != 0 ) {
	flash_ec = 0;
        mmc_read_ep0(); 
        if ( flash_ec != 0 ) {
#line 136 "d:\\ztex\\include\\ztex-conf.h"
	    {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EP0CS |= 0x01;	// set stall
#line 138 "d:\\ztex\\include\\ztex-conf.h"
    ep0_payload_remaining = 0;
    break;
#line 1159 "d:\\ztex\\include\\ztex-flash1.h"
}
	} 
    } 
    EP0BCH = 0;
    EP0BCL = ep0_payload_transfer;
#line 106 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 104 "d:\\ztex\\include\\ztex-conf.h"

case 0x43:
#line 1279 "d:\\ztex\\include\\ztex-flash1.h"
    
#line 106 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 104 "d:\\ztex\\include\\ztex-conf.h"

case 0x30:
    
    break;
#line 385 "d:\\ztex\\include\\ztex-isr.h"

	default:
	    EP0BCH = 0;
	    EP0BCL = 0;
    }
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EXIF &= ~16;		// clear USB interrupt flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EPIRQ = 1;		// clear EP0IN IRQ
#line 392 "d:\\ztex\\include\\ztex-isr.h"
    EUSB = 1;
}

/* *********************************************************************
   ***** EP0OUT_ISR ****************************************************
   ********************************************************************* */
static void EP0OUT_ISR () __interrupt
{
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EUSB = 0;			// block all USB interrupts
#line 401 "d:\\ztex\\include\\ztex-isr.h"
    if ( ep0_vendor_cmd_setup ) {
	ep0_vendor_cmd_setup = 0;
	ep0_payload_remaining = (SETUPDAT[7] << 8) | SETUPDAT[6];
	ep0_vendor_cmd_su();
    }
    
    ep0_payload_update();
    
    switch ( ep0_prev_setup_request ) {
#line 127 "d:\\ztex\\include\\ztex-conf.h"
	
case 0x00:			
#line 132 "usb-test.c"
    
        receivePassword();
#line 129 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 127 "d:\\ztex\\include\\ztex-conf.h"

case 0x02:			
#line 149 "usb-test.c"
    
        receiveEssid();
#line 129 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 127 "d:\\ztex\\include\\ztex-conf.h"

case 0x04:			
#line 166 "usb-test.c"
    
        receiveTargetKey();
#line 129 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 127 "d:\\ztex\\include\\ztex-conf.h"

case 0x39:			
#line 236 "d:\\ztex\\include\\ztex-eeprom.h"
    
    eeprom_write_ep0(EP0BCL);
#line 129 "d:\\ztex\\include\\ztex-conf.h"
    
    break;
#line 127 "d:\\ztex\\include\\ztex-conf.h"

case 0x42:			
#line 1255 "d:\\ztex\\include\\ztex-flash1.h"
    
    if ( ep0_payload_transfer != 0 ) {
	flash_ec = 0;
	mmc_send_ep0();
        if ( flash_ec != 0 ) {
#line 136 "d:\\ztex\\include\\ztex-conf.h"
	    {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EP0CS |= 0x01;	// set stall
#line 138 "d:\\ztex\\include\\ztex-conf.h"
    ep0_payload_remaining = 0;
    break;
#line 1260 "d:\\ztex\\include\\ztex-flash1.h"
}
	} 
    } 
#line 129 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 127 "d:\\ztex\\include\\ztex-conf.h"

case 0x31:			
    
    break;
#line 127 "d:\\ztex\\include\\ztex-conf.h"

case 0x32:			
#line 182 "d:\\ztex\\include\\ztex-fpga3.h"
    
    fpga_send_ep0();
#line 129 "d:\\ztex\\include\\ztex-conf.h"

    break;
#line 410 "d:\\ztex\\include\\ztex-isr.h"

    } 

    EP0BCL = 0;

#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EXIF &= ~16;		// clear main USB interrupt flag
#line 31 "d:\\ztex\\include\\ztex-conf.h"
    EPIRQ = 2;		// clear EP0OUT IRQ
#line 417 "d:\\ztex\\include\\ztex-isr.h"
    if ( ep0_payload_remaining == 0 ) {
#line 31 "d:\\ztex\\include\\ztex-conf.h"
	EP0CS |= 0x80; 		// clear the HSNAK bit
#line 419 "d:\\ztex\\include\\ztex-isr.h"
    }
    EUSB = 1;
}


/* *********************************************************************
   ***** EP1IN_ISR *****************************************************
   ********************************************************************* */
void EP1IN_ISR() __interrupt
{
    EXIF &= ~16;
    EPIRQ = 4;

}

/* *********************************************************************
   ***** EP1OUT_ISR ****************************************************
   ********************************************************************* */
void EP1OUT_ISR() __interrupt
{
    EXIF &= ~16;
    EPIRQ = 8;
}

/* *********************************************************************
   ***** EP2_ISR *******************************************************
   ********************************************************************* */
void EP2_ISR() __interrupt
{
    EXIF &= ~16;
    EPIRQ = 16;
}

/* *********************************************************************
   ***** EP4_ISR *******************************************************
   ********************************************************************* */
void EP4_ISR() __interrupt
{
    EXIF &= ~16;
    EPIRQ = 32;
}

/* *********************************************************************
   ***** EP6_ISR *******************************************************
   ********************************************************************* */
void EP6_ISR() __interrupt
{
    EXIF &= ~16;
    EPIRQ = 64;
}

/* *********************************************************************
   ***** EP8_ISR *******************************************************
   ********************************************************************* */
void EP8_ISR() __interrupt
{
    EXIF &= ~16;
    EPIRQ = 128;
}

#line 216 "d:\\ztex\\include\\ztex.h"



/* *********************************************************************
   ***** mac_eeprom_init ***********************************************
   ********************************************************************* */
#line 245 "d:\\ztex\\include\\ztex.h"


/* *********************************************************************
   ***** init_USB ******************************************************
   ********************************************************************* */
#line 276 "d:\\ztex\\include\\ztex.h"

#line 288 "d:\\ztex\\include\\ztex.h"


void init_USB ()
{
    USBCS |= 8;
    
    CPUCS = 16 | 2;
    wait(2);
    CKCON &= ~7;
    
#line 311 "d:\\ztex\\include\\ztex.h"
    IOA1 = 1;		
    OEA |= 2;
#line 319 "d:\\ztex\\include\\ztex.h"

#line 144 "d:\\ztex\\include\\ztex-fpga-flash.h"
    
fpga_flash_result= 255;
#line 320 "d:\\ztex\\include\\ztex.h"
    

    EA = 0;
    EUSB = 0;

#line 122 "d:\\ztex\\include\\ezintavecs.h"
    {
    INT8VEC_USB.op=0x02;
    INT8VEC_USB.addrH = 0x01;
    INT8VEC_USB.addrL = 0xb8;
    INTSETUP |= 8;
#line 325 "d:\\ztex\\include\\ztex.h"
}
    
#line 114 "d:\\ztex\\include\\ezintavecs.h"
    {
    INTVEC_SUDAV.op=0x02;
    INTVEC_SUDAV.addrH=((unsigned short)(& SUDAV_ISR)) >> 8;
    INTVEC_SUDAV.addrL=(unsigned short)(& SUDAV_ISR);
#line 327 "d:\\ztex\\include\\ztex.h"
}
#line 114 "d:\\ztex\\include\\ezintavecs.h"
    {
    INTVEC_SOF.op=0x02;
    INTVEC_SOF.addrH=((unsigned short)(& SOF_ISR)) >> 8;
    INTVEC_SOF.addrL=(unsigned short)(& SOF_ISR);
#line 328 "d:\\ztex\\include\\ztex.h"
}
#line 114 "d:\\ztex\\include\\ezintavecs.h"
    {
    INTVEC_SUTOK.op=0x02;
    INTVEC_SUTOK.addrH=((unsigned short)(& SUTOK_ISR)) >> 8;
    INTVEC_SUTOK.addrL=(unsigned short)(& SUTOK_ISR);
#line 329 "d:\\ztex\\include\\ztex.h"
}
#line 114 "d:\\ztex\\include\\ezintavecs.h"
    {
    INTVEC_SUSPEND.op=0x02;
    INTVEC_SUSPEND.addrH=((unsigned short)(& SUSP_ISR)) >> 8;
    INTVEC_SUSPEND.addrL=(unsigned short)(& SUSP_ISR);
#line 330 "d:\\ztex\\include\\ztex.h"
}
#line 114 "d:\\ztex\\include\\ezintavecs.h"
    {
    INTVEC_USBRESET.op=0x02;
    INTVEC_USBRESET.addrH=((unsigned short)(& URES_ISR)) >> 8;
    INTVEC_USBRESET.addrL=(unsigned short)(& URES_ISR);
#line 331 "d:\\ztex\\include\\ztex.h"
}
#line 114 "d:\\ztex\\include\\ezintavecs.h"
    {
    INTVEC_HISPEED.op=0x02;
    INTVEC_HISPEED.addrH=((unsigned short)(& HSGRANT_ISR)) >> 8;
    INTVEC_HISPEED.addrL=(unsigned short)(& HSGRANT_ISR);
#line 332 "d:\\ztex\\include\\ztex.h"
}
#line 114 "d:\\ztex\\include\\ezintavecs.h"
    {
    INTVEC_EP0ACK.op=0x02;
    INTVEC_EP0ACK.addrH=((unsigned short)(& EP0ACK_ISR)) >> 8;
    INTVEC_EP0ACK.addrL=(unsigned short)(& EP0ACK_ISR);
#line 333 "d:\\ztex\\include\\ztex.h"
}

#line 114 "d:\\ztex\\include\\ezintavecs.h"
    {
    INTVEC_EP0IN.op=0x02;
    INTVEC_EP0IN.addrH=((unsigned short)(& EP0IN_ISR)) >> 8;
    INTVEC_EP0IN.addrL=(unsigned short)(& EP0IN_ISR);
#line 335 "d:\\ztex\\include\\ztex.h"
}
#line 114 "d:\\ztex\\include\\ezintavecs.h"
    {
    INTVEC_EP0OUT.op=0x02;
    INTVEC_EP0OUT.addrH=((unsigned short)(& EP0OUT_ISR)) >> 8;
    INTVEC_EP0OUT.addrL=(unsigned short)(& EP0OUT_ISR);
#line 336 "d:\\ztex\\include\\ztex.h"
}
#line 114 "d:\\ztex\\include\\ezintavecs.h"
    {
    INTVEC_EP1IN.op=0x02;
    INTVEC_EP1IN.addrH=((unsigned short)(& EP1IN_ISR)) >> 8;
    INTVEC_EP1IN.addrL=(unsigned short)(& EP1IN_ISR);
#line 337 "d:\\ztex\\include\\ztex.h"
}
#line 114 "d:\\ztex\\include\\ezintavecs.h"
    {
    INTVEC_EP1OUT.op=0x02;
    INTVEC_EP1OUT.addrH=((unsigned short)(& EP1OUT_ISR)) >> 8;
    INTVEC_EP1OUT.addrL=(unsigned short)(& EP1OUT_ISR);
#line 338 "d:\\ztex\\include\\ztex.h"
}
#line 114 "d:\\ztex\\include\\ezintavecs.h"
    {
    INTVEC_EP2.op=0x02;
    INTVEC_EP2.addrH=((unsigned short)(& EP2_ISR)) >> 8;
    INTVEC_EP2.addrL=(unsigned short)(& EP2_ISR);
#line 339 "d:\\ztex\\include\\ztex.h"
}
#line 114 "d:\\ztex\\include\\ezintavecs.h"
    {
    INTVEC_EP4.op=0x02;
    INTVEC_EP4.addrH=((unsigned short)(& EP4_ISR)) >> 8;
    INTVEC_EP4.addrL=(unsigned short)(& EP4_ISR);
#line 340 "d:\\ztex\\include\\ztex.h"
}
#line 114 "d:\\ztex\\include\\ezintavecs.h"
    {
    INTVEC_EP6.op=0x02;
    INTVEC_EP6.addrH=((unsigned short)(& EP6_ISR)) >> 8;
    INTVEC_EP6.addrL=(unsigned short)(& EP6_ISR);
#line 341 "d:\\ztex\\include\\ztex.h"
}
#line 114 "d:\\ztex\\include\\ezintavecs.h"
    {
    INTVEC_EP8.op=0x02;
    INTVEC_EP8.addrH=((unsigned short)(& EP8_ISR)) >> 8;
    INTVEC_EP8.addrL=(unsigned short)(& EP8_ISR);
#line 342 "d:\\ztex\\include\\ztex.h"
}

    EXIF &= ~16;
    USBIRQ = 0x7f;
    USBIE |= 0x7f; 
    EPIRQ = 0xff;
    EPIE = 0xff;
    
    EUSB = 1;
    EA = 1;

#line 278 "d:\\ztex\\include\\ztex.h"
    	EP1INCFG = 128 | 32;
#line 41 "d:\\ztex\\include\\ezregs.h"
	__asm 
	nop 
	nop 
	nop 
	nop 
    __endasm;
#line 286 "d:\\ztex\\include\\ztex.h"

#line 353 "d:\\ztex\\include\\ztex.h"

#line 278 "d:\\ztex\\include\\ztex.h"
    	EP1OUTCFG = 128 | 32;
#line 41 "d:\\ztex\\include\\ezregs.h"
	__asm 
	nop 
	nop 
	nop 
	nop 
    __endasm;
#line 286 "d:\\ztex\\include\\ztex.h"

#line 354 "d:\\ztex\\include\\ztex.h"

#line 250 "d:\\ztex\\include\\ztex.h"
        EP2CFG = 
#line 256 "d:\\ztex\\include\\ztex.h"
	0
#line 273 "d:\\ztex\\include\\ztex.h"
	;
#line 41 "d:\\ztex\\include\\ezregs.h"
	__asm 
	nop 
	nop 
	nop 
	nop 
    __endasm;
#line 274 "d:\\ztex\\include\\ztex.h"

#line 355 "d:\\ztex\\include\\ztex.h"

#line 250 "d:\\ztex\\include\\ztex.h"
        EP4CFG = 
#line 256 "d:\\ztex\\include\\ztex.h"
	0
#line 273 "d:\\ztex\\include\\ztex.h"
	;
#line 41 "d:\\ztex\\include\\ezregs.h"
	__asm 
	nop 
	nop 
	nop 
	nop 
    __endasm;
#line 274 "d:\\ztex\\include\\ztex.h"

#line 356 "d:\\ztex\\include\\ztex.h"

#line 250 "d:\\ztex\\include\\ztex.h"
        EP6CFG = 
#line 256 "d:\\ztex\\include\\ztex.h"
	0
#line 273 "d:\\ztex\\include\\ztex.h"
	;
#line 41 "d:\\ztex\\include\\ezregs.h"
	__asm 
	nop 
	nop 
	nop 
	nop 
    __endasm;
#line 274 "d:\\ztex\\include\\ztex.h"

#line 357 "d:\\ztex\\include\\ztex.h"

#line 250 "d:\\ztex\\include\\ztex.h"
        EP8CFG = 
#line 256 "d:\\ztex\\include\\ztex.h"
	0
#line 273 "d:\\ztex\\include\\ztex.h"
	;
#line 41 "d:\\ztex\\include\\ezregs.h"
	__asm 
	nop 
	nop 
	nop 
	nop 
    __endasm;
#line 274 "d:\\ztex\\include\\ztex.h"

#line 358 "d:\\ztex\\include\\ztex.h"


#line 369 "d:\\ztex\\include\\ztex.h"
    
#line 371 "d:\\ztex\\include\\ztex.h"
    flash_init();
#line 374 "d:\\ztex\\include\\ztex.h"
    fpga_configure_from_flash_init();
#line 388 "d:\\ztex\\include\\ztex.h"

    USBCS |= 128 | 2;
    wait(10);
#line 31 "d:\\ztex\\include\\ztex-conf.h"
//    wait(250);
#line 392 "d:\\ztex\\include\\ztex.h"
    USBCS &= ~8;
}


#line 184 "usb-test.c"


void main(void)
{
#line 31 "d:\\ztex\\include\\ztex-conf.h"
        // init everything
#line 189 "usb-test.c"
	init_USB();
        
	while (1)
	{
	}
}
