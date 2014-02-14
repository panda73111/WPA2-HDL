
#include[ztex-conf.h]	// Loads the configuration macros, see ztex-conf.h for the available macros
#include[ztex-utils.h]	// include basic functions

// select ZTEX USB FPGA Module 1.11 as target (required for FPGA configuration)
IDENTITY_UFM_1_11(10.12.0.0,0);

// enable Flash support
ENABLE_FLASH;
ENABLE_FLASH_BITSTREAM;

// this product string is also used for identification by the host software
#define[PRODUCT_STRING]["USB_Test UFM 1.11"]

// outputs
#define[FPGA_RST][IOA5]
#define[RD_CLK][IOA2]
#define[WR_CLK][IOA3]
#define[ESSID_WR_EN][IOA4]
#define[LEN_VALID][IOA6]
#define[TARGET_KEY_WR_EN][IOA7]

// inputs
#define[FINISHED][IOC0]
#define[READY][IOC1]
#define[GOT_ESSID][IOC2]
#define[GOT_TARGET_KEY][IOC3]

// sector where the status of the password generation is stored
__xdata WORD pwdStatusSector;
__xdata BYTE generatePwds = 0;
__xdata BYTE pwd[64];
__xdata BYTE pwdLen = 0;

// this is called automatically after FPGA configuration
#define[POST_FPGA_CONFIG][POST_FPGA_CONFIG
        
        pwdStatusSector = FLASH_FIRST_FREE_SECTOR;
        
        // outputs
        OEB = 0xFF;
        OEA = bmBIT2 | bmBIT3 | bmBIT4 | bmBIT5 | bmBIT6 | bmBIT7;
        
        // RST = 0;
        // RD_CLK = 0;
        // WR_CLK = 0;
        // ESSID_WR_EN = 0;
        // LEN_VALID = 0;
        // TARGET_KEY_WR_EN = 0;
        IOA &= ~OEA; // reset all outputs
        
        // reset fpga
        FPGA_RST = 1;
        NOP;
        FPGA_RST = 0;
]

void receiveLen()
{
        IOB = SETUPDAT[2];
        LEN_VALID = 1;
        NOP;
        NOP;
        LEN_VALID = 0;
}

void receiveData()
{
        int size = EP0BCL, b;
        
        for ( b=0; b<size; b++ ) {
                IOB = EP0BUF[b];
                RD_CLK = !RD_CLK;
                NOP;
                NOP;
        }
}


// ---------------------------------------------------------------
// ---------- Senging the matching password to the host ----------
// ---------------------------------------------------------------
void sendPwd()
{
        BYTE b, len;
        len = IOD;
        for ( b=0; b<len; b++ ) {
                WR_CLK = !WR_CLK;
                EP0BUF[b] = IOD;
                NOP;
                NOP;
        }
        EP0BCH = 0;
        EP0BCL = len;
        ep0_payload_remaining = 0;
}

ADD_EP0_VENDOR_REQUEST((0x01,,
        // while (FINISHED == 0);
        sendPwd();
        ,,
));;


// ------------------------------------------------------------
// ---------- Senging the current status to the host ----------
// ------------------------------------------------------------
void sendStatus()
{
        EP0BUF[0] = IOC;
        EP0BCH = 0;
        EP0BCL = 1;
}

ADD_EP0_VENDOR_REQUEST((0x03,,
        sendStatus();
        ,,
));;


// ---------------------------------------------------------------
// ---------- Receiving the next password from the host ----------
// ---------------------------------------------------------------
void receivePassword()
{
        receiveData();
}

ADD_EP0_VENDOR_COMMAND((0x00,,
        while (READY == 0);
        receiveLen();
        ,,
        receivePassword();
));;


// -------------------------------------------------------
// ---------- Receiving the ESSID from the host ----------
// -------------------------------------------------------
void receiveEssid()
{
        ESSID_WR_EN = 1;
        receiveData();
        ESSID_WR_EN = 0;
}

ADD_EP0_VENDOR_COMMAND((0x02,,
        receiveLen();
        ,,
        receiveEssid();
));;


// ------------------------------------------------------------
// ---------- Receiving the target key from the host ----------
// ------------------------------------------------------------
void receiveTargetKey()
{
        TARGET_KEY_WR_EN = 1;
        receiveData();
        TARGET_KEY_WR_EN = 0;
}

ADD_EP0_VENDOR_COMMAND((0x04,,
        receiveLen();
        ,,
        receiveTargetKey();
));;

// -------------------------------------------------------------
// ---------- Write the current password to the Flash ----------
// -------------------------------------------------------------
// BYTE writeCurrentPwd()
// {
        // flash_write_init(pwdStatusSector);
        // flash_write_byte(generatePwds);
        // flash_write((__xdata BYTE*) pwd, sizeof(pwd));
        // flash_write_finish_sector(flash_sector_size - (1 + sizeof(pwd)));
        // flash_write_finish();
// }


// include the main part of the firmware kit, define the descriptors, ...
#include[ztex.h]

void main(void)
{
        // init everything
	init_USB();
        
	while (1)
	{
	}
}
