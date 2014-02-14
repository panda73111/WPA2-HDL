;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.1 #8547 (Apr 26 2013) (MINGW32)
; This file was generated Sun Jun 23 19:37:30 2013
;--------------------------------------------------------
	.module usb_test_tmp
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _flash_write_PARM_2
	.globl _flash_read_PARM_2
	.globl _EmptyStringDescriptor
	.globl _FullSpeedConfigDescriptor_PadByte
	.globl _FullSpeedConfigDescriptor
	.globl _HighSpeedConfigDescriptor_PadByte
	.globl _HighSpeedConfigDescriptor
	.globl _DeviceQualifierDescriptor
	.globl _DeviceDescriptor
	.globl _PadByte
	.globl _configurationString
	.globl _productString
	.globl _manufacturerString
	.globl _fpga_flash_boot_id
	.globl _main
	.globl _init_USB
	.globl _EP8_ISR
	.globl _EP6_ISR
	.globl _EP4_ISR
	.globl _EP2_ISR
	.globl _EP1OUT_ISR
	.globl _EP1IN_ISR
	.globl _EP0ACK_ISR
	.globl _HSGRANT_ISR
	.globl _URES_ISR
	.globl _SUSP_ISR
	.globl _SUTOK_ISR
	.globl _SOF_ISR
	.globl _abscode_identity
	.globl _fpga_configure_from_flash_init
	.globl _fpga_first_free_sector
	.globl _fpga_configure_from_flash
	.globl _fpga_send_bitstream_from_flash
	.globl _fpga_send_ep0
	.globl _mmc_send_ep0
	.globl _mmc_read_ep0
	.globl _flash_init
	.globl _flash_write_next
	.globl _flash_write_finish
	.globl _flash_write_finish_sector
	.globl _flash_write_init
	.globl _flash_read_finish
	.globl _flash_read_next
	.globl _flash_read_init
	.globl _mmc_wait_start
	.globl _mmc_read_response
	.globl _mmc_deselect
	.globl _mmc_select
	.globl _mmc_wait_busy
	.globl _flash_write
	.globl _flash_write_byte
	.globl _flash_read
	.globl _flash_read_byte
	.globl _mmc_clocks
	.globl _eeprom_write_ep0
	.globl _eeprom_read_ep0
	.globl _eeprom_write
	.globl _eeprom_read
	.globl _eeprom_select
	.globl _i2c_waitStop
	.globl _i2c_waitStart
	.globl _i2c_waitRead
	.globl _i2c_waitWrite
	.globl _receiveTargetKey
	.globl _receiveEssid
	.globl _receivePassword
	.globl _sendStatus
	.globl _sendPwd
	.globl _receiveData
	.globl _receiveLen
	.globl _MEM_COPY1_int
	.globl _uwait
	.globl _wait
	.globl _abscode_intvec
	.globl _EIPX6
	.globl _EIPX5
	.globl _EIPX4
	.globl _PI2C
	.globl _PUSB
	.globl _BREG7
	.globl _BREG6
	.globl _BREG5
	.globl _BREG4
	.globl _BREG3
	.globl _BREG2
	.globl _BREG1
	.globl _BREG0
	.globl _EIEX6
	.globl _EIEX5
	.globl _EIEX4
	.globl _EI2C
	.globl _EUSB
	.globl _ACC7
	.globl _ACC6
	.globl _ACC5
	.globl _ACC4
	.globl _ACC3
	.globl _ACC2
	.globl _ACC1
	.globl _ACC0
	.globl _SMOD1
	.globl _ERESI
	.globl _RESI
	.globl _INT6
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _PF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _CT2
	.globl _CPRL2
	.globl _SM0_1
	.globl _SM1_1
	.globl _SM2_1
	.globl _REN_1
	.globl _TB8_1
	.globl _RB8_1
	.globl _TI_1
	.globl _RI_1
	.globl _PS1
	.globl _PT2
	.globl _PS0
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _IOD7
	.globl _IOD6
	.globl _IOD5
	.globl _IOD4
	.globl _IOD3
	.globl _IOD2
	.globl _IOD1
	.globl _IOD0
	.globl _EA
	.globl _ES1
	.globl _ET2
	.globl _ES0
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _IOC7
	.globl _IOC6
	.globl _IOC5
	.globl _IOC4
	.globl _IOC3
	.globl _IOC2
	.globl _IOC1
	.globl _IOC0
	.globl _SM0_0
	.globl _SM1_0
	.globl _SM2_0
	.globl _REN_0
	.globl _TB8_0
	.globl _RB8_0
	.globl _TI_0
	.globl _RI_0
	.globl _IOB7
	.globl _IOB6
	.globl _IOB5
	.globl _IOB4
	.globl _IOB3
	.globl _IOB2
	.globl _IOB1
	.globl _IOB0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _IOA7
	.globl _IOA6
	.globl _IOA5
	.globl _IOA4
	.globl _IOA3
	.globl _IOA2
	.globl _IOA1
	.globl _IOA0
	.globl _EIP
	.globl _BREG
	.globl _EIE
	.globl _ACC
	.globl _EICON
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _SBUF1
	.globl _SCON1
	.globl _GPIFSGLDATLNOX
	.globl _GPIFSGLDATLX
	.globl _GPIFSGLDATH
	.globl _GPIFTRIG
	.globl _EP01STAT
	.globl _IP
	.globl _OEE
	.globl _OED
	.globl _OEC
	.globl _OEB
	.globl _OEA
	.globl _IOE
	.globl _IOD
	.globl _AUTOPTRSETUP
	.globl _EP68FIFOFLGS
	.globl _EP24FIFOFLGS
	.globl _EP2468STAT
	.globl _IE
	.globl _INT4CLR
	.globl _INT2CLR
	.globl _IOC
	.globl _AUTOPTRL2
	.globl _AUTOPTRH2
	.globl _AUTOPTRL1
	.globl _AUTOPTRH1
	.globl _SBUF0
	.globl _SCON0
	.globl __XPAGE
	.globl _MPAGE
	.globl _EXIF
	.globl _IOB
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPS
	.globl _DPH1
	.globl _DPL1
	.globl _DPH0
	.globl _DPL0
	.globl _SP
	.globl _IOA
	.globl _ISOFRAME_COUNTER
	.globl _ep0_vendor_cmd_setup
	.globl _ep0_prev_setup_request
	.globl _pwdLen
	.globl _generatePwds
	.globl _ep0_payload_transfer
	.globl _ep0_payload_remaining
	.globl _SN_STRING
	.globl _MODULE_RESERVED
	.globl _INTERFACE_CAPABILITIES
	.globl _INTERFACE_VERSION
	.globl _FW_VERSION
	.globl _PRODUCT_ID
	.globl _ZTEXID
	.globl _ZTEX_DESCRIPTOR_VERSION
	.globl _ZTEX_DESCRIPTOR
	.globl _fpga_flash_result
	.globl _fpga_init_b
	.globl _fpga_bytes
	.globl _fpga_checksum
	.globl _mmc_ep0_wait
	.globl _mmc_buffer
	.globl _mmc_version
	.globl _mmc_response
	.globl _mmc_last_cmd
	.globl _flash_ec
	.globl _flash_sectors
	.globl _flash_sector_size
	.globl _flash_enabled
	.globl _eeprom_write_checksum
	.globl _eeprom_write_bytes
	.globl _eeprom_addr
	.globl _pwd
	.globl _pwdStatusSector
	.globl _INTVEC_GPIFWF
	.globl _INTVEC_GPIFDONE
	.globl _INTVEC_EP8FF
	.globl _INTVEC_EP6FF
	.globl _INTVEC_EP2FF
	.globl _INTVEC_EP8EF
	.globl _INTVEC_EP6EF
	.globl _INTVEC_EP4EF
	.globl _INTVEC_EP2EF
	.globl _INTVEC_EP8PF
	.globl _INTVEC_EP6PF
	.globl _INTVEC_EP4PF
	.globl _INTVEC_EP2PF
	.globl _INTVEC_EP8ISOERR
	.globl _INTVEC_EP6ISOERR
	.globl _INTVEC_EP4ISOERR
	.globl _INTVEC_EP2ISOERR
	.globl _INTVEC_ERRLIMIT
	.globl _INTVEC_EP8PING
	.globl _INTVEC_EP6PING
	.globl _INTVEC_EP4PING
	.globl _INTVEC_EP2PING
	.globl _INTVEC_EP1PING
	.globl _INTVEC_EP0PING
	.globl _INTVEC_IBN
	.globl _INTVEC_EP8
	.globl _INTVEC_EP6
	.globl _INTVEC_EP4
	.globl _INTVEC_EP2
	.globl _INTVEC_EP1OUT
	.globl _INTVEC_EP1IN
	.globl _INTVEC_EP0OUT
	.globl _INTVEC_EP0IN
	.globl _INTVEC_EP0ACK
	.globl _INTVEC_HISPEED
	.globl _INTVEC_USBRESET
	.globl _INTVEC_SUSPEND
	.globl _INTVEC_SUTOK
	.globl _INTVEC_SOF
	.globl _INTVEC_SUDAV
	.globl _INT12VEC_IE6
	.globl _INT11VEC_IE5
	.globl _INT10VEC_GPIF
	.globl _INT9VEC_I2C
	.globl _INT8VEC_USB
	.globl _INT7VEC_USART1
	.globl _INT6VEC_RESUME
	.globl _INT5VEC_T2
	.globl _INT4VEC_USART0
	.globl _INT3VEC_T1
	.globl _INT2VEC_IE1
	.globl _INT1VEC_T0
	.globl _INT0VEC_IE0
	.globl _EP8FIFOBUF
	.globl _EP6FIFOBUF
	.globl _EP4FIFOBUF
	.globl _EP2FIFOBUF
	.globl _EP1INBUF
	.globl _EP1OUTBUF
	.globl _EP0BUF
	.globl _GPIFABORT
	.globl _GPIFREADYSTAT
	.globl _GPIFREADYCFG
	.globl _XGPIFSGLDATLNOX
	.globl _XGPIFSGLDATLX
	.globl _XGPIFSGLDATH
	.globl _EP8GPIFTRIG
	.globl _EP8GPIFPFSTOP
	.globl _EP8GPIFFLGSEL
	.globl _EP6GPIFTRIG
	.globl _EP6GPIFPFSTOP
	.globl _EP6GPIFFLGSEL
	.globl _EP4GPIFTRIG
	.globl _EP4GPIFPFSTOP
	.globl _EP4GPIFFLGSEL
	.globl _EP2GPIFTRIG
	.globl _EP2GPIFPFSTOP
	.globl _EP2GPIFFLGSEL
	.globl _GPIFTCB0
	.globl _GPIFTCB1
	.globl _GPIFTCB2
	.globl _GPIFTCB3
	.globl _FLOWSTBHPERIOD
	.globl _FLOWSTBEDGE
	.globl _FLOWSTB
	.globl _FLOWHOLDOFF
	.globl _FLOWEQ1CTL
	.globl _FLOWEQ0CTL
	.globl _FLOWLOGIC
	.globl _FLOWSTATE
	.globl _GPIFADRL
	.globl _GPIFADRH
	.globl _GPIFCTLCFG
	.globl _GPIFIDLECTL
	.globl _GPIFIDLECS
	.globl _GPIFWFSELECT
	.globl _wLengthH
	.globl _wLengthL
	.globl _wIndexH
	.globl _wIndexL
	.globl _wValueH
	.globl _wValueL
	.globl _bRequest
	.globl _bmRequestType
	.globl _SETUPDAT
	.globl _SUDPTRCTL
	.globl _SUDPTRL
	.globl _SUDPTRH
	.globl _EP8FIFOBCL
	.globl _EP8FIFOBCH
	.globl _EP6FIFOBCL
	.globl _EP6FIFOBCH
	.globl _EP4FIFOBCL
	.globl _EP4FIFOBCH
	.globl _EP2FIFOBCL
	.globl _EP2FIFOBCH
	.globl _EP8FIFOFLGS
	.globl _EP6FIFOFLGS
	.globl _EP4FIFOFLGS
	.globl _EP2FIFOFLGS
	.globl _EP8CS
	.globl _EP6CS
	.globl _EP4CS
	.globl _EP2CS
	.globl _EPXCS
	.globl _EP1INCS
	.globl _EP1OUTCS
	.globl _EP0CS
	.globl _EP8BCL
	.globl _EP8BCH
	.globl _EP6BCL
	.globl _EP6BCH
	.globl _EP4BCL
	.globl _EP4BCH
	.globl _EP2BCL
	.globl _EP2BCH
	.globl _EP1INBC
	.globl _EP1OUTBC
	.globl _EP0BCL
	.globl _EP0BCH
	.globl _FNADDR
	.globl _MICROFRAME
	.globl _USBFRAMEL
	.globl _USBFRAMEH
	.globl _TOGCTL
	.globl _WAKEUPCS
	.globl _SUSPEND
	.globl _USBCS
	.globl _UDMACRCQUALIFIER
	.globl _UDMACRCL
	.globl _UDMACRCH
	.globl _EXTAUTODAT2
	.globl _XAUTODAT2
	.globl _EXTAUTODAT1
	.globl _XAUTODAT1
	.globl _I2CTL
	.globl _I2DAT
	.globl _I2CS
	.globl _PORTECFG
	.globl _PORTCCFG
	.globl _PORTACFG
	.globl _INTSETUP
	.globl _INT4IVEC
	.globl _INT2IVEC
	.globl _CLRERRCNT
	.globl _ERRCNTLIM
	.globl _USBERRIRQ
	.globl _USBERRIE
	.globl _GPIFIRQ
	.globl _GPIFIE
	.globl _EPIRQ
	.globl _EPIE
	.globl _USBIRQ
	.globl _USBIE
	.globl _NAKIRQ
	.globl _NAKIE
	.globl _IBNIRQ
	.globl _IBNIE
	.globl _EP8FIFOIRQ
	.globl _EP8FIFOIE
	.globl _EP6FIFOIRQ
	.globl _EP6FIFOIE
	.globl _EP4FIFOIRQ
	.globl _EP4FIFOIE
	.globl _EP2FIFOIRQ
	.globl _EP2FIFOIE
	.globl _OUTPKTEND
	.globl _INPKTEND
	.globl _EP8ISOINPKTS
	.globl _EP6ISOINPKTS
	.globl _EP4ISOINPKTS
	.globl _EP2ISOINPKTS
	.globl _EP8FIFOPFL
	.globl _EP8FIFOPFH
	.globl _EP6FIFOPFL
	.globl _EP6FIFOPFH
	.globl _EP4FIFOPFL
	.globl _EP4FIFOPFH
	.globl _EP2FIFOPFL
	.globl _EP2FIFOPFH
	.globl _ECC2B2
	.globl _ECC2B1
	.globl _ECC2B0
	.globl _ECC1B2
	.globl _ECC1B1
	.globl _ECC1B0
	.globl _ECCRESET
	.globl _ECCCFG
	.globl _EP8AUTOINLENL
	.globl _EP8AUTOINLENH
	.globl _EP6AUTOINLENL
	.globl _EP6AUTOINLENH
	.globl _EP4AUTOINLENL
	.globl _EP4AUTOINLENH
	.globl _EP2AUTOINLENL
	.globl _EP2AUTOINLENH
	.globl _EP8FIFOCFG
	.globl _EP6FIFOCFG
	.globl _EP4FIFOCFG
	.globl _EP2FIFOCFG
	.globl _EP8CFG
	.globl _EP6CFG
	.globl _EP4CFG
	.globl _EP2CFG
	.globl _EP1INCFG
	.globl _EP1OUTCFG
	.globl _GPIFHOLDAMOUNT
	.globl _REVCTL
	.globl _REVID
	.globl _FIFOPINPOLAR
	.globl _UART230
	.globl _BPADDRL
	.globl _BPADDRH
	.globl _BREAKPT
	.globl _FIFORESET
	.globl _PINFLAGSCD
	.globl _PINFLAGSAB
	.globl _IFCONFIG
	.globl _CPUCS
	.globl _GPCR2
	.globl _GPIF_WAVE3_DATA
	.globl _GPIF_WAVE2_DATA
	.globl _GPIF_WAVE1_DATA
	.globl _GPIF_WAVE0_DATA
	.globl _GPIF_WAVE_DATA
	.globl _eeprom_write_PARM_3
	.globl _eeprom_write_PARM_2
	.globl _eeprom_read_PARM_3
	.globl _eeprom_read_PARM_2
	.globl _eeprom_select_PARM_3
	.globl _eeprom_select_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_IOA	=	0x0080
_SP	=	0x0081
_DPL0	=	0x0082
_DPH0	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_DPS	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_CKCON	=	0x008e
_IOB	=	0x0090
_EXIF	=	0x0091
_MPAGE	=	0x0092
__XPAGE	=	0x0092
_SCON0	=	0x0098
_SBUF0	=	0x0099
_AUTOPTRH1	=	0x009a
_AUTOPTRL1	=	0x009b
_AUTOPTRH2	=	0x009d
_AUTOPTRL2	=	0x009e
_IOC	=	0x00a0
_INT2CLR	=	0x00a1
_INT4CLR	=	0x00a2
_IE	=	0x00a8
_EP2468STAT	=	0x00aa
_EP24FIFOFLGS	=	0x00ab
_EP68FIFOFLGS	=	0x00ac
_AUTOPTRSETUP	=	0x00af
_IOD	=	0x00b0
_IOE	=	0x00b1
_OEA	=	0x00b2
_OEB	=	0x00b3
_OEC	=	0x00b4
_OED	=	0x00b5
_OEE	=	0x00b6
_IP	=	0x00b8
_EP01STAT	=	0x00ba
_GPIFTRIG	=	0x00bb
_GPIFSGLDATH	=	0x00bd
_GPIFSGLDATLX	=	0x00be
_GPIFSGLDATLNOX	=	0x00bf
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_EICON	=	0x00d8
_ACC	=	0x00e0
_EIE	=	0x00e8
_BREG	=	0x00f0
_EIP	=	0x00f8
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_IOA0	=	0x0080
_IOA1	=	0x0081
_IOA2	=	0x0082
_IOA3	=	0x0083
_IOA4	=	0x0084
_IOA5	=	0x0085
_IOA6	=	0x0086
_IOA7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_IOB0	=	0x0090
_IOB1	=	0x0091
_IOB2	=	0x0092
_IOB3	=	0x0093
_IOB4	=	0x0094
_IOB5	=	0x0095
_IOB6	=	0x0096
_IOB7	=	0x0097
_RI_0	=	0x0098
_TI_0	=	0x0099
_RB8_0	=	0x009a
_TB8_0	=	0x009b
_REN_0	=	0x009c
_SM2_0	=	0x009d
_SM1_0	=	0x009e
_SM0_0	=	0x009f
_IOC0	=	0x00a0
_IOC1	=	0x00a1
_IOC2	=	0x00a2
_IOC3	=	0x00a3
_IOC4	=	0x00a4
_IOC5	=	0x00a5
_IOC6	=	0x00a6
_IOC7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES0	=	0x00ac
_ET2	=	0x00ad
_ES1	=	0x00ae
_EA	=	0x00af
_IOD0	=	0x00b0
_IOD1	=	0x00b1
_IOD2	=	0x00b2
_IOD3	=	0x00b3
_IOD4	=	0x00b4
_IOD5	=	0x00b5
_IOD6	=	0x00b6
_IOD7	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS0	=	0x00bc
_PT2	=	0x00bd
_PS1	=	0x00be
_RI_1	=	0x00c0
_TI_1	=	0x00c1
_RB8_1	=	0x00c2
_TB8_1	=	0x00c3
_REN_1	=	0x00c4
_SM2_1	=	0x00c5
_SM1_1	=	0x00c6
_SM0_1	=	0x00c7
_CPRL2	=	0x00c8
_CT2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_PF	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_INT6	=	0x00db
_RESI	=	0x00dc
_ERESI	=	0x00dd
_SMOD1	=	0x00df
_ACC0	=	0x00e0
_ACC1	=	0x00e1
_ACC2	=	0x00e2
_ACC3	=	0x00e3
_ACC4	=	0x00e4
_ACC5	=	0x00e5
_ACC6	=	0x00e6
_ACC7	=	0x00e7
_EUSB	=	0x00e8
_EI2C	=	0x00e9
_EIEX4	=	0x00ea
_EIEX5	=	0x00eb
_EIEX6	=	0x00ec
_BREG0	=	0x00f0
_BREG1	=	0x00f1
_BREG2	=	0x00f2
_BREG3	=	0x00f3
_BREG4	=	0x00f4
_BREG5	=	0x00f5
_BREG6	=	0x00f6
_BREG7	=	0x00f7
_PUSB	=	0x00f8
_PI2C	=	0x00f9
_EIPX4	=	0x00fa
_EIPX5	=	0x00fb
_EIPX6	=	0x00fc
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_eeprom_select_PARM_2:
	.ds 1
_eeprom_select_PARM_3:
	.ds 1
_eeprom_read_PARM_2:
	.ds 2
_eeprom_read_PARM_3:
	.ds 1
_eeprom_write_PARM_2:
	.ds 2
_eeprom_write_PARM_3:
	.ds 1
_fpga_send_ep0_oOED_1_131:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_flash_read_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_flash_write_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_sendStringDescriptor_PARM_2:
	.ds 1
_sendStringDescriptor_PARM_3:
	.ds 1
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_receiveData_sloc0_1_0:
	.ds 1
_sendPwd_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_GPIF_WAVE_DATA	=	0xe400
_GPIF_WAVE0_DATA	=	0xe400
_GPIF_WAVE1_DATA	=	0xe420
_GPIF_WAVE2_DATA	=	0xe440
_GPIF_WAVE3_DATA	=	0xe460
_GPCR2	=	0xe50d
_CPUCS	=	0xe600
_IFCONFIG	=	0xe601
_PINFLAGSAB	=	0xe602
_PINFLAGSCD	=	0xe603
_FIFORESET	=	0xe604
_BREAKPT	=	0xe605
_BPADDRH	=	0xe606
_BPADDRL	=	0xe607
_UART230	=	0xe608
_FIFOPINPOLAR	=	0xe609
_REVID	=	0xe60a
_REVCTL	=	0xe60b
_GPIFHOLDAMOUNT	=	0xe60c
_EP1OUTCFG	=	0xe610
_EP1INCFG	=	0xe611
_EP2CFG	=	0xe612
_EP4CFG	=	0xe613
_EP6CFG	=	0xe614
_EP8CFG	=	0xe615
_EP2FIFOCFG	=	0xe618
_EP4FIFOCFG	=	0xe619
_EP6FIFOCFG	=	0xe61a
_EP8FIFOCFG	=	0xe61b
_EP2AUTOINLENH	=	0xe620
_EP2AUTOINLENL	=	0xe621
_EP4AUTOINLENH	=	0xe622
_EP4AUTOINLENL	=	0xe623
_EP6AUTOINLENH	=	0xe624
_EP6AUTOINLENL	=	0xe625
_EP8AUTOINLENH	=	0xe626
_EP8AUTOINLENL	=	0xe627
_ECCCFG	=	0xe628
_ECCRESET	=	0xe629
_ECC1B0	=	0xe62a
_ECC1B1	=	0xe62b
_ECC1B2	=	0xe62c
_ECC2B0	=	0xe62d
_ECC2B1	=	0xe62e
_ECC2B2	=	0xe62f
_EP2FIFOPFH	=	0xe630
_EP2FIFOPFL	=	0xe631
_EP4FIFOPFH	=	0xe632
_EP4FIFOPFL	=	0xe633
_EP6FIFOPFH	=	0xe634
_EP6FIFOPFL	=	0xe635
_EP8FIFOPFH	=	0xe636
_EP8FIFOPFL	=	0xe637
_EP2ISOINPKTS	=	0xe640
_EP4ISOINPKTS	=	0xe641
_EP6ISOINPKTS	=	0xe642
_EP8ISOINPKTS	=	0xe643
_INPKTEND	=	0xe648
_OUTPKTEND	=	0xe649
_EP2FIFOIE	=	0xe650
_EP2FIFOIRQ	=	0xe651
_EP4FIFOIE	=	0xe652
_EP4FIFOIRQ	=	0xe653
_EP6FIFOIE	=	0xe654
_EP6FIFOIRQ	=	0xe655
_EP8FIFOIE	=	0xe656
_EP8FIFOIRQ	=	0xe657
_IBNIE	=	0xe658
_IBNIRQ	=	0xe659
_NAKIE	=	0xe65a
_NAKIRQ	=	0xe65b
_USBIE	=	0xe65c
_USBIRQ	=	0xe65d
_EPIE	=	0xe65e
_EPIRQ	=	0xe65f
_GPIFIE	=	0xe660
_GPIFIRQ	=	0xe661
_USBERRIE	=	0xe662
_USBERRIRQ	=	0xe663
_ERRCNTLIM	=	0xe664
_CLRERRCNT	=	0xe665
_INT2IVEC	=	0xe666
_INT4IVEC	=	0xe667
_INTSETUP	=	0xe668
_PORTACFG	=	0xe670
_PORTCCFG	=	0xe671
_PORTECFG	=	0xe672
_I2CS	=	0xe678
_I2DAT	=	0xe679
_I2CTL	=	0xe67a
_XAUTODAT1	=	0xe67b
_EXTAUTODAT1	=	0xe67b
_XAUTODAT2	=	0xe67c
_EXTAUTODAT2	=	0xe67c
_UDMACRCH	=	0xe67d
_UDMACRCL	=	0xe67e
_UDMACRCQUALIFIER	=	0xe67f
_USBCS	=	0xe680
_SUSPEND	=	0xe681
_WAKEUPCS	=	0xe682
_TOGCTL	=	0xe683
_USBFRAMEH	=	0xe684
_USBFRAMEL	=	0xe685
_MICROFRAME	=	0xe686
_FNADDR	=	0xe687
_EP0BCH	=	0xe68a
_EP0BCL	=	0xe68b
_EP1OUTBC	=	0xe68d
_EP1INBC	=	0xe68f
_EP2BCH	=	0xe690
_EP2BCL	=	0xe691
_EP4BCH	=	0xe694
_EP4BCL	=	0xe695
_EP6BCH	=	0xe698
_EP6BCL	=	0xe699
_EP8BCH	=	0xe69c
_EP8BCL	=	0xe69d
_EP0CS	=	0xe6a0
_EP1OUTCS	=	0xe6a1
_EP1INCS	=	0xe6a2
_EPXCS	=	0xe6a3
_EP2CS	=	0xe6a3
_EP4CS	=	0xe6a4
_EP6CS	=	0xe6a5
_EP8CS	=	0xe6a6
_EP2FIFOFLGS	=	0xe6a7
_EP4FIFOFLGS	=	0xe6a8
_EP6FIFOFLGS	=	0xe6a9
_EP8FIFOFLGS	=	0xe6aa
_EP2FIFOBCH	=	0xe6ab
_EP2FIFOBCL	=	0xe6ac
_EP4FIFOBCH	=	0xe6ad
_EP4FIFOBCL	=	0xe6ae
_EP6FIFOBCH	=	0xe6af
_EP6FIFOBCL	=	0xe6b0
_EP8FIFOBCH	=	0xe6b1
_EP8FIFOBCL	=	0xe6b2
_SUDPTRH	=	0xe6b3
_SUDPTRL	=	0xe6b4
_SUDPTRCTL	=	0xe6b5
_SETUPDAT	=	0xe6b8
_bmRequestType	=	0xe6b8
_bRequest	=	0xe6b9
_wValueL	=	0xe6ba
_wValueH	=	0xe6bb
_wIndexL	=	0xe6bc
_wIndexH	=	0xe6bd
_wLengthL	=	0xe6be
_wLengthH	=	0xe6bf
_GPIFWFSELECT	=	0xe6c0
_GPIFIDLECS	=	0xe6c1
_GPIFIDLECTL	=	0xe6c2
_GPIFCTLCFG	=	0xe6c3
_GPIFADRH	=	0xe6c4
_GPIFADRL	=	0xe6c5
_FLOWSTATE	=	0xe6c6
_FLOWLOGIC	=	0xe6c7
_FLOWEQ0CTL	=	0xe6c8
_FLOWEQ1CTL	=	0xe6c9
_FLOWHOLDOFF	=	0xe6ca
_FLOWSTB	=	0xe6cb
_FLOWSTBEDGE	=	0xe6cc
_FLOWSTBHPERIOD	=	0xe6cd
_GPIFTCB3	=	0xe6ce
_GPIFTCB2	=	0xe6cf
_GPIFTCB1	=	0xe6d0
_GPIFTCB0	=	0xe6d1
_EP2GPIFFLGSEL	=	0xe6d2
_EP2GPIFPFSTOP	=	0xe6d3
_EP2GPIFTRIG	=	0xe6d4
_EP4GPIFFLGSEL	=	0xe6da
_EP4GPIFPFSTOP	=	0xe6db
_EP4GPIFTRIG	=	0xe6dc
_EP6GPIFFLGSEL	=	0xe6e2
_EP6GPIFPFSTOP	=	0xe6e3
_EP6GPIFTRIG	=	0xe6e4
_EP8GPIFFLGSEL	=	0xe6ea
_EP8GPIFPFSTOP	=	0xe6eb
_EP8GPIFTRIG	=	0xe6ec
_XGPIFSGLDATH	=	0xe6f0
_XGPIFSGLDATLX	=	0xe6f1
_XGPIFSGLDATLNOX	=	0xe6f2
_GPIFREADYCFG	=	0xe6f3
_GPIFREADYSTAT	=	0xe6f4
_GPIFABORT	=	0xe6f5
_EP0BUF	=	0xe740
_EP1OUTBUF	=	0xe780
_EP1INBUF	=	0xe7c0
_EP2FIFOBUF	=	0xf000
_EP4FIFOBUF	=	0xf400
_EP6FIFOBUF	=	0xf800
_EP8FIFOBUF	=	0xfc00
_INT0VEC_IE0	=	0x0003
_INT1VEC_T0	=	0x000b
_INT2VEC_IE1	=	0x0013
_INT3VEC_T1	=	0x001b
_INT4VEC_USART0	=	0x0023
_INT5VEC_T2	=	0x002b
_INT6VEC_RESUME	=	0x0033
_INT7VEC_USART1	=	0x003b
_INT8VEC_USB	=	0x0043
_INT9VEC_I2C	=	0x004b
_INT10VEC_GPIF	=	0x0053
_INT11VEC_IE5	=	0x005b
_INT12VEC_IE6	=	0x0063
_INTVEC_SUDAV	=	0x0100
_INTVEC_SOF	=	0x0104
_INTVEC_SUTOK	=	0x0108
_INTVEC_SUSPEND	=	0x010c
_INTVEC_USBRESET	=	0x0110
_INTVEC_HISPEED	=	0x0114
_INTVEC_EP0ACK	=	0x0118
_INTVEC_EP0IN	=	0x0120
_INTVEC_EP0OUT	=	0x0124
_INTVEC_EP1IN	=	0x0128
_INTVEC_EP1OUT	=	0x012c
_INTVEC_EP2	=	0x0130
_INTVEC_EP4	=	0x0134
_INTVEC_EP6	=	0x0138
_INTVEC_EP8	=	0x013c
_INTVEC_IBN	=	0x0140
_INTVEC_EP0PING	=	0x0148
_INTVEC_EP1PING	=	0x014c
_INTVEC_EP2PING	=	0x0150
_INTVEC_EP4PING	=	0x0154
_INTVEC_EP6PING	=	0x0158
_INTVEC_EP8PING	=	0x015c
_INTVEC_ERRLIMIT	=	0x0160
_INTVEC_EP2ISOERR	=	0x0170
_INTVEC_EP4ISOERR	=	0x0174
_INTVEC_EP6ISOERR	=	0x0178
_INTVEC_EP8ISOERR	=	0x017c
_INTVEC_EP2PF	=	0x0180
_INTVEC_EP4PF	=	0x0184
_INTVEC_EP6PF	=	0x0188
_INTVEC_EP8PF	=	0x018c
_INTVEC_EP2EF	=	0x0190
_INTVEC_EP4EF	=	0x0194
_INTVEC_EP6EF	=	0x0198
_INTVEC_EP8EF	=	0x019c
_INTVEC_EP2FF	=	0x01a0
_INTVEC_EP6FF	=	0x01a8
_INTVEC_EP8FF	=	0x01ac
_INTVEC_GPIFDONE	=	0x01b0
_INTVEC_GPIFWF	=	0x01b4
_pwdStatusSector::
	.ds 2
_pwd::
	.ds 64
_eeprom_addr::
	.ds 2
_eeprom_write_bytes::
	.ds 2
_eeprom_write_checksum::
	.ds 1
_flash_enabled::
	.ds 1
_flash_sector_size::
	.ds 2
_flash_sectors::
	.ds 4
_flash_ec::
	.ds 1
_mmc_last_cmd::
	.ds 1
_mmc_response::
	.ds 1
_mmc_version::
	.ds 1
_mmc_buffer::
	.ds 16
_mmc_ep0_wait::
	.ds 1
_fpga_checksum::
	.ds 1
_fpga_bytes::
	.ds 4
_fpga_init_b::
	.ds 1
_fpga_flash_result::
	.ds 1
_ZTEX_DESCRIPTOR	=	0x006c
_ZTEX_DESCRIPTOR_VERSION	=	0x006d
_ZTEXID	=	0x006e
_PRODUCT_ID	=	0x0072
_FW_VERSION	=	0x0076
_INTERFACE_VERSION	=	0x0077
_INTERFACE_CAPABILITIES	=	0x0078
_MODULE_RESERVED	=	0x007e
_SN_STRING	=	0x008a
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_ep0_payload_remaining::
	.ds 2
_ep0_payload_transfer::
	.ds 1
_generatePwds::
	.ds 1
_pwdLen::
	.ds 1
_ep0_prev_setup_request::
	.ds 1
_ep0_vendor_cmd_setup::
	.ds 1
_ISOFRAME_COUNTER::
	.ds 8
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'abscode_intvec'
;------------------------------------------------------------
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
;	-----------------------------------------
;	 function abscode_intvec
;	-----------------------------------------
_abscode_intvec:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	d:\ztex\include\ezintavecs.h:317: ERROR: no line number 317 in file d:\ztex\include\ezintavecs.h
	.area ABSCODE (ABS,CODE)
	.org 0x0000
	ENTRY:
	ljmp #0x0200
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0003
;	# 34 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x000b
;	# 35 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0013
;	# 36 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x001b
;	# 37 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0023
;	# 38 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x002b
;	# 39 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0033
;	# 40 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x003b
;	# 41 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0043
;	# 42 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x004b
;	# 43 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0053
;	# 44 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x005b
;	# 45 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0063
;	# 46 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0100
;	# 47 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0104
;	# 48 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0108
;	# 49 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x010C
;	# 50 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0110
;	# 51 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0114
;	# 52 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0118
;	# 53 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0120
;	# 54 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0124
;	# 55 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0128
;	# 56 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x012C
;	# 57 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0130
;	# 58 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0134
;	# 59 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0138
;	# 60 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x013C
;	# 61 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0140
;	# 62 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0148
;	# 63 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x014C
;	# 64 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0150
;	# 65 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0154
;	# 66 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0158
;	# 67 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x015C
;	# 68 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0160
;	# 69 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0170
;	# 70 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0174
;	# 71 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0178
;	# 72 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x017C
;	# 73 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0180
;	# 74 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0184
;	# 75 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0188
;	# 76 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x018C
;	# 77 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0190
;	# 78 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0194
;	# 79 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x0198
;	# 80 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x019C
;	# 81 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x01A0
;	# 82 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x01A8
;	# 83 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x01AC
;	# 84 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x01B0
;	# 85 "d:\\ztex\\include\\ezintavecs.h"
	reti
;	# 94 "d:\\ztex\\include\\ezintavecs.h"
	.org 0x01B4
;	# 101 "d:\\ztex\\include\\ezintavecs.h"
	reti
	.org 0x01b8
	INTVEC_DUMMY:
	reti
	.area CSEG (CODE)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'wait'
;------------------------------------------------------------
;ms                        Allocated to registers r6 r7 
;i                         Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
;	-----------------------------------------
;	 function wait
;	-----------------------------------------
_wait:
	mov	r6,dpl
	mov	r7,dph
;	d:\ztex\include\ztex-utils.h:80: for (j=0; j<ms; j++) 
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	d:\ztex\include\ztex-utils.h:81: for (i=0; i<1200; i++);
	mov	r2,#0xB0
	mov	r3,#0x04
00105$:
	dec	r2
	cjne	r2,#0xFF,00126$
	dec	r3
00126$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	d:\ztex\include\ztex-utils.h:80: for (j=0; j<ms; j++) 
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uwait'
;------------------------------------------------------------
;us                        Allocated to registers r6 r7 
;i                         Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
;	-----------------------------------------
;	 function uwait
;	-----------------------------------------
_uwait:
	mov	r6,dpl
	mov	r7,dph
;	d:\ztex\include\ztex-utils.h:90: for (j=0; j<us; j++) 
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	d:\ztex\include\ztex-utils.h:91: for (i=0; i<10; i++);
	mov	r2,#0x0A
	mov	r3,#0x00
00105$:
	dec	r2
	cjne	r2,#0xFF,00126$
	dec	r3
00126$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	d:\ztex\include\ztex-utils.h:90: for (j=0; j<us; j++) 
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MEM_COPY1_int'
;------------------------------------------------------------
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
;	-----------------------------------------
;	 function MEM_COPY1_int
;	-----------------------------------------
_MEM_COPY1_int:
;	d:\ztex\include\ztex-utils.h:110: __endasm;
	020001$:
	mov _AUTOPTRSETUP,#0x07
	mov dptr,#_XAUTODAT1
	movx a,@dptr
	mov dptr,#_XAUTODAT2
	movx @dptr,a
	djnz r2, 020001$
	ret
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'receiveLen'
;------------------------------------------------------------
;	usb-test.c:58: void receiveLen()
;	-----------------------------------------
;	 function receiveLen
;	-----------------------------------------
_receiveLen:
;	usb-test.c:60: IOB = SETUPDAT[2];
	mov	dptr,#(_SETUPDAT + 0x0002)
	movx	a,@dptr
	mov	_IOB,a
;	usb-test.c:61: LEN_VALID = 1;
	setb	_IOA6
;	d:\ztex\include\ztex-utils.h:37: __endasm;
	nop
	nop
;	usb-test.c:64: LEN_VALID = 0;
	clr	_IOA6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'receiveData'
;------------------------------------------------------------
;size                      Allocated to registers r6 r7 
;b                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	usb-test.c:67: void receiveData()
;	-----------------------------------------
;	 function receiveData
;	-----------------------------------------
_receiveData:
;	usb-test.c:69: int size = EP0BCL, b;
	mov	dptr,#_EP0BCL
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
;	usb-test.c:71: for ( b=0; b<size; b++ ) {
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	usb-test.c:72: IOB = EP0BUF[b];
	mov	a,r4
	add	a,#_EP0BUF
	mov	dpl,a
	mov	a,r5
	addc	a,#(_EP0BUF >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_IOB,a
;	usb-test.c:73: RD_CLK = !RD_CLK;
	mov	c,_IOA2
	cpl	c
	mov  _receiveData_sloc0_1_0,c
	mov	_IOA2,c
;	d:\ztex\include\ztex-utils.h:37: __endasm;
	nop
	nop
;	usb-test.c:71: for ( b=0; b<size; b++ ) {
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendPwd'
;------------------------------------------------------------
;b                         Allocated to registers r6 
;len                       Allocated to registers r7 
;------------------------------------------------------------
;	usb-test.c:83: void sendPwd()
;	-----------------------------------------
;	 function sendPwd
;	-----------------------------------------
_sendPwd:
;	usb-test.c:86: len = IOD;
	mov	r7,_IOD
;	usb-test.c:87: for ( b=0; b<len; b++ ) {
	mov	r6,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00101$
;	usb-test.c:88: WR_CLK = !WR_CLK;
	mov	c,_IOA3
	cpl	c
	mov  _sendPwd_sloc0_1_0,c
	mov	_IOA3,c
;	usb-test.c:89: EP0BUF[b] = IOD;
	mov	a,r6
	add	a,#_EP0BUF
	mov	dpl,a
	clr	a
	addc	a,#(_EP0BUF >> 8)
	mov	dph,a
	mov	a,_IOD
	movx	@dptr,a
;	d:\ztex\include\ztex-utils.h:37: __endasm;
	nop
	nop
;	usb-test.c:87: for ( b=0; b<len; b++ ) {
	inc	r6
	sjmp	00103$
00101$:
;	usb-test.c:93: EP0BCH = 0;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
;	usb-test.c:94: EP0BCL = len;
	mov	dptr,#_EP0BCL
	mov	a,r7
	movx	@dptr,a
;	usb-test.c:95: ep0_payload_remaining = 0;
	mov	dptr,#_ep0_payload_remaining
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendStatus'
;------------------------------------------------------------
;	usb-test.c:108: void sendStatus()
;	-----------------------------------------
;	 function sendStatus
;	-----------------------------------------
_sendStatus:
;	usb-test.c:110: EP0BUF[0] = IOC;
	mov	dptr,#_EP0BUF
	mov	a,_IOC
	movx	@dptr,a
;	usb-test.c:111: EP0BCH = 0;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
;	usb-test.c:112: EP0BCL = 1;
	mov	dptr,#_EP0BCL
	mov	a,#0x01
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'receivePassword'
;------------------------------------------------------------
;	usb-test.c:124: void receivePassword()
;	-----------------------------------------
;	 function receivePassword
;	-----------------------------------------
_receivePassword:
;	usb-test.c:126: receiveData();
	ljmp	_receiveData
;------------------------------------------------------------
;Allocation info for local variables in function 'receiveEssid'
;------------------------------------------------------------
;	usb-test.c:140: void receiveEssid()
;	-----------------------------------------
;	 function receiveEssid
;	-----------------------------------------
_receiveEssid:
;	usb-test.c:142: ESSID_WR_EN = 1;
	setb	_IOA4
;	usb-test.c:143: receiveData();
	lcall	_receiveData
;	usb-test.c:144: ESSID_WR_EN = 0;
	clr	_IOA4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'receiveTargetKey'
;------------------------------------------------------------
;	usb-test.c:157: void receiveTargetKey()
;	-----------------------------------------
;	 function receiveTargetKey
;	-----------------------------------------
_receiveTargetKey:
;	usb-test.c:159: TARGET_KEY_WR_EN = 1;
	setb	_IOA7
;	usb-test.c:160: receiveData();
	lcall	_receiveData
;	usb-test.c:161: TARGET_KEY_WR_EN = 0;
	clr	_IOA7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_waitWrite'
;------------------------------------------------------------
;i2csbuf                   Allocated to registers r7 
;toc                       Allocated to registers r7 
;------------------------------------------------------------
;	d:\ztex\include\ztex-eeprom.h:41: BYTE i2c_waitWrite()
;	-----------------------------------------
;	 function i2c_waitWrite
;	-----------------------------------------
_i2c_waitWrite:
;	d:\ztex\include\ztex-eeprom.h:44: for ( toc=0; toc<255 && !(I2CS & bmBIT0); toc++ );
	mov	r7,#0x00
00107$:
	cjne	r7,#0xFF,00124$
00124$:
	jnc	00101$
	mov	dptr,#_I2CS
	movx	a,@dptr
	mov	r6,a
	jb	acc.0,00101$
	inc	r7
	sjmp	00107$
00101$:
;	d:\ztex\include\ztex-eeprom.h:45: i2csbuf = I2CS;
	mov	dptr,#_I2CS
	movx	a,@dptr
;	d:\ztex\include\ztex-eeprom.h:46: if ( (i2csbuf & bmBIT2) || (!(i2csbuf & bmBIT1)) ) {
	mov	r7,a
	jb	acc.2,00102$
	mov	a,r7
	jb	acc.1,00103$
00102$:
;	d:\ztex\include\ztex-eeprom.h:47: I2CS |= bmBIT6;
	mov	dptr,#_I2CS
	movx	a,@dptr
	orl	a,#0x40
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:48: return 1;
	mov	dpl,#0x01
	ret
00103$:
;	d:\ztex\include\ztex-eeprom.h:50: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_waitRead'
;------------------------------------------------------------
;i2csbuf                   Allocated to registers r7 
;toc                       Allocated to registers r7 
;------------------------------------------------------------
;	d:\ztex\include\ztex-eeprom.h:57: BYTE i2c_waitRead(void)
;	-----------------------------------------
;	 function i2c_waitRead
;	-----------------------------------------
_i2c_waitRead:
;	d:\ztex\include\ztex-eeprom.h:60: for ( toc=0; toc<255 && !(I2CS & bmBIT0); toc++ );
	mov	r7,#0x00
00106$:
	cjne	r7,#0xFF,00123$
00123$:
	jnc	00101$
	mov	dptr,#_I2CS
	movx	a,@dptr
	mov	r6,a
	jb	acc.0,00101$
	inc	r7
	sjmp	00106$
00101$:
;	d:\ztex\include\ztex-eeprom.h:61: i2csbuf = I2CS;
	mov	dptr,#_I2CS
	movx	a,@dptr
;	d:\ztex\include\ztex-eeprom.h:62: if (i2csbuf & bmBIT2) {
	mov	r7,a
	jnb	acc.2,00103$
;	d:\ztex\include\ztex-eeprom.h:63: I2CS |= bmBIT6;
	mov	dptr,#_I2CS
	movx	a,@dptr
	orl	a,#0x40
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:64: return 1;
	mov	dpl,#0x01
	ret
00103$:
;	d:\ztex\include\ztex-eeprom.h:66: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_waitStart'
;------------------------------------------------------------
;toc                       Allocated to registers r7 
;------------------------------------------------------------
;	d:\ztex\include\ztex-eeprom.h:73: BYTE i2c_waitStart()
;	-----------------------------------------
;	 function i2c_waitStart
;	-----------------------------------------
_i2c_waitStart:
;	d:\ztex\include\ztex-eeprom.h:76: for ( toc=0; toc<255; toc++ ) {
	mov	r7,#0x00
00104$:
;	d:\ztex\include\ztex-eeprom.h:77: if ( ! (I2CS & bmBIT2) )
	mov	dptr,#_I2CS
	movx	a,@dptr
	mov	r6,a
	jb	acc.2,00105$
;	d:\ztex\include\ztex-eeprom.h:78: return 0;
	mov	dpl,#0x00
	ret
00105$:
;	d:\ztex\include\ztex-eeprom.h:76: for ( toc=0; toc<255; toc++ ) {
	inc	r7
	cjne	r7,#0xFF,00118$
00118$:
	jc	00104$
;	d:\ztex\include\ztex-eeprom.h:80: return 1;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_waitStop'
;------------------------------------------------------------
;toc                       Allocated to registers r7 
;------------------------------------------------------------
;	d:\ztex\include\ztex-eeprom.h:87: BYTE i2c_waitStop()
;	-----------------------------------------
;	 function i2c_waitStop
;	-----------------------------------------
_i2c_waitStop:
;	d:\ztex\include\ztex-eeprom.h:90: for ( toc=0; toc<255; toc++ ) {
	mov	r7,#0x00
00104$:
;	d:\ztex\include\ztex-eeprom.h:91: if ( ! (I2CS & bmBIT6) )
	mov	dptr,#_I2CS
	movx	a,@dptr
	mov	r6,a
	jb	acc.6,00105$
;	d:\ztex\include\ztex-eeprom.h:92: return 0;
	mov	dpl,#0x00
	ret
00105$:
;	d:\ztex\include\ztex-eeprom.h:90: for ( toc=0; toc<255; toc++ ) {
	inc	r7
	cjne	r7,#0xFF,00118$
00118$:
	jc	00104$
;	d:\ztex\include\ztex-eeprom.h:94: return 1;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_select'
;------------------------------------------------------------
;to                        Allocated with name '_eeprom_select_PARM_2'
;stop                      Allocated with name '_eeprom_select_PARM_3'
;addr                      Allocated to registers r7 
;toc                       Allocated to registers 
;------------------------------------------------------------
;	d:\ztex\include\ztex-eeprom.h:103: BYTE eeprom_select (BYTE addr, BYTE to, BYTE stop ) {
;	-----------------------------------------
;	 function eeprom_select
;	-----------------------------------------
_eeprom_select:
	mov	r7,dpl
;	d:\ztex\include\ztex-eeprom.h:105: eeprom_select_start:
	clr	c
	clr	a
	subb	a,_eeprom_select_PARM_2
	clr	a
	rlc	a
	mov	r6,a
00101$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_I2CS
	movx	a,@dptr
	orl	a,#0x80
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:107: i2c_waitStart();
	push	ar7
	push	ar6
	lcall	_i2c_waitStart
	pop	ar6
	pop	ar7
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_I2DAT
	mov	a,r7
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:109: if ( ! i2c_waitWrite() ) {
	push	ar7
	push	ar6
	lcall	_i2c_waitWrite
	mov	a,dpl
	pop	ar6
	pop	ar7
	jnz	00107$
;	d:\ztex\include\ztex-eeprom.h:110: if ( stop ) {
	mov	a,_eeprom_select_PARM_3
	jz	00103$
;	d:\ztex\include\ztex-eeprom.h:111: I2CS |= bmBIT6;
	mov	dptr,#_I2CS
	movx	a,@dptr
	orl	a,#0x40
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:112: i2c_waitStop();
	lcall	_i2c_waitStop
00103$:
;	d:\ztex\include\ztex-eeprom.h:114: return 0;
	mov	dpl,#0x00
	ret
00107$:
;	d:\ztex\include\ztex-eeprom.h:116: else if (toc<to) {
	mov	a,r6
	jz	00108$
;	d:\ztex\include\ztex-eeprom.h:117: uwait(10);
	mov	dptr,#0x000A
	push	ar7
	push	ar6
	lcall	_uwait
	pop	ar6
	pop	ar7
;	d:\ztex\include\ztex-eeprom.h:118: goto eeprom_select_start;
	sjmp	00101$
00108$:
;	d:\ztex\include\ztex-eeprom.h:120: if ( stop ) {
	mov	a,_eeprom_select_PARM_3
	jz	00110$
;	d:\ztex\include\ztex-eeprom.h:121: I2CS |= bmBIT6;
	mov	dptr,#_I2CS
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x40
	movx	@dptr,a
00110$:
;	d:\ztex\include\ztex-eeprom.h:123: return 1;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_read'
;------------------------------------------------------------
;addr                      Allocated with name '_eeprom_read_PARM_2'
;length                    Allocated with name '_eeprom_read_PARM_3'
;buf                       Allocated to registers r6 r7 
;bytes                     Allocated to registers r5 
;i                         Allocated to registers 
;------------------------------------------------------------
;	d:\ztex\include\ztex-eeprom.h:131: BYTE eeprom_read ( __xdata BYTE *buf, WORD addr, BYTE length ) { 
;	-----------------------------------------
;	 function eeprom_read
;	-----------------------------------------
_eeprom_read:
	mov	r6,dpl
	mov	r7,dph
;	d:\ztex\include\ztex-eeprom.h:132: BYTE bytes = 0,i;
	mov	r5,#0x00
;	d:\ztex\include\ztex-eeprom.h:134: if ( length == 0 ) 
	mov	a,_eeprom_read_PARM_3
;	d:\ztex\include\ztex-eeprom.h:135: return 0;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	d:\ztex\include\ztex-eeprom.h:137: if ( eeprom_select(EEPROM_ADDR, 100,0) ) 
	mov	_eeprom_select_PARM_2,#0x64
	mov	_eeprom_select_PARM_3,#0x00
	mov	dpl,#0xA2
	push	ar7
	push	ar6
	push	ar5
	lcall	_eeprom_select
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00154$
	ljmp	00118$
00154$:
;	d:\ztex\include\ztex-eeprom.h:31: ********************************************************************* */
	mov	r4,(_eeprom_read_PARM_2 + 1)
	mov	dptr,#_I2DAT
	mov	a,r4
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:141: if ( i2c_waitWrite() ) goto eeprom_read_end;
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_waitWrite
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00155$
	ljmp	00118$
00155$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_I2DAT
	mov	a,_eeprom_read_PARM_2
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:143: if ( i2c_waitWrite() ) goto eeprom_read_end;
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_waitWrite
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00156$
	ljmp	00118$
00156$:
;	d:\ztex\include\ztex-eeprom.h:144: I2CS |= bmBIT6;
	mov	dptr,#_I2CS
	movx	a,@dptr
	orl	a,#0x40
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:145: i2c_waitStop();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_waitStop
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_I2CS
	movx	a,@dptr
	orl	a,#0x80
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:148: i2c_waitStart();
	lcall	_i2c_waitStart
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_I2DAT
	mov	a,#0xA3
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:150: if ( i2c_waitWrite() ) goto eeprom_read_end;
	lcall	_i2c_waitWrite
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00118$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_I2DAT
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:153: if ( i2c_waitRead()) goto eeprom_read_end; 
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_waitRead
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00118$
	mov	r4,a
00120$:
;	d:\ztex\include\ztex-eeprom.h:154: for (; bytes<length; bytes++ ) {
	clr	c
	mov	a,r4
	subb	a,_eeprom_read_PARM_3
	jnc	00115$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_I2DAT
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
;	d:\ztex\include\ztex-eeprom.h:156: buf++;
;	d:\ztex\include\ztex-eeprom.h:157: if ( i2c_waitRead()) goto eeprom_read_end; 
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2c_waitRead
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00118$
;	d:\ztex\include\ztex-eeprom.h:154: for (; bytes<length; bytes++ ) {
	inc	r4
	mov	ar5,r4
	sjmp	00120$
00115$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_I2CS
	movx	a,@dptr
	orl	a,#0x20
	movx	@dptr,a
	mov	dptr,#_I2DAT
	movx	a,@dptr
;	d:\ztex\include\ztex-eeprom.h:162: if ( i2c_waitRead()) goto eeprom_read_end; 
	push	ar5
	lcall	_i2c_waitRead
	mov	a,dpl
	pop	ar5
	jnz	00118$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_I2CS
	movx	a,@dptr
	orl	a,#0x40
	movx	@dptr,a
	mov	dptr,#_I2DAT
	movx	a,@dptr
;	d:\ztex\include\ztex-eeprom.h:166: i2c_waitStop();
	push	ar5
	lcall	_i2c_waitStop
	pop	ar5
;	d:\ztex\include\ztex-eeprom.h:168: eeprom_read_end:
00118$:
;	d:\ztex\include\ztex-eeprom.h:169: return bytes;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_write'
;------------------------------------------------------------
;addr                      Allocated with name '_eeprom_write_PARM_2'
;length                    Allocated with name '_eeprom_write_PARM_3'
;buf                       Allocated to registers r6 r7 
;bytes                     Allocated to registers r5 
;------------------------------------------------------------
;	d:\ztex\include\ztex-eeprom.h:178: BYTE eeprom_write ( __xdata BYTE *buf, WORD addr, BYTE length ) {
;	-----------------------------------------
;	 function eeprom_write
;	-----------------------------------------
_eeprom_write:
	mov	r6,dpl
	mov	r7,dph
;	d:\ztex\include\ztex-eeprom.h:179: BYTE bytes = 0;
	mov	r5,#0x00
;	d:\ztex\include\ztex-eeprom.h:181: if ( eeprom_select(EEPROM_ADDR, 100,0) ) 
	mov	_eeprom_select_PARM_2,#0x64
	mov	_eeprom_select_PARM_3,#0x00
	mov	dpl,#0xA2
	push	ar7
	push	ar6
	push	ar5
	lcall	_eeprom_select
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00133$
	ljmp	00110$
00133$:
;	d:\ztex\include\ztex-eeprom.h:31: ********************************************************************* */
	mov	r4,(_eeprom_write_PARM_2 + 1)
	mov	dptr,#_I2DAT
	mov	a,r4
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:185: if ( i2c_waitWrite() ) goto eeprom_write_end;
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_waitWrite
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00134$
	ljmp	00110$
00134$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_I2DAT
	mov	a,_eeprom_write_PARM_2
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:187: if ( i2c_waitWrite() ) goto eeprom_write_end;
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_waitWrite
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00110$
	mov	r4,a
00112$:
;	d:\ztex\include\ztex-eeprom.h:189: for (; bytes<length; bytes++ ) {
	clr	c
	mov	a,r4
	subb	a,_eeprom_write_PARM_3
	jnc	00109$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	dptr,#_I2DAT
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:191: eeprom_write_checksum += *buf;
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_eeprom_write_checksum
	movx	a,@dptr
	mov	r2,a
	mov	a,r3
	add	a,r2
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:192: buf++;
;	d:\ztex\include\ztex-eeprom.h:193: eeprom_write_bytes+=1;
	mov	dptr,#_eeprom_write_bytes
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_eeprom_write_bytes
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:194: if ( i2c_waitWrite() ) goto eeprom_write_end;
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2c_waitWrite
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00110$
;	d:\ztex\include\ztex-eeprom.h:189: for (; bytes<length; bytes++ ) {
	inc	r4
	mov	ar5,r4
	sjmp	00112$
00109$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_I2CS
	movx	a,@dptr
	orl	a,#0x40
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:197: i2c_waitStop();
	push	ar5
	lcall	_i2c_waitStop
	pop	ar5
;	d:\ztex\include\ztex-eeprom.h:199: eeprom_write_end:
00110$:
;	d:\ztex\include\ztex-eeprom.h:200: return bytes;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_read_ep0'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;b                         Allocated to registers r7 
;------------------------------------------------------------
;	d:\ztex\include\ztex-eeprom.h:206: BYTE eeprom_read_ep0 () { 
;	-----------------------------------------
;	 function eeprom_read_ep0
;	-----------------------------------------
_eeprom_read_ep0:
;	d:\ztex\include\ztex-eeprom.h:208: b = ep0_payload_transfer;
	mov	dptr,#_ep0_payload_transfer
	movx	a,@dptr
	mov	r7,a
;	d:\ztex\include\ztex-eeprom.h:209: i = eeprom_read(EP0BUF, eeprom_addr, b);
	mov	dptr,#_eeprom_addr
	movx	a,@dptr
	mov	_eeprom_read_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(_eeprom_read_PARM_2 + 1),a
	mov	_eeprom_read_PARM_3,r7
	mov	dptr,#_EP0BUF
	push	ar7
	lcall	_eeprom_read
	mov	r6,dpl
	pop	ar7
;	d:\ztex\include\ztex-eeprom.h:210: eeprom_addr += b;
	mov	r5,#0x00
	mov	dptr,#_eeprom_addr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_eeprom_addr
	mov	a,r7
	add	a,r3
	movx	@dptr,a
	mov	a,r5
	addc	a,r4
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:211: return i;
	mov	dpl,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_write_ep0'
;------------------------------------------------------------
;length                    Allocated to registers r7 
;------------------------------------------------------------
;	d:\ztex\include\ztex-eeprom.h:227: void eeprom_write_ep0 ( BYTE length ) { 	
;	-----------------------------------------
;	 function eeprom_write_ep0
;	-----------------------------------------
_eeprom_write_ep0:
	mov	r7,dpl
;	d:\ztex\include\ztex-eeprom.h:228: eeprom_write(EP0BUF, eeprom_addr, length);
	mov	dptr,#_eeprom_addr
	movx	a,@dptr
	mov	_eeprom_write_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(_eeprom_write_PARM_2 + 1),a
	mov	_eeprom_write_PARM_3,r7
	mov	dptr,#_EP0BUF
	push	ar7
	lcall	_eeprom_write
	pop	ar7
;	d:\ztex\include\ztex-eeprom.h:229: eeprom_addr += length;
	mov	r6,#0x00
	mov	dptr,#_eeprom_addr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_eeprom_addr
	mov	a,r7
	add	a,r4
	movx	@dptr,a
	mov	a,r6
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mmc_clocks'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:110: void mmc_clocks (BYTE c) {
;	-----------------------------------------
;	 function mmc_clocks
;	-----------------------------------------
_mmc_clocks:
;	d:\ztex\include\ztex-flash1.h:121: mov	_MMC_IO,r4
	mov r2,dpl
;	# 125 "d:\\ztex\\include\\ztex-flash1.h"
	010014$:
	setb _IOC6
	nop
	clr _IOC6
;	# 130 "d:\\ztex\\include\\ztex-flash1.h"
	djnz r2,010014$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_read_byte'
;------------------------------------------------------------
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
;	-----------------------------------------
;	 function flash_read_byte
;	-----------------------------------------
_flash_read_byte:
;	d:\ztex\include\ztex-flash1.h:193: mov	a,_MMC_IO	// 2
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov c,_IOD0
;	# 223 "d:\\ztex\\include\\ztex-flash1.h"
	setb _IOC6
	rlc a
	clr _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov c,_IOD0
;	# 228 "d:\\ztex\\include\\ztex-flash1.h"
	setb _IOC6
	rlc a
	clr _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov c,_IOD0
;	# 233 "d:\\ztex\\include\\ztex-flash1.h"
	setb _IOC6
	rlc a
	clr _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov c,_IOD0
;	# 238 "d:\\ztex\\include\\ztex-flash1.h"
	setb _IOC6
	rlc a
	clr _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov c,_IOD0
;	# 243 "d:\\ztex\\include\\ztex-flash1.h"
	setb _IOC6
	rlc a
	clr _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov c,_IOD0
;	# 248 "d:\\ztex\\include\\ztex-flash1.h"
	setb _IOC6
	rlc a
	clr _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov c,_IOD0
;	# 253 "d:\\ztex\\include\\ztex-flash1.h"
	setb _IOC6
	rlc a
	clr _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov c,_IOD0
;	# 258 "d:\\ztex\\include\\ztex-flash1.h"
	setb _IOC6
	rlc a
	clr _IOC6
;	# 262 "d:\\ztex\\include\\ztex-flash1.h"
	mov dpl,a
	ret
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_read'
;------------------------------------------------------------
;len                       Allocated with name '_flash_read_PARM_2'
;buf                       Allocated to registers 
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:272: void flash_read(__xdata BYTE *buf, BYTE len) {
;	-----------------------------------------
;	 function flash_read
;	-----------------------------------------
_flash_read:
;	d:\ztex\include\ztex-conf.h:89: Add a vedor request for endpoint 0, 
;	# 276 "d:\\ztex\\include\\ztex-flash1.h"
	mov r2,_flash_read_PARM_2
;	# 357 "d:\\ztex\\include\\ztex-flash1.h"
	010012$:
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov c,_IOD0
;	# 360 "d:\\ztex\\include\\ztex-flash1.h"
	setb _IOC6
	rlc a
	clr _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov c,_IOD0
;	# 365 "d:\\ztex\\include\\ztex-flash1.h"
	setb _IOC6
	rlc a
	clr _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov c,_IOD0
;	# 370 "d:\\ztex\\include\\ztex-flash1.h"
	setb _IOC6
	rlc a
	clr _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov c,_IOD0
;	# 375 "d:\\ztex\\include\\ztex-flash1.h"
	setb _IOC6
	rlc a
	clr _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov c,_IOD0
;	# 380 "d:\\ztex\\include\\ztex-flash1.h"
	setb _IOC6
	rlc a
	clr _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov c,_IOD0
;	# 385 "d:\\ztex\\include\\ztex-flash1.h"
	setb _IOC6
	rlc a
	clr _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov c,_IOD0
;	# 390 "d:\\ztex\\include\\ztex-flash1.h"
	setb _IOC6
	rlc a
	clr _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov c,_IOD0
;	# 395 "d:\\ztex\\include\\ztex-flash1.h"
	setb _IOC6
	rlc a
	clr _IOC6
;	# 399 "d:\\ztex\\include\\ztex-flash1.h"
	movx @dptr,a
	inc dptr
	djnz r2,010012$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_write_byte'
;------------------------------------------------------------
;b                         Allocated to registers 
;------------------------------------------------------------
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
;	-----------------------------------------
;	 function flash_write_byte
;	-----------------------------------------
_flash_write_byte:
;	d:\ztex\include\ztex-flash1.h:473: orl 	_MMC_IO, #(MMC_bmCLK)
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
;	# 478 "d:\\ztex\\include\\ztex-flash1.h"
	mov a,dpl
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc a
;	# 480 "d:\\ztex\\include\\ztex-flash1.h"
	mov _IOC7,c
	setb _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc a
;	# 484 "d:\\ztex\\include\\ztex-flash1.h"
	clr _IOC6
	mov _IOC7,c
	setb _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc a
;	# 489 "d:\\ztex\\include\\ztex-flash1.h"
	clr _IOC6
	mov _IOC7,c
	setb _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc a
;	# 494 "d:\\ztex\\include\\ztex-flash1.h"
	clr _IOC6
	mov _IOC7,c
	setb _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc a
;	# 499 "d:\\ztex\\include\\ztex-flash1.h"
	clr _IOC6
	mov _IOC7,c
	setb _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc a
;	# 504 "d:\\ztex\\include\\ztex-flash1.h"
	clr _IOC6
	mov _IOC7,c
	setb _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc a
;	# 509 "d:\\ztex\\include\\ztex-flash1.h"
	clr _IOC6
	mov _IOC7,c
	setb _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc a
;	# 514 "d:\\ztex\\include\\ztex-flash1.h"
	clr _IOC6
	mov _IOC7,c
	setb _IOC6
	nop
	clr _IOC6
;	# 521 "d:\\ztex\\include\\ztex-flash1.h"
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_write'
;------------------------------------------------------------
;len                       Allocated with name '_flash_write_PARM_2'
;buf                       Allocated to registers 
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:528: void flash_write(__xdata BYTE *buf, BYTE len) {
;	-----------------------------------------
;	 function flash_write
;	-----------------------------------------
_flash_write:
;	d:\ztex\include\ztex-conf.h:99: #define[ADD_EP0_VENDOR_REQUEST((][,,$1,,$2));;][#define[EP0_VENDOR_REQUESTS_SU;][EP0_VENDOR_REQUESTS_SU;
;	# 532 "d:\\ztex\\include\\ztex-flash1.h"
	mov r2,_flash_read_PARM_2
;	# 602 "d:\\ztex\\include\\ztex-flash1.h"
	010013$:
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
;	# 604 "d:\\ztex\\include\\ztex-flash1.h"
	movx a,@dptr
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc a
;	# 606 "d:\\ztex\\include\\ztex-flash1.h"
	mov _IOC7,c
	setb _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc a
;	# 610 "d:\\ztex\\include\\ztex-flash1.h"
	clr _IOC6
	mov _IOC7,c
	setb _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc a
;	# 615 "d:\\ztex\\include\\ztex-flash1.h"
	clr _IOC6
	mov _IOC7,c
	setb _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc a
;	# 620 "d:\\ztex\\include\\ztex-flash1.h"
	clr _IOC6
	mov _IOC7,c
	setb _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc a
;	# 625 "d:\\ztex\\include\\ztex-flash1.h"
	clr _IOC6
	mov _IOC7,c
	setb _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc a
;	# 630 "d:\\ztex\\include\\ztex-flash1.h"
	clr _IOC6
	mov _IOC7,c
	setb _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc a
;	# 635 "d:\\ztex\\include\\ztex-flash1.h"
	clr _IOC6
	mov _IOC7,c
	setb _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	rlc a
;	# 640 "d:\\ztex\\include\\ztex-flash1.h"
	clr _IOC6
	mov _IOC7,c
	setb _IOC6
	inc dptr
	clr _IOC6
	djnz r2,010013$
;	# 649 "d:\\ztex\\include\\ztex-flash1.h"
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mmc_wait_busy'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	d:\ztex\include\ztex-conf.h:105: case $0:
;	-----------------------------------------
;	 function mmc_wait_busy
;	-----------------------------------------
_mmc_wait_busy:
;	d:\ztex\include\ztex-conf.h:107: break;
	mov	dptr,#_flash_ec
	mov	a,#0x03
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	orl	_IOC,#0x80
;	d:\ztex\include\ztex-flash1.h:659: for (i=0; (flash_read_byte()!=255) && i<65535; i++ ) ;
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
	push	ar7
	push	ar6
	lcall	_flash_read_byte
	mov	r5,dpl
	pop	ar6
	pop	ar7
	cjne	r5,#0xFF,00123$
	sjmp	00101$
00123$:
	mov	ar2,r6
	mov	ar3,r7
	mov	r4,#0x00
	mov	r5,#0x00
	clr	c
	mov	a,r2
	subb	a,#0xFF
	mov	a,r3
	subb	a,#0xFF
	mov	a,r4
	subb	a,#0x00
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
	inc	r6
	cjne	r6,#0x00,00106$
	inc	r7
	sjmp	00106$
00101$:
;	d:\ztex\include\ztex-flash1.h:661: if ( MMC__IO_DO & MMC_bmDO ) {
	mov	a,_IOD
	jnb	acc.0,00103$
;	d:\ztex\include\ztex-flash1.h:662: flash_ec = 0;
	mov	dptr,#_flash_ec
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:663: return 0;
	mov	dpl,#0x00
	ret
00103$:
;	d:\ztex\include\ztex-flash1.h:665: return 1;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mmc_select'
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:675: BYTE mmc_select() {
;	-----------------------------------------
;	 function mmc_select
;	-----------------------------------------
_mmc_select:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	orl	_IOC,#0x20
	mov	dpl,#0x08
	lcall	_mmc_clocks
	mov	r7,_IOC
	mov	a,#0xDF
	anl	a,r7
	mov	_IOC,a
;	d:\ztex\include\ztex-flash1.h:680: return mmc_wait_busy();
	ljmp	_mmc_wait_busy
;------------------------------------------------------------
;Allocation info for local variables in function 'mmc_deselect'
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:687: void mmc_deselect() {
;	-----------------------------------------
;	 function mmc_deselect
;	-----------------------------------------
_mmc_deselect:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	orl	_IOC,#0x80
	mov	dpl,#0x08
	lcall	_mmc_clocks
	orl	_IOC,#0x20
	mov	dpl,#0x08
	ljmp	_mmc_clocks
;------------------------------------------------------------
;Allocation info for local variables in function 'mmc_read_response'
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:698: BYTE mmc_read_response() {
;	-----------------------------------------
;	 function mmc_read_response
;	-----------------------------------------
_mmc_read_response:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	orl	_IOC,#0x80
;	d:\ztex\include\ztex-flash1.h:713: __endasm;    
	mov r2,#0x255
	010010$:
	lcall _flash_read_byte
	mov a,dpl
	jnb acc.7,010011$
	djnz r2, 010010$
	010011$:
	mov dptr,#_mmc_response
	movx @dptr,a
	mov dpl,a
	ret
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mmc_wait_start'
;------------------------------------------------------------
;to                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:741: BYTE mmc_wait_start() {
;	-----------------------------------------
;	 function mmc_wait_start
;	-----------------------------------------
_mmc_wait_start:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	orl	_IOC,#0x80
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	push	ar7
	push	ar6
	lcall	_flash_read_byte
	mov	r5,dpl
	pop	ar6
	pop	ar7
	cjne	r5,#0xFE,00117$
	sjmp	00105$
00117$:
	inc	r6
	cjne	r6,#0x00,00118$
	inc	r7
00118$:
	mov	a,r6
	orl	a,r7
	jnz	00103$
;	d:\ztex\include\ztex-flash1.h:747: return 1;
	mov	dpl,#0x01
	ret
00105$:
;	d:\ztex\include\ztex-flash1.h:749: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_read_init'
;------------------------------------------------------------
;s                         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:760: BYTE flash_read_init(DWORD s) {
;	-----------------------------------------
;	 function flash_read_init
;	-----------------------------------------
_flash_read_init:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	d:\ztex\include\ztex-flash1.h:761: if ( (MMC_IO & MMC_bmCS) == 0 ) {
	mov	a,_IOC
	jb	acc.5,00102$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x04
	ret
00102$:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_mmc_select
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00104$
;	d:\ztex\include\ztex-flash1.h:765: mmc_deselect();
	lcall	_mmc_deselect
;	d:\ztex\include\ztex-flash1.h:766: return FLASH_EC_BUSY;
	mov	dpl,#0x03
	ret
00104$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_mmc_clocks
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	d:\ztex\include\ztex-flash1.h:769: mmc_last_cmd = 18;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x12
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:770: mmc_buffer[0] = 18 | 64;
	mov	dptr,#_mmc_buffer
	mov	a,#0x52
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:771: if ( mmc_version == 0 ) {
	mov	dptr,#_mmc_version
	movx	a,@dptr
	mov	r3,a
	jnz	00106$
;	d:\ztex\include\ztex-flash1.h:772: s = s << 1;
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
;	d:\ztex\include\ztex-flash1.h:773: mmc_buffer[1] = s >> 16;
	mov	ar3,r6
	mov	dptr,#(_mmc_buffer + 0x0001)
	mov	a,r3
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:774: mmc_buffer[2] = s >> 8;
	mov	ar3,r5
	mov	dptr,#(_mmc_buffer + 0x0002)
	mov	a,r3
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:775: mmc_buffer[3] = s;
	mov	ar3,r4
	mov	dptr,#(_mmc_buffer + 0x0003)
	mov	a,r3
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:776: mmc_buffer[4] = 0;
	mov	dptr,#(_mmc_buffer + 0x0004)
	clr	a
	movx	@dptr,a
	sjmp	00107$
00106$:
;	d:\ztex\include\ztex-flash1.h:779: mmc_buffer[1] = s >> 24;
	mov	ar3,r7
	mov	dptr,#(_mmc_buffer + 0x0001)
	mov	a,r3
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:780: mmc_buffer[2] = s >> 16;
	mov	ar3,r6
	mov	dptr,#(_mmc_buffer + 0x0002)
	mov	a,r3
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:781: mmc_buffer[3] = s >> 8;
	mov	ar3,r5
	mov	dptr,#(_mmc_buffer + 0x0003)
	mov	a,r3
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:782: mmc_buffer[4] = s;
	mov	dptr,#(_mmc_buffer + 0x0004)
	mov	a,r4
	movx	@dptr,a
00107$:
;	d:\ztex\include\ztex-flash1.h:784: mmc_buffer[5] = 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:785: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:786: mmc_read_response();
	lcall	_mmc_read_response
;	d:\ztex\include\ztex-flash1.h:787: if ( mmc_response != 0 ) {
	mov	dptr,#_mmc_response
	movx	a,@dptr
	mov	r7,a
	jz	00109$
;	d:\ztex\include\ztex-flash1.h:788: mmc_deselect();
	lcall	_mmc_deselect
;	d:\ztex\include\ztex-flash1.h:789: return FLASH_EC_CMD_ERROR; 
	mov	dpl,#0x01
	ret
00109$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	lcall	_mmc_wait_start
	mov	a,dpl
	jz	00111$
;	d:\ztex\include\ztex-flash1.h:793: mmc_deselect();
	lcall	_mmc_deselect
;	d:\ztex\include\ztex-flash1.h:794: return FLASH_EC_TIMEOUT;
	mov	dpl,#0x02
	ret
00111$:
;	d:\ztex\include\ztex-flash1.h:796: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_read_next'
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:807: BYTE flash_read_next() {
;	-----------------------------------------
;	 function flash_read_next
;	-----------------------------------------
_flash_read_next:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x10
	lcall	_mmc_clocks
	lcall	_mmc_wait_start
	mov	a,dpl
	jz	00102$
;	d:\ztex\include\ztex-flash1.h:810: mmc_deselect();
	lcall	_mmc_deselect
;	d:\ztex\include\ztex-flash1.h:811: return FLASH_EC_TIMEOUT;
	mov	dpl,#0x02
	ret
00102$:
;	d:\ztex\include\ztex-flash1.h:813: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_read_finish'
;------------------------------------------------------------
;n                         Allocated to registers 
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:823: void flash_read_finish(WORD n) {
;	-----------------------------------------
;	 function flash_read_finish
;	-----------------------------------------
_flash_read_finish:
	mov	r6,dpl
	mov	r7,dph
;	d:\ztex\include\ztex-flash1.h:824: while ( n > 32 ) {
00101$:
	clr	c
	mov	a,#0x20
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00103$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_mmc_clocks
	pop	ar6
	pop	ar7
;	d:\ztex\include\ztex-flash1.h:826: n-=32;
	mov	a,r6
	add	a,#0xE0
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	sjmp	00101$
00103$:
;	d:\ztex\include\ztex-flash1.h:828: if ( n>0) mmc_clocks(n << 3);
	mov	a,r6
	orl	a,r7
	jz	00105$
	mov	a,r6
	swap	a
	rr	a
	anl	a,#0xF8
	mov	dpl,a
	lcall	_mmc_clocks
00105$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x10
	lcall	_mmc_clocks
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x0C
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
	mov	dptr,#_mmc_buffer
	mov	a,#0x4C
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
	mov	dptr,#(_mmc_buffer + 0x0001)
;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
	lcall	_mmc_read_response
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:833: mmc_deselect();
	ljmp	_mmc_deselect
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_write_init'
;------------------------------------------------------------
;s                         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:845: BYTE flash_write_init(DWORD s) {
;	-----------------------------------------
;	 function flash_write_init
;	-----------------------------------------
_flash_write_init:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	d:\ztex\include\ztex-flash1.h:846: if ( (MMC_IO & MMC_bmCS) == 0 ) {
	mov	a,_IOC
	jb	acc.5,00102$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x04
	ret
00102$:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_mmc_select
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00104$
;	d:\ztex\include\ztex-flash1.h:850: mmc_deselect();
	lcall	_mmc_deselect
;	d:\ztex\include\ztex-flash1.h:851: return FLASH_EC_BUSY;
	mov	dpl,#0x03
	ret
00104$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_mmc_clocks
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	d:\ztex\include\ztex-flash1.h:854: mmc_last_cmd = 25;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x19
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:855: mmc_buffer[0] = 25 | 64;
	mov	dptr,#_mmc_buffer
	mov	a,#0x59
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:856: if ( mmc_version == 0 ) {
	mov	dptr,#_mmc_version
	movx	a,@dptr
	mov	r3,a
	jnz	00106$
;	d:\ztex\include\ztex-flash1.h:857: s = s << 1;
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
;	d:\ztex\include\ztex-flash1.h:858: mmc_buffer[1] = s >> 16;
	mov	ar3,r6
	mov	dptr,#(_mmc_buffer + 0x0001)
	mov	a,r3
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:859: mmc_buffer[2] = s >> 8;
	mov	ar3,r5
	mov	dptr,#(_mmc_buffer + 0x0002)
	mov	a,r3
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:860: mmc_buffer[3] = s;
	mov	ar3,r4
	mov	dptr,#(_mmc_buffer + 0x0003)
	mov	a,r3
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:861: mmc_buffer[4] = 0;
	mov	dptr,#(_mmc_buffer + 0x0004)
	clr	a
	movx	@dptr,a
	sjmp	00107$
00106$:
;	d:\ztex\include\ztex-flash1.h:864: mmc_buffer[1] = s >> 24;
	mov	ar3,r7
	mov	dptr,#(_mmc_buffer + 0x0001)
	mov	a,r3
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:865: mmc_buffer[2] = s >> 16;
	mov	ar3,r6
	mov	dptr,#(_mmc_buffer + 0x0002)
	mov	a,r3
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:866: mmc_buffer[3] = s >> 8;
	mov	ar3,r5
	mov	dptr,#(_mmc_buffer + 0x0003)
	mov	a,r3
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:867: mmc_buffer[4] = s;
	mov	dptr,#(_mmc_buffer + 0x0004)
	mov	a,r4
	movx	@dptr,a
00107$:
;	d:\ztex\include\ztex-flash1.h:869: mmc_buffer[5] = 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:870: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:871: mmc_read_response();
	lcall	_mmc_read_response
;	d:\ztex\include\ztex-flash1.h:872: if ( mmc_response != 0 ) {
	mov	dptr,#_mmc_response
	movx	a,@dptr
	mov	r7,a
	jz	00109$
;	d:\ztex\include\ztex-flash1.h:873: mmc_deselect();
	lcall	_mmc_deselect
;	d:\ztex\include\ztex-flash1.h:874: return FLASH_EC_CMD_ERROR; 
	mov	dpl,#0x01
	ret
00109$:
;	d:\ztex\include\ztex-flash1.h:877: MMC_IO |= MMC_bmDI;				
	orl	_IOC,#0x80
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
	mov	dpl,#0xFC
	lcall	_flash_write_byte
;	d:\ztex\include\ztex-flash1.h:880: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_write_finish_sector'
;------------------------------------------------------------
;n                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:897: BYTE flash_write_finish_sector (WORD n) {
;	-----------------------------------------
;	 function flash_write_finish_sector
;	-----------------------------------------
_flash_write_finish_sector:
	mov	r6,dpl
	mov	r7,dph
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	r5,_IOC
	mov	a,#0x7F
	anl	a,r5
	mov	_IOC,a
;	d:\ztex\include\ztex-flash1.h:899: while ( n > 32 ) {
00101$:
	clr	c
	mov	a,#0x20
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00103$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_mmc_clocks
	pop	ar6
	pop	ar7
;	d:\ztex\include\ztex-flash1.h:901: n-=32;
	mov	a,r6
	add	a,#0xE0
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	sjmp	00101$
00103$:
;	d:\ztex\include\ztex-flash1.h:903: if ( n>0) mmc_clocks(n << 3);
	mov	a,r6
	orl	a,r7
	jz	00105$
	mov	a,r6
	swap	a
	rr	a
	anl	a,#0xF8
	mov	dpl,a
	lcall	_mmc_clocks
00105$:
;	d:\ztex\include\ztex-flash1.h:905: MMC_IO |= MMC_bmDI;
	orl	_IOC,#0x80
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x10
	lcall	_mmc_clocks
	lcall	_flash_read_byte
	mov	a,dpl
	anl	a,#0x0F
	mov	r7,a
	cjne	r7,#0x05,00125$
	sjmp	00107$
00125$:
;	d:\ztex\include\ztex-flash1.h:909: flash_ec = FLASH_EC_WRITE_ERROR; 
	mov	dptr,#_flash_ec
	mov	a,#0x06
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x0C
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
	mov	dptr,#_mmc_buffer
	mov	a,#0x4C
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
	mov	dptr,#(_mmc_buffer + 0x0001)
;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
	lcall	_mmc_read_response
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:912: mmc_deselect();
	lcall	_mmc_deselect
;	d:\ztex\include\ztex-flash1.h:913: return FLASH_EC_WRITE_ERROR; 
	mov	dpl,#0x06
	ret
00107$:
;	d:\ztex\include\ztex-flash1.h:915: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_write_finish'
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:924: void flash_write_finish () {
;	-----------------------------------------
;	 function flash_write_finish
;	-----------------------------------------
_flash_write_finish:
;	d:\ztex\include\ztex-flash1.h:925: mmc_wait_busy();			
	lcall	_mmc_wait_busy
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0xFD
	lcall	_flash_write_byte
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:928: mmc_deselect();
	ljmp	_mmc_deselect
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_write_next'
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:937: void flash_write_next () {
;	-----------------------------------------
;	 function flash_write_next
;	-----------------------------------------
_flash_write_next:
;	d:\ztex\include\ztex-flash1.h:938: mmc_wait_busy();			
	lcall	_mmc_wait_busy
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0xFC
	ljmp	_flash_write_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_init'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;j                         Allocated to registers r6 
;k                         Allocated to registers r7 
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:946: void flash_init() {
;	-----------------------------------------
;	 function flash_init
;	-----------------------------------------
_flash_init:
;	d:\ztex\include\ztex-flash1.h:957: flash_enabled = 1;
	mov	dptr,#_flash_enabled
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:958: flash_sector_size = 512;
	mov	dptr,#_flash_sector_size
	clr	a
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:959: mmc_version = 0;
	mov	dptr,#_mmc_version
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:961: OEMMC_PORT = OEMMC_PORT | ( MMC_bmCS | MMC_bmDI | MMC_bmCLK );
	orl	_OEC,#0xE0
;	d:\ztex\include\ztex-flash1.h:962: OEMMC__PORT_DO = OEMMC__PORT_DO & ~MMC_bmDO;
	mov	r7,_OED
	mov	a,#0xFE
	anl	a,r7
	mov	_OED,a
;	d:\ztex\include\ztex-flash1.h:964: MMC_IO |= MMC_bmDI;
	orl	_IOC,#0x80
;	d:\ztex\include\ztex-flash1.h:965: MMC_IO |= MMC_bmCS;
	orl	_IOC,#0x20
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x00
	lcall	_mmc_clocks
	lcall	_mmc_select
;	d:\ztex\include\ztex-flash1.h:969: flash_ec = FLASH_EC_BUSY;
	mov	dptr,#_flash_ec
	mov	a,#0x03
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
	mov	dptr,#_mmc_last_cmd
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
	mov	dptr,#_mmc_buffer
	mov	a,#0x40
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
	mov	dptr,#(_mmc_buffer + 0x0001)
;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x95
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
	lcall	_mmc_read_response
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_mmc_response
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	anl	a,#0xFE
	jnz	00196$
	mov	a,r6
	jz	00104$
00196$:
;	d:\ztex\include\ztex-flash1.h:973: wait(50);				
	mov	dptr,#0x0032
	lcall	_wait
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
	mov	dptr,#_mmc_last_cmd
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
	mov	dptr,#_mmc_buffer
	mov	a,#0x40
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
	mov	dptr,#(_mmc_buffer + 0x0001)
;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x95
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
	lcall	_mmc_read_response
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_mmc_response
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	anl	a,#0xFE
	jnz	00197$
	mov	a,r6
	jz	00198$
00197$:
	ljmp	00134$
00198$:
;	d:\ztex\include\ztex-conf.h:976: ERROR: no line number 976 in file d:\ztex\include\ztex-conf.h
00104$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x08
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
	mov	dptr,#_mmc_buffer
	mov	a,#0x48
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
	mov	dptr,#(_mmc_buffer + 0x0001)
;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0002)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
	mov	dptr,#(_mmc_buffer + 0x0003)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
	mov	dptr,#(_mmc_buffer + 0x0004)
	mov	a,#0xAA
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x87
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
	lcall	_mmc_read_response
;	d:\ztex\include\ztex-flash1.h:981: if ( ( mmc_response & bmBIT2) == 0 ) {
	mov	dptr,#_mmc_response
	movx	a,@dptr
	mov	r7,a
	jb	acc.2,00111$
;	d:\ztex\include\ztex-flash1.h:982: if ( (mmc_response & 0xfe) != 0 )  
	mov	a,r7
	anl	a,#0xFE
	jz	00201$
	ljmp	00134$
00201$:
;	d:\ztex\include\ztex-flash1.h:984: flash_read(mmc_buffer,4);
	mov	_flash_read_PARM_2,#0x04
	mov	dptr,#_mmc_buffer
	lcall	_flash_read
;	d:\ztex\include\ztex-flash1.h:985: if ( ( (mmc_buffer[2] & 15) != 1) || (mmc_buffer[3] != 0xaa ) ) {
	mov	dptr,#(_mmc_buffer + 0x0002)
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x0F
	cjne	r7,#0x01,00107$
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xAA,00204$
	sjmp	00108$
00204$:
00107$:
;	d:\ztex\include\ztex-flash1.h:986: flash_ec = FLASH_EC_NOTSUPPORTED;
	mov	dptr,#_flash_ec
	mov	a,#0x07
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:987: goto mmc_init_err;
	ljmp	00135$
00108$:
;	d:\ztex\include\ztex-flash1.h:989: mmc_version=1;
	mov	dptr,#_mmc_version
	mov	a,#0x01
	movx	@dptr,a
00111$:
;	d:\ztex\include\ztex-flash1.h:993: k=mmc_version ? 64 : 0;
	mov	dptr,#_mmc_version
	movx	a,@dptr
	mov	r7,a
	jz	00142$
	mov	a,#0x40
00142$:
	mov	r7,a
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	push	ar7
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x37
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
	mov	dptr,#_mmc_buffer
	mov	a,#0x77
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
	mov	dptr,#(_mmc_buffer + 0x0001)
;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
	lcall	_mmc_read_response
	pop	ar7
;	d:\ztex\include\ztex-flash1.h:995: if ( (mmc_response & 0xfe) == 0 )
	mov	dptr,#_mmc_response
	movx	a,@dptr
	mov	r6,a
	anl	a,#0xFE
	jnz	00113$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	push	ar7
	lcall	_mmc_clocks
	pop	ar7
;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x29
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
	mov	dptr,#_mmc_buffer
	mov	a,#0x69
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
	mov	dptr,#(_mmc_buffer + 0x0001)
	mov	a,r7
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
	mov	dptr,#(_mmc_buffer + 0x0002)
;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	push	ar7
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
	lcall	_mmc_read_response
	pop	ar7
00113$:
;	d:\ztex\include\ztex-flash1.h:997: j = mmc_response & 0xfe;
	mov	dptr,#_mmc_response
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0xFE
;	d:\ztex\include\ztex-flash1.h:31: #endif
	mov	r5,#0x00
00138$:
	mov	dptr,#_mmc_response
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x00,00208$
	ljmp	00117$
00208$:
	cjne	r5,#0xFF,00209$
00209$:
	jc	00210$
	ljmp	00117$
00210$:
;	d:\ztex\include\ztex-flash1.h:1000: wait(4);
	mov	dptr,#0x0004
	push	ar7
	push	ar6
	push	ar5
	lcall	_wait
	pop	ar5
	pop	ar6
	pop	ar7
;	d:\ztex\include\ztex-flash1.h:1001: if ( j ) {
	mov	a,r6
	jz	00115$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	push	ar7
	push	ar6
	push	ar5
	lcall	_mmc_clocks
	pop	ar5
	pop	ar6
	pop	ar7
;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
	mov	dptr,#_mmc_buffer
	mov	a,#0x41
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
	mov	dptr,#(_mmc_buffer + 0x0001)
	mov	a,r7
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
	mov	dptr,#(_mmc_buffer + 0x0002)
;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0xFF
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	push	ar7
	push	ar6
	push	ar5
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
	lcall	_mmc_read_response
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00139$
00115$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	push	ar7
	push	ar6
	push	ar5
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x37
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
	mov	dptr,#_mmc_buffer
	mov	a,#0x77
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
	mov	dptr,#(_mmc_buffer + 0x0001)
;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
	lcall	_mmc_read_response
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
	pop	ar5
	pop	ar6
	pop	ar7
;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x29
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
	mov	dptr,#_mmc_buffer
	mov	a,#0x69
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
	mov	dptr,#(_mmc_buffer + 0x0001)
	mov	a,r7
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
	mov	dptr,#(_mmc_buffer + 0x0002)
;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	push	ar7
	push	ar6
	push	ar5
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
	lcall	_mmc_read_response
	pop	ar5
	pop	ar6
	pop	ar7
00139$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	inc	r5
	ljmp	00138$
00117$:
	mov	dptr,#_mmc_response
	movx	a,@dptr
	mov	r7,a
	jz	00212$
	ljmp	00134$
00212$:
;	d:\ztex\include\ztex-flash1.h:1013: if ( mmc_version ) {
	mov	dptr,#_mmc_version
	movx	a,@dptr
	mov	r7,a
	jz	00125$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x3A
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
	mov	dptr,#_mmc_buffer
	mov	a,#0x7A
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
	mov	dptr,#(_mmc_buffer + 0x0001)
;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
	lcall	_mmc_read_response
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_mmc_response
	movx	a,@dptr
	mov	r7,a
	jz	00214$
	ljmp	00134$
00214$:
;	d:\ztex\include\ztex-flash1.h:1017: flash_read(mmc_buffer,4);
	mov	_flash_read_PARM_2,#0x04
	mov	dptr,#_mmc_buffer
	lcall	_flash_read
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_mmc_buffer
	movx	a,@dptr
	mov	r7,a
	jb	acc.6,00125$
;	d:\ztex\include\ztex-flash1.h:1019: mmc_version = 0;
	mov	dptr,#_mmc_version
	clr	a
	movx	@dptr,a
00125$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x09
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
	mov	dptr,#_mmc_buffer
	mov	a,#0x49
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
	mov	dptr,#(_mmc_buffer + 0x0001)
;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
	lcall	_mmc_read_response
;	d:\ztex\include\ztex-flash1.h:1023: if ( mmc_wait_start() ) {
	lcall	_mmc_wait_start
	mov	a,dpl
	jz	00127$
;	d:\ztex\include\ztex-flash1.h:1024: flash_ec = FLASH_EC_TIMEOUT;
	mov	dptr,#_flash_ec
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1025: goto mmc_init_err;
	ljmp	00135$
00127$:
;	d:\ztex\include\ztex-flash1.h:1027: flash_read(mmc_buffer,16);
	mov	_flash_read_PARM_2,#0x10
	mov	dptr,#_mmc_buffer
	lcall	_flash_read
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x10
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:1030: mmc_buffer[0] &= 192;
;	d:\ztex\include\ztex-flash1.h:1031: if ( (mmc_buffer[0] & 192) == 0  ) {
	mov	dptr,#_mmc_buffer
	movx	a,@dptr
	anl	a,#0xC0
	mov	r7,a
	movx	@dptr,a
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	anl	a,#0xC0
	jz	00218$
	ljmp	00132$
00218$:
;	d:\ztex\include\ztex-flash1.h:1032: i = (mmc_buffer[5] & 15) + ((mmc_buffer[10] >> 7) | ((mmc_buffer[9] & 3) << 1)) - 7;
	mov	dptr,#(_mmc_buffer + 0x0005)
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x0F
	mov	dptr,#(_mmc_buffer + 0x000a)
	movx	a,@dptr
	rl	a
	anl	a,#0x01
	mov	r5,a
	mov	dptr,#(_mmc_buffer + 0x0009)
	movx	a,@dptr
	anl	a,#0x03
	add	a,acc
	orl	a,r5
	add	a,r7
	add	a,#0xF9
	mov	r7,a
;	d:\ztex\include\ztex-flash1.h:1033: flash_sectors = ((mmc_buffer[8] >> 6) | (mmc_buffer[7] << 2) | ((mmc_buffer[6] & 3) << 10)) + 1;
	mov	dptr,#(_mmc_buffer + 0x0008)
	movx	a,@dptr
	rl	a
	rl	a
	anl	a,#0x03
	mov	r5,a
	mov	dptr,#(_mmc_buffer + 0x0007)
	movx	a,@dptr
	mov	r4,a
	clr	a
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r3,a
	mov	r2,#0x00
	mov	a,r5
	orl	ar4,a
	mov	a,r2
	orl	ar3,a
	mov	dptr,#(_mmc_buffer + 0x0006)
	movx	a,@dptr
	anl	a,#0x03
	mov	r5,a
	add	a,r5
	add	a,acc
	mov	r2,a
	clr	a
	mov	r5,a
	orl	ar4,a
	mov	a,r2
	orl	ar3,a
	inc	r4
	cjne	r4,#0x00,00219$
	inc	r3
00219$:
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r2,a
;	d:\ztex\include\ztex-flash1.h:1034: flash_sectors = flash_sectors << i;
	mov	b,r7
	inc	b
	sjmp	00221$
00220$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r2
	rlc	a
	mov	r2,a
00221$:
	djnz	b,00220$
	mov	dptr,#_flash_sectors
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	ljmp	00133$
00132$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	anl	ar6,#0xC0
	cjne	r6,#0x40,00129$
;	d:\ztex\include\ztex-flash1.h:1037: flash_sectors = ( ( ((DWORD)(mmc_buffer[7] & 63) << 16) | (mmc_buffer[8] << 8) | mmc_buffer[9]  ) +1 ) << 10;
	mov	dptr,#(_mmc_buffer + 0x0007)
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x3F
	mov	r6,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#(_mmc_buffer + 0x0008)
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	mov	ar0,r3
	mov	a,r2
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	a,r0
	orl	ar7,a
	mov	a,r1
	orl	ar6,a
	mov	a,r2
	orl	ar5,a
	mov	a,r3
	orl	ar4,a
	mov	dptr,#(_mmc_buffer + 0x0009)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	orl	ar7,a
	mov	a,r1
	orl	ar6,a
	mov	a,r2
	orl	ar5,a
	mov	a,r3
	orl	ar4,a
	inc	r7
	cjne	r7,#0x00,00224$
	inc	r6
	cjne	r6,#0x00,00224$
	inc	r5
	cjne	r5,#0x00,00224$
	inc	r4
00224$:
	mov	a,r6
	add	a,r6
	xch	a,r5
	rlc	a
	xch	a,r5
	add	a,acc
	xch	a,r5
	rlc	a
	mov	r4,a
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r6,a
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x03
	orl	a,r5
	mov	r5,a
	mov	r7,#0x00
	mov	dptr,#_flash_sectors
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	sjmp	00133$
00129$:
;	d:\ztex\include\ztex-flash1.h:1040: flash_ec = FLASH_EC_NOTSUPPORTED;
	mov	dptr,#_flash_ec
	mov	a,#0x07
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1041: goto mmc_init_err;
	sjmp	00135$
00133$:
;	d:\ztex\include\ztex-flash1.h:1044: flash_ec = 0;
	mov	dptr,#_flash_ec
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1045: mmc_deselect();
;	d:\ztex\include\ztex-flash1.h:1047: return;
;	d:\ztex\include\ztex-flash1.h:1049: mmc_init_cmd_err:
	ljmp	_mmc_deselect
00134$:
;	d:\ztex\include\ztex-flash1.h:1050: flash_ec = FLASH_EC_CMD_ERROR;
	mov	dptr,#_flash_ec
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1051: mmc_init_err:
00135$:
;	d:\ztex\include\ztex-flash1.h:1052: flash_enabled = 0;
	mov	dptr,#_flash_enabled
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1053: mmc_deselect();
	ljmp	_mmc_deselect
;------------------------------------------------------------
;Allocation info for local variables in function 'mmc_read_ep0'
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:1071: void mmc_read_ep0 () { 
;	-----------------------------------------
;	 function mmc_read_ep0
;	-----------------------------------------
_mmc_read_ep0:
;	d:\ztex\include\ztex-flash1.h:1072: if ( mmc_ep0_wait ) {
	mov	dptr,#_mmc_ep0_wait
	movx	a,@dptr
	mov	r7,a
	jz	00104$
;	d:\ztex\include\ztex-flash1.h:1073: mmc_ep0_wait = 0;
	mov	dptr,#_mmc_ep0_wait
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	lcall	_mmc_wait_start
	mov	a,dpl
	jz	00104$
;	d:\ztex\include\ztex-flash1.h:1075: flash_ec = FLASH_EC_TIMEOUT;
	mov	dptr,#_flash_ec
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x0C
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
	mov	dptr,#_mmc_buffer
	mov	a,#0x4C
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
	mov	dptr,#(_mmc_buffer + 0x0001)
;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
	lcall	_mmc_read_response
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:1078: mmc_deselect();
;	d:\ztex\include\ztex-flash1.h:1079: return;
	ljmp	_mmc_deselect
00104$:
;	d:\ztex\include\ztex-flash1.h:1083: flash_read(EP0BUF, ep0_payload_transfer);
	mov	dptr,#_ep0_payload_transfer
	movx	a,@dptr
	mov	_flash_read_PARM_2,a
	mov	dptr,#_EP0BUF
	lcall	_flash_read
;	d:\ztex\include\ztex-flash1.h:1084: if ( ep0_payload_remaining == 0 ) {
	mov	dptr,#_ep0_payload_remaining
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00108$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x10
	lcall	_mmc_clocks
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x0C
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
	mov	dptr,#_mmc_buffer
	mov	a,#0x4C
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
	mov	dptr,#(_mmc_buffer + 0x0001)
;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
	lcall	_mmc_read_response
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:1089: mmc_deselect();
	ljmp	_mmc_deselect
00108$:
;	d:\ztex\include\ztex-flash1.h:1091: else if ( (ep0_payload_remaining & 511) == 0 ) {
	mov	a,r6
	jnz	00127$
	mov	a,r7
	jnb	acc.0,00128$
00127$:
	ret
00128$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x10
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:1093: mmc_ep0_wait = 1;
	mov	dptr,#_mmc_ep0_wait
	mov	a,#0x01
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mmc_send_ep0'
;------------------------------------------------------------
;	d:\ztex\include\ztex-flash1.h:1169: void mmc_send_ep0 () { 
;	-----------------------------------------
;	 function mmc_send_ep0
;	-----------------------------------------
_mmc_send_ep0:
;	d:\ztex\include\ztex-flash1.h:1170: if ( mmc_ep0_wait ) {
	mov	dptr,#_mmc_ep0_wait
	movx	a,@dptr
	mov	r7,a
	jz	00102$
;	d:\ztex\include\ztex-flash1.h:1171: mmc_ep0_wait = 0;
	mov	dptr,#_mmc_ep0_wait
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1172: mmc_wait_busy();			
	lcall	_mmc_wait_busy
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0xFC
	lcall	_flash_write_byte
00102$:
;	d:\ztex\include\ztex-flash1.h:1176: flash_write(EP0BUF, ep0_payload_transfer);
	mov	dptr,#_ep0_payload_transfer
	movx	a,@dptr
	mov	_flash_write_PARM_2,a
	mov	dptr,#_EP0BUF
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:1177: if ( (ep0_payload_remaining & 511) == 0 ) {
	mov	dptr,#_ep0_payload_remaining
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	jnz	00125$
	mov	a,r7
	jnb	acc.0,00126$
00125$:
	ret
00126$:
;	d:\ztex\include\ztex-flash1.h:1178: MMC_IO |= MMC_bmDI;
	orl	_IOC,#0x80
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x10
	lcall	_mmc_clocks
	lcall	_flash_read_byte
	mov	a,dpl
	anl	a,#0x0F
	mov	r7,a
	cjne	r7,#0x05,00127$
	sjmp	00104$
00127$:
;	d:\ztex\include\ztex-flash1.h:1182: flash_ec = FLASH_EC_WRITE_ERROR; 
	mov	dptr,#_flash_ec
	mov	a,#0x06
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x0C
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
	mov	dptr,#_mmc_buffer
	mov	a,#0x4C
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
	mov	dptr,#(_mmc_buffer + 0x0001)
;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
	lcall	_mmc_read_response
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:1185: mmc_deselect();
	lcall	_mmc_deselect
00104$:
;	d:\ztex\include\ztex-flash1.h:1188: if ( ep0_payload_remaining != 0 ) {
	mov	dptr,#_ep0_payload_remaining
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00106$
;	d:\ztex\include\ztex-flash1.h:1189: mmc_ep0_wait = 1;
	mov	dptr,#_mmc_ep0_wait
	mov	a,#0x01
	movx	@dptr,a
	ret
00106$:
;	d:\ztex\include\ztex-flash1.h:1192: mmc_wait_busy();			
	lcall	_mmc_wait_busy
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0xFD
	lcall	_flash_write_byte
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:1195: mmc_deselect();
	ljmp	_mmc_deselect
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_fpga_int'
;------------------------------------------------------------
;mode                      Allocated to registers r7 
;k                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
;	-----------------------------------------
;	 function reset_fpga_int
;	-----------------------------------------
_reset_fpga_int:
	mov	r7,dpl
;	d:\ztex\include\ztex-fpga3.h:38: IFCONFIG = bmBIT7;
	mov	dptr,#_IFCONFIG
	mov	a,#0x80
	movx	@dptr,a
;	d:\ztex\include\ezregs.h:46: __endasm;
	nop
	nop
	nop
	nop
;	d:\ztex\include\ztex-fpga3.h:40: PORTACFG = 0;
	mov	dptr,#_PORTACFG
;	d:\ztex\include\ztex-fpga3.h:41: PORTCCFG = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_PORTCCFG
	movx	@dptr,a
;	d:\ztex\include\ztex-fpga3.h:43: OEA = bmBIT1 | bmBIT3 | bmBIT4 | bmBIT5 | bmBIT6 | bmBIT7;
	mov	_OEA,#0xFA
;	d:\ztex\include\ztex-fpga3.h:44: IOA = bmBIT7 | mode;
	mov	a,#0x80
	orl	a,r7
	mov	_IOA,a
;	d:\ztex\include\ztex-fpga3.h:45: wait(10);
	mov	dptr,#0x000A
	push	ar7
	lcall	_wait
	pop	ar7
;	d:\ztex\include\ztex-fpga3.h:47: OEC &= ~bmBIT3;
	mov	r6,_OEC
	mov	a,#0xF7
	anl	a,r6
	mov	_OEC,a
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	a,#0x02
	orl	a,r7
	mov	_IOA,a
;	d:\ztex\include\ztex-fpga3.h:51: while (!IOA0 && k<65535)
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
	jb	_IOA0,00104$
	mov	ar2,r6
	mov	ar3,r7
	mov	r4,#0x00
	mov	r5,#0x00
	clr	c
	mov	a,r2
	subb	a,#0xFF
	mov	a,r3
	subb	a,#0xFF
	mov	a,r4
	subb	a,#0x00
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00104$
;	d:\ztex\include\ztex-fpga3.h:52: k++;
	inc	r6
	cjne	r6,#0x00,00102$
	inc	r7
	sjmp	00102$
00104$:
;	d:\ztex\include\ztex-fpga3.h:54: fpga_init_b = IOA0 ? 200 : 100;
	jnb	_IOA0,00107$
	mov	r7,#0xC8
	sjmp	00108$
00107$:
	mov	r7,#0x64
00108$:
	mov	dptr,#_fpga_init_b
	mov	a,r7
	movx	@dptr,a
;	d:\ztex\include\ztex-fpga3.h:55: fpga_bytes = 0;
	mov	dptr,#_fpga_bytes
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-fpga3.h:56: fpga_checksum = 0;
	mov	dptr,#_fpga_checksum
	clr	a
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_fpga'
;------------------------------------------------------------
;	d:\ztex\include\ztex-fpga3.h:59: static void reset_fpga () {
;	-----------------------------------------
;	 function reset_fpga
;	-----------------------------------------
_reset_fpga:
;	d:\ztex\include\ztex-fpga3.h:60: reset_fpga_int(bmBIT5);
	mov	dpl,#0x20
	ljmp	_reset_fpga_int
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_fpga_flash'
;------------------------------------------------------------
;	d:\ztex\include\ztex-fpga3.h:63: static void reset_fpga_flash () {
;	-----------------------------------------
;	 function reset_fpga_flash
;	-----------------------------------------
_reset_fpga_flash:
;	d:\ztex\include\ztex-fpga3.h:64: reset_fpga_int(bmBIT5 | bmBIT6);
	mov	dpl,#0x60
	ljmp	_reset_fpga_int
;------------------------------------------------------------
;Allocation info for local variables in function 'init_fpga_configuration'
;------------------------------------------------------------
;	d:\ztex\include\ztex-fpga3.h:70: static void init_fpga_configuration () {
;	-----------------------------------------
;	 function init_fpga_configuration
;	-----------------------------------------
_init_fpga_configuration:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	ljmp	_reset_fpga
;------------------------------------------------------------
;Allocation info for local variables in function 'post_fpga_config'
;------------------------------------------------------------
;	d:\ztex\include\ztex-fpga3.h:80: static void post_fpga_config () {
;	-----------------------------------------
;	 function post_fpga_config
;	-----------------------------------------
_post_fpga_config:
;	usb-test.c:38: pwdStatusSector = FLASH_FIRST_FREE_SECTOR;
	mov	dptr,#_pwdStatusSector
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	usb-test.c:41: OEB = 0xFF;
	mov	_OEB,#0xFF
;	usb-test.c:42: OEA = bmBIT2 | bmBIT3 | bmBIT4 | bmBIT5 | bmBIT6 | bmBIT7;
	mov	_OEA,#0xFC
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	a,_OEA
	cpl	a
	mov	r7,a
	anl	_IOA,a
;	usb-test.c:53: FPGA_RST = 1;
	setb	_IOA5
;	d:\ztex\include\ztex-utils.h:37: __endasm;
	nop
;	usb-test.c:55: FPGA_RST = 0;
	clr	_IOA5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'finish_fpga_configuration'
;------------------------------------------------------------
;w                         Allocated to registers r7 
;------------------------------------------------------------
;	d:\ztex\include\ztex-fpga3.h:87: static void finish_fpga_configuration () {
;	-----------------------------------------
;	 function finish_fpga_configuration
;	-----------------------------------------
_finish_fpga_configuration:
;	d:\ztex\include\ztex-fpga3.h:89: fpga_init_b += IOA0 ? 20 : 10;
	jnb	_IOA0,00108$
	mov	r7,#0x14
	sjmp	00109$
00108$:
	mov	r7,#0x0A
00109$:
	mov	dptr,#_fpga_init_b
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	add	a,r6
	movx	@dptr,a
;	d:\ztex\include\ztex-fpga3.h:91: for ( w=0; w<64; w++ ) {
	mov	r7,#0x00
00104$:
;	d:\ztex\include\ztex-fpga3.h:92: IOA3 = 1; IOA3 = 0; 
	setb	_IOA3
	clr	_IOA3
;	d:\ztex\include\ztex-fpga3.h:91: for ( w=0; w<64; w++ ) {
	inc	r7
	cjne	r7,#0x40,00129$
00129$:
	jc	00104$
;	d:\ztex\include\ztex-fpga3.h:94: IOA7 = 1;
	setb	_IOA7
;	d:\ztex\include\ztex-fpga3.h:95: IOA3 = 1; IOA3 = 0;
	setb	_IOA3
	clr	_IOA3
;	d:\ztex\include\ztex-fpga3.h:96: IOA3 = 1; IOA3 = 0;
	setb	_IOA3
	clr	_IOA3
;	d:\ztex\include\ztex-fpga3.h:97: IOA3 = 1; IOA3 = 0;
	setb	_IOA3
	clr	_IOA3
;	d:\ztex\include\ztex-fpga3.h:98: IOA3 = 1; IOA3 = 0;
	setb	_IOA3
	clr	_IOA3
;	d:\ztex\include\ztex-fpga3.h:100: OEA = OEA & 5;
	anl	_OEA,#0x05
;	d:\ztex\include\ztex-fpga3.h:101: fpga_init_b += IOA0 ? 2 : 1;
	jnb	_IOA0,00110$
	mov	r7,#0x02
	sjmp	00111$
00110$:
	mov	r7,#0x01
00111$:
	mov	dptr,#_fpga_init_b
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	add	a,r6
	movx	@dptr,a
;	d:\ztex\include\ztex-fpga3.h:102: if ( IOA1 )  {
	jnb	_IOA1,00103$
;	d:\ztex\include\ztex-fpga3.h:103: IOA1 = 1;		
	setb	_IOA1
;	d:\ztex\include\ztex-fpga3.h:104: post_fpga_config();
	lcall	_post_fpga_config
00103$:
;	d:\ztex\include\ztex-fpga3.h:107: IOA1 = 1;		
	setb	_IOA1
;	d:\ztex\include\ztex-fpga3.h:108: OEA |= bmBIT1; 
	orl	_OEA,#0x02
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fpga_send_ep0'
;------------------------------------------------------------
;oOED                      Allocated with name '_fpga_send_ep0_oOED_1_131'
;------------------------------------------------------------
;	d:\ztex\include\ztex-fpga3.h:143: void fpga_send_ep0() {
;	-----------------------------------------
;	 function fpga_send_ep0
;	-----------------------------------------
_fpga_send_ep0:
;	d:\ztex\include\ztex-fpga3.h:145: oOED = OED;
	mov	_fpga_send_ep0_oOED_1_131,_OED
;	d:\ztex\include\ztex-fpga3.h:146: OED = 255;
	mov	_OED,#0xFF
;	d:\ztex\include\ztex-fpga3.h:147: fpga_bytes += ep0_payload_transfer;
	mov	dptr,#_ep0_payload_transfer
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_fpga_bytes
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar0,r6
	mov	r1,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_fpga_bytes
	mov	a,r0
	add	a,r2
	movx	@dptr,a
	mov	a,r1
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-fpga3.h:182: ,,
	mov dptr,#_EP0BCL
	movx a,@dptr
	jz 010000$
	mov r2,a
	mov _AUTOPTRL1,#(_EP0BUF)
	mov _AUTOPTRH1,#(_EP0BUF >> 8)
	mov _AUTOPTRSETUP,#0x07
	mov dptr,#_fpga_checksum
	movx a,@dptr
	mov r1,a
	mov dptr,#_XAUTODAT1
	010001$:
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	movx a,@dptr
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov _IOD,a
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	setb _IOA3
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	add a,r1
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov r1,a
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	clr _IOA3
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	djnz r2, 010001$
;	# 168 "d:\\ztex\\include\\ztex-fpga3.h"
	mov dptr,#_fpga_checksum
	mov a,r1
	movx @dptr,a
	010000$:
;	d:\ztex\include\ztex-fpga3.h:183: fpga_send_ep0();
	mov	_OED,_fpga_send_ep0_oOED_1_131
;	d:\ztex\include\ztex-fpga3.h:184: ));;
	mov	dptr,#_EP0BCL
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x40,00108$
00108$:
	jnc	00103$
;	d:\ztex\include\ztex-fpga3.h:185: 
	ljmp	_finish_fpga_configuration
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fpga_send_bitstream_from_flash'
;------------------------------------------------------------
;size                      Allocated to registers 
;------------------------------------------------------------
;	d:\ztex\include\ztex-fpga3.h:193: void fpga_send_bitstream_from_flash (WORD size) {
;	-----------------------------------------
;	 function fpga_send_bitstream_from_flash
;	-----------------------------------------
_fpga_send_bitstream_from_flash:
;	d:\ztex\include\ztex-fpga3.h:294: #endif  /*ZTEX_FPGA_H*/
	push _OED
	mov _OED,#0
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	mov r5,dpl
;	# 200 "d:\\ztex\\include\\ztex-fpga3.h"
	mov r6,dph
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
;	# 203 "d:\\ztex\\include\\ztex-fpga3.h"
	mov dptr,#_fpga_bytes
	movx a,@dptr
	mov r1,a
	inc dptr
	movx a,@dptr
	mov r2,a
	inc dptr
	movx a,@dptr
	mov r3,a
	inc dptr
	movx a,@dptr
	mov r4,a
	mov dptr,#_fpga_bytes
	mov a,r5
	add a,r1
	movx @dptr,a
	mov a,r6
	addc a,r2
	inc dptr
	movx @dptr,a
	mov a,#0
	addc a,r3
	inc dptr
	movx @dptr,a
	mov a,#0
	addc a,r4
	inc dptr
	movx @dptr,a
	010003$:
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	cjne r5,#0x00,010002$
;	# 235 "d:\\ztex\\include\\ztex-fpga3.h"
	cjne r6,#0x00,010002$
	pop _OED
	ret
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	010002$:
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	setb _IOA3
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	setb _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	clr _IOA3
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	clr _IOC6
;	# 243 "d:\\ztex\\include\\ztex-fpga3.h"
	setb _IOA3
	setb _IOC6
	clr _IOA3
	clr _IOC6
	setb _IOA3
	setb _IOC6
	clr _IOA3
	clr _IOC6
	setb _IOA3
	setb _IOC6
	clr _IOA3
	clr _IOC6
	setb _IOA3
	setb _IOC6
	clr _IOA3
	clr _IOC6
	setb _IOA3
	setb _IOC6
	clr _IOA3
	clr _IOC6
	setb _IOA3
	setb _IOC6
	clr _IOA3
	clr _IOC6
	setb _IOA3
	setb _IOC6
	clr _IOA3
	clr _IOC6
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	dec r5
;	# 31 "d:\\ztex\\include\\ztex-conf.h"
	cjne r5,#0xff,010003$
;	# 281 "d:\\ztex\\include\\ztex-fpga3.h"
	dec r6
	sjmp 010003$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fpga_configure_from_flash'
;------------------------------------------------------------
;force                     Allocated to registers r7 
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;k                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	d:\ztex\include\ztex-fpga-flash.h:46: BYTE fpga_configure_from_flash( BYTE force) {
;	-----------------------------------------
;	 function fpga_configure_from_flash
;	-----------------------------------------
_fpga_configure_from_flash:
;	d:\ztex\include\ztex-fpga-flash.h:48: if ( force == 0 ) {
	mov	a,dpl
	mov	r7,a
	jnz	00104$
;	d:\ztex\include\ztex-fpga-flash.h:49: OEA &= ~bmBIT1;
	mov	r7,_OEA
	mov	a,#0xFD
	anl	a,r7
	mov	_OEA,a
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	jnb	_IOA1,00104$
;	d:\ztex\include\ztex-fpga-flash.h:51: IOA1 = 1;		
	setb	_IOA1
;	d:\ztex\include\ztex-fpga-flash.h:52: OEA |= bmBIT1;
	orl	_OEA,#0x02
;	d:\ztex\include\ztex-fpga-flash.h:53: return 1;
	mov	dpl,#0x01
	ret
00104$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	lcall	_reset_fpga_flash
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_flash_read_init
	mov	a,dpl
	jz	00133$
;	d:\ztex\include\ztex-fpga-flash.h:63: return 2;
	mov	dpl,#0x02
	ret
;	d:\ztex\include\ztex-fpga-flash.h:64: for ( i=0; i<8 && flash_read_byte()==fpga_flash_boot_id[i]; i++ );
00133$:
	mov	r6,#0x00
	mov	r7,#0x00
00121$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	jnc	00107$
	push	ar7
	push	ar6
	lcall	_flash_read_byte
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	a,r6
	add	a,#_fpga_flash_boot_id
	mov	dpl,a
	mov	a,r7
	addc	a,#(_fpga_flash_boot_id >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,r5
	cjne	a,ar4,00107$
	inc	r6
	cjne	r6,#0x00,00121$
	inc	r7
	sjmp	00121$
00107$:
;	d:\ztex\include\ztex-fpga-flash.h:65: if ( i != 8 ) {
	cjne	r6,#0x08,00175$
	cjne	r7,#0x00,00175$
	sjmp	00109$
00175$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_flash_sector_size
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	clr	c
	subb	a,r6
	mov	dpl,a
	mov	a,r5
	subb	a,r7
	mov	dph,a
	lcall	_flash_read_finish
;	d:\ztex\include\ztex-fpga-flash.h:67: return 3;
	mov	dpl,#0x03
	ret
00109$:
;	d:\ztex\include\ztex-fpga-flash.h:69: i = flash_read_byte();
	lcall	_flash_read_byte
	mov	r6,dpl
	mov	r7,#0x00
;	d:\ztex\include\ztex-fpga-flash.h:70: i |= flash_read_byte() << 8;
	push	ar7
	push	ar6
	lcall	_flash_read_byte
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	ar4,r5
	clr	a
	orl	ar6,a
	mov	a,r4
	orl	ar7,a
;	d:\ztex\include\ztex-fpga-flash.h:71: j = flash_read_byte();
	push	ar7
	push	ar6
	lcall	_flash_read_byte
	mov	r4,dpl
	mov	r5,#0x00
;	d:\ztex\include\ztex-fpga-flash.h:72: j |= flash_read_byte() << 8;
	push	ar5
	push	ar4
	lcall	_flash_read_byte
	mov	r3,dpl
	pop	ar4
	pop	ar5
	mov	ar2,r3
	clr	a
	orl	ar4,a
	mov	a,r2
	orl	ar5,a
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_flash_sector_size
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,#0xF4
	mov	dpl,a
	mov	a,r3
	addc	a,#0xFF
	mov	dph,a
	push	ar5
	push	ar4
	lcall	_flash_read_finish
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	d:\ztex\include\ztex-fpga-flash.h:74: if ( i==0 )
	mov	a,r6
	orl	a,r7
	jnz	00111$
;	d:\ztex\include\ztex-fpga-flash.h:75: return 3;
	mov	dpl,#0x03
	ret
00111$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_flash_read_init
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00139$
;	d:\ztex\include\ztex-fpga-flash.h:79: return 2;
	mov	dpl,#0x02
	ret
;	d:\ztex\include\ztex-fpga-flash.h:80: for ( k=1; k<i; k++ ) {
00139$:
	mov	r2,#0x01
	mov	r3,#0x00
00124$:
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	jnc	00116$
;	d:\ztex\include\ztex-fpga-flash.h:81: fpga_send_bitstream_from_flash( flash_sector_size );
	mov	dptr,#_flash_sector_size
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_fpga_send_bitstream_from_flash
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	lcall	_flash_read_next
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00125$
;	d:\ztex\include\ztex-fpga-flash.h:83: return 2;
	mov	dpl,#0x02
	ret
00125$:
;	d:\ztex\include\ztex-fpga-flash.h:80: for ( k=1; k<i; k++ ) {
	inc	r2
	cjne	r2,#0x00,00124$
	inc	r3
	sjmp	00124$
00116$:
;	d:\ztex\include\ztex-fpga-flash.h:85: fpga_send_bitstream_from_flash( j );
	mov	dpl,r4
	mov	dph,r5
	push	ar5
	push	ar4
	lcall	_fpga_send_bitstream_from_flash
	pop	ar4
	pop	ar5
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_flash_sector_size
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	clr	c
	subb	a,r4
	mov	dpl,a
	mov	a,r7
	subb	a,r5
	mov	dph,a
	lcall	_flash_read_finish
	lcall	_finish_fpga_configuration
;	d:\ztex\include\ztex-fpga-flash.h:90: OEA &= ~bmBIT1;
	mov	r7,_OEA
	mov	a,#0xFD
	anl	a,r7
	mov	_OEA,a
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	jnb	_IOA1,00118$
;	d:\ztex\include\ztex-fpga-flash.h:92: IOA1 = 1;		
	setb	_IOA1
;	d:\ztex\include\ztex-fpga-flash.h:93: OEA |= bmBIT1;
	orl	_OEA,#0x02
;	d:\ztex\include\ztex-fpga-flash.h:94: return 0;
	mov	dpl,#0x00
	ret
00118$:
;	d:\ztex\include\ztex-fpga-flash.h:97: IOA1 = 1;		
	setb	_IOA1
;	d:\ztex\include\ztex-fpga-flash.h:98: OEA |= bmBIT1;
	orl	_OEA,#0x02
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x04
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fpga_first_free_sector'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	d:\ztex\include\ztex-fpga-flash.h:108: WORD fpga_first_free_sector() {
;	-----------------------------------------
;	 function fpga_first_free_sector
;	-----------------------------------------
_fpga_first_free_sector:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_flash_read_init
;	d:\ztex\include\ztex-fpga-flash.h:111: for ( i=0; i<8 && flash_read_byte()==fpga_flash_boot_id[i]; i++ );
	mov	r7,#0x00
00106$:
	cjne	r7,#0x08,00123$
00123$:
	jnc	00101$
	push	ar7
	lcall	_flash_read_byte
	mov	r6,dpl
	pop	ar7
	mov	a,r7
	mov	dptr,#_fpga_flash_boot_id
	movc	a,@a+dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar5,00101$
	inc	r7
	sjmp	00106$
00101$:
;	d:\ztex\include\ztex-fpga-flash.h:112: if ( i != 8 ) {
	cjne	r7,#0x08,00127$
	sjmp	00103$
00127$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	r6,#0x00
	mov	dptr,#_flash_sector_size
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	clr	c
	subb	a,r7
	mov	dpl,a
	mov	a,r5
	subb	a,r6
	mov	dph,a
	lcall	_flash_read_finish
;	d:\ztex\include\ztex-fpga-flash.h:114: return 0;
	mov	dptr,#0x0000
	ret
00103$:
;	d:\ztex\include\ztex-fpga-flash.h:116: i=flash_read_byte();
	lcall	_flash_read_byte
	mov	r7,dpl
;	d:\ztex\include\ztex-fpga-flash.h:117: j=flash_read_byte();
	push	ar7
	lcall	_flash_read_byte
	mov	r6,dpl
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_flash_sector_size
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,#0xF6
	mov	dpl,a
	mov	a,r5
	addc	a,#0xFF
	mov	dph,a
	push	ar6
	lcall	_flash_read_finish
	pop	ar6
	pop	ar7
;	d:\ztex\include\ztex-fpga-flash.h:120: return (i | (j<<8))+1;
	mov	ar5,r6
	clr	a
	mov	r6,a
	mov	r4,a
	mov	a,r7
	orl	ar6,a
	mov	a,r4
	orl	ar5,a
	mov	dpl,r6
	mov	dph,r5
	inc	dptr
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fpga_configure_from_flash_init'
;------------------------------------------------------------
;	d:\ztex\include\ztex-fpga-flash.h:128: void fpga_configure_from_flash_init() {
;	-----------------------------------------
;	 function fpga_configure_from_flash_init
;	-----------------------------------------
_fpga_configure_from_flash_init:
;	d:\ztex\include\ztex-fpga-flash.h:129: if ( ! flash_enabled ) {
	mov	dptr,#_flash_enabled
	movx	a,@dptr
	mov	r7,a
	jnz	00102$
;	d:\ztex\include\ztex-fpga-flash.h:130: fpga_flash_result = 2;
	mov	dptr,#_fpga_flash_result
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ztex-fpga-flash.h:131: return;
	ret
00102$:
;	d:\ztex\include\ztex-fpga-flash.h:134: fpga_flash_result = fpga_configure_from_flash(0);
	mov	dpl,#0x00
	lcall	_fpga_configure_from_flash
	mov	r7,dpl
	mov	dptr,#_fpga_flash_result
	mov	a,r7
	movx	@dptr,a
;	d:\ztex\include\ztex-fpga-flash.h:135: if ( fpga_flash_result == 1 ) {
	cjne	r7,#0x01,00106$
;	d:\ztex\include\ztex-fpga-flash.h:136: post_fpga_config();
	ljmp	_post_fpga_config
00106$:
;	d:\ztex\include\ztex-fpga-flash.h:138: else if ( fpga_flash_result == 4 ) {
	cjne	r7,#0x04,00108$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x00
	lcall	_fpga_configure_from_flash
	mov	a,dpl
	mov	dptr,#_fpga_flash_result
	movx	@dptr,a
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'abscode_identity'
;------------------------------------------------------------
;	d:\ztex\include\ztex-conf.h:31: ]
;	-----------------------------------------
;	 function abscode_identity
;	-----------------------------------------
_abscode_identity:
;	d:\ztex\include\ztex-descriptors.h:181: + 64
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
;	# 165 "d:\\ztex\\include\\ztex-descriptors.h"
	.db 0 + 1 + 2 + 4
;	# 187 "d:\\ztex\\include\\ztex-descriptors.h"
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
	.area CSEG (CODE)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resetToggleData'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:34: static void resetToggleData () {
;	-----------------------------------------
;	 function resetToggleData
;	-----------------------------------------
_resetToggleData:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_TOGCTL
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:46: TOGCTL = 0 | bmBIT5;
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
;	d:\ztex\include\ztex-isr.h:48: TOGCTL = 0x10 | bmBIT5;
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_TOGCTL
	mov	a,#0x20
	movx	@dptr,a
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x30
	movx	@dptr,a
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:51: TOGCTL = 1 | bmBIT5;
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
;	d:\ztex\include\ztex-isr.h:55: TOGCTL = 0x11 | bmBIT5;
	mov	dptr,#_TOGCTL
	mov	a,#0x21
	movx	@dptr,a
	mov	a,#0x11
	movx	@dptr,a
	mov	a,#0x31
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendStringDescriptor'
;------------------------------------------------------------
;hiAddr                    Allocated with name '_sendStringDescriptor_PARM_2'
;size                      Allocated with name '_sendStringDescriptor_PARM_3'
;loAddr                    Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:68: static void sendStringDescriptor (BYTE loAddr, BYTE hiAddr, BYTE size)
;	-----------------------------------------
;	 function sendStringDescriptor
;	-----------------------------------------
_sendStringDescriptor:
	mov	r7,dpl
;	d:\ztex\include\ztex-isr.h:71: if ( size > 31) size = 31;
	mov	a,_sendStringDescriptor_PARM_3
	add	a,#0xff - 0x1F
	jnc	00102$
	mov	_sendStringDescriptor_PARM_3,#0x1F
00102$:
;	d:\ztex\include\ztex-isr.h:72: if (SETUPDAT[7] == 0 && SETUPDAT[6]<size ) size = SETUPDAT[6];
	mov	dptr,#(_SETUPDAT + 0x0007)
	movx	a,@dptr
	jnz	00104$
	mov	dptr,#(_SETUPDAT + 0x0006)
	movx	a,@dptr
	mov	r6,a
	clr	c
	subb	a,_sendStringDescriptor_PARM_3
	jnc	00104$
	mov	dptr,#(_SETUPDAT + 0x0006)
	movx	a,@dptr
	mov	_sendStringDescriptor_PARM_3,a
00104$:
;	d:\ztex\include\ztex-isr.h:73: AUTOPTRSETUP = 7;
	mov	_AUTOPTRSETUP,#0x07
;	d:\ztex\include\ztex-isr.h:74: AUTOPTRL1 = loAddr;
	mov	_AUTOPTRL1,r7
;	d:\ztex\include\ztex-isr.h:75: AUTOPTRH1 = hiAddr;
	mov	_AUTOPTRH1,_sendStringDescriptor_PARM_2
;	d:\ztex\include\ztex-isr.h:76: AUTOPTRL2 = (BYTE)(((unsigned short)(&EP0BUF))+1);
	mov	r6,#_EP0BUF
	mov	r7,#(_EP0BUF >> 8)
	mov	a,r6
	inc	a
	mov	_AUTOPTRL2,a
;	d:\ztex\include\ztex-isr.h:77: AUTOPTRH2 = (BYTE)((((unsigned short)(&EP0BUF))+1) >> 8);
	mov	r6,#_EP0BUF
	mov	r7,#(_EP0BUF >> 8)
	inc	r6
	cjne	r6,#0x00,00131$
	inc	r7
00131$:
	mov	_AUTOPTRH2,r7
;	d:\ztex\include\ztex-isr.h:78: XAUTODAT2 = 3;
	mov	dptr,#_XAUTODAT2
	mov	a,#0x03
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:79: for (i=0; i<size; i++) {
	mov	r7,#0x00
00108$:
	clr	c
	mov	a,r7
	subb	a,_sendStringDescriptor_PARM_3
	jnc	00106$
;	d:\ztex\include\ztex-isr.h:80: XAUTODAT2 = XAUTODAT1;
	mov	dptr,#_XAUTODAT1
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_XAUTODAT2
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:81: XAUTODAT2 = 0;
	mov	dptr,#_XAUTODAT2
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:79: for (i=0; i<size; i++) {
	inc	r7
	sjmp	00108$
00106$:
;	d:\ztex\include\ztex-isr.h:83: i = (size+1) << 1;
	mov	a,_sendStringDescriptor_PARM_3
	inc	a
;	d:\ztex\include\ztex-isr.h:84: EP0BUF[0] = i;
	add	a,acc
	mov	r7,a
	mov	dptr,#_EP0BUF
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:85: EP0BUF[1] = 3;
	mov	dptr,#(_EP0BUF + 0x0001)
	mov	a,#0x03
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:86: EP0BCH = 0;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:87: EP0BCL = i;
	mov	dptr,#_EP0BCL
	mov	a,r7
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ep0_payload_update'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:93: static void ep0_payload_update() {
;	-----------------------------------------
;	 function ep0_payload_update
;	-----------------------------------------
_ep0_payload_update:
;	d:\ztex\include\ztex-isr.h:94: ep0_payload_transfer = ( ep0_payload_remaining > 64 ) ? 64 : ep0_payload_remaining;
	mov	dptr,#_ep0_payload_remaining
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x40
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00103$
	mov	r4,#0x40
	mov	r5,#0x00
	sjmp	00104$
00103$:
	mov	ar4,r6
	mov	ar5,r7
00104$:
	mov	dptr,#_ep0_payload_transfer
	mov	a,r4
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:95: ep0_payload_remaining -= ep0_payload_transfer;
	mov	r5,#0x00
	mov	dptr,#_ep0_payload_remaining
	mov	a,r6
	clr	c
	subb	a,r4
	movx	@dptr,a
	mov	a,r7
	subb	a,r5
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ep0_vendor_cmd_su'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:102: static void ep0_vendor_cmd_su() {
;	-----------------------------------------
;	 function ep0_vendor_cmd_su
;	-----------------------------------------
_ep0_vendor_cmd_su:
;	d:\ztex\include\ztex-isr.h:103: switch ( ep0_prev_setup_request ) {
	mov	dptr,#_ep0_prev_setup_request
	movx	a,@dptr
	mov	r7,a
	jz	00102$
	cjne	r7,#0x02,00164$
	sjmp	00105$
00164$:
	cjne	r7,#0x04,00165$
	sjmp	00106$
00165$:
	cjne	r7,#0x31,00166$
	ljmp	00118$
00166$:
	cjne	r7,#0x32,00167$
	ret
00167$:
	cjne	r7,#0x39,00168$
	sjmp	00107$
00168$:
	cjne	r7,#0x42,00169$
	sjmp	00108$
00169$:
	ljmp	00120$
;	usb-test.c:130: while (READY == 0);
00102$:
	jnb	_IOC1,00102$
;	usb-test.c:131: receiveLen();
;	d:\ztex\include\ztex-conf.h:125: break;
	ljmp	_receiveLen
;	d:\ztex\include\ztex-conf.h:123: case $0:			
00105$:
;	usb-test.c:148: receiveLen();
;	d:\ztex\include\ztex-conf.h:125: break;
	ljmp	_receiveLen
;	d:\ztex\include\ztex-conf.h:123: case $0:			
00106$:
;	usb-test.c:165: receiveLen();
;	d:\ztex\include\ztex-conf.h:125: break;
	ljmp	_receiveLen
;	d:\ztex\include\ztex-conf.h:123: case $0:			
00107$:
;	d:\ztex\include\ztex-eeprom.h:233: eeprom_write_checksum = 0;
	mov	dptr,#_eeprom_write_checksum
;	d:\ztex\include\ztex-eeprom.h:234: eeprom_write_bytes = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_eeprom_write_bytes
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#(_SETUPDAT + 0x0003)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_SETUPDAT + 0x0002)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dptr,#_eeprom_addr
	mov	a,r5
	orl	a,r7
	movx	@dptr,a
	mov	a,r4
	orl	a,r6
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:125: break;
	ret
;	d:\ztex\include\ztex-conf.h:123: case $0:			
00108$:
;	d:\ztex\include\ztex-flash1.h:1201: if ( (MMC_IO & MMC_bmCS) == 0 ) {
	mov	a,_IOC
	jb	acc.5,00110$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_flash_ec
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_EP0CS
	movx	a,@dptr
	orl	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
	mov	dptr,#_ep0_payload_remaining
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:139: break;
	ret
00110$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	lcall	_mmc_select
	mov	a,dpl
	jz	00112$
;	d:\ztex\include\ztex-flash1.h:1206: mmc_deselect();
	lcall	_mmc_deselect
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_EP0CS
	movx	a,@dptr
	orl	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
	mov	dptr,#_ep0_payload_remaining
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:139: break;
	ret
00112$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:1210: mmc_last_cmd = 25;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x19
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1211: mmc_buffer[0] = 25 | 64;
	mov	dptr,#_mmc_buffer
	mov	a,#0x59
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1212: if ( mmc_version == 0 ) {
	mov	dptr,#_mmc_version
	movx	a,@dptr
	mov	r7,a
	jnz	00114$
;	d:\ztex\include\ztex-flash1.h:1232: __endasm;
	clr c
	mov dptr,#(_SETUPDAT + 2)
	movx a,@dptr
	mov dptr,#(_mmc_buffer + 3)
	rlc a
	movx @dptr,a
	mov dptr,#(_SETUPDAT + 3)
	movx a,@dptr
	mov dptr,#(_mmc_buffer + 2)
	rlc a
	movx @dptr,a
	mov dptr,#(_SETUPDAT + 4)
	movx a,@dptr
	mov dptr,#(_mmc_buffer + 1)
	rlc a
	movx @dptr,a
;	d:\ztex\include\ztex-flash1.h:1233: mmc_buffer[4] = 0;
	mov	dptr,#(_mmc_buffer + 0x0004)
	clr	a
	movx	@dptr,a
	sjmp	00115$
00114$:
;	d:\ztex\include\ztex-flash1.h:1236: mmc_buffer[1] = SETUPDAT[5];
	mov	dptr,#(_SETUPDAT + 0x0005)
	movx	a,@dptr
	mov	dptr,#(_mmc_buffer + 0x0001)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1237: mmc_buffer[2] = SETUPDAT[4];
	mov	dptr,#(_SETUPDAT + 0x0004)
	movx	a,@dptr
	mov	dptr,#(_mmc_buffer + 0x0002)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1238: mmc_buffer[3] = SETUPDAT[3];
	mov	dptr,#(_SETUPDAT + 0x0003)
	movx	a,@dptr
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1239: mmc_buffer[4] = SETUPDAT[2];
	mov	dptr,#(_SETUPDAT + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
00115$:
;	d:\ztex\include\ztex-flash1.h:1242: mmc_buffer[5] = 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1243: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:1244: mmc_read_response();
	lcall	_mmc_read_response
;	d:\ztex\include\ztex-flash1.h:1245: if ( mmc_response != 0 ) {
	mov	dptr,#_mmc_response
	movx	a,@dptr
	mov	r7,a
	jz	00117$
;	d:\ztex\include\ztex-flash1.h:1246: flash_ec = FLASH_EC_CMD_ERROR; 
	mov	dptr,#_flash_ec
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1247: mmc_deselect();
	lcall	_mmc_deselect
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_EP0CS
	movx	a,@dptr
	orl	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
	mov	dptr,#_ep0_payload_remaining
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:139: break;
	ret
00117$:
;	d:\ztex\include\ztex-flash1.h:1251: MMC_IO |= MMC_bmDI;				
	orl	_IOC,#0x80
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
	mov	dpl,#0xFC
	lcall	_flash_write_byte
;	d:\ztex\include\ztex-flash1.h:1254: mmc_ep0_wait = 0;
	mov	dptr,#_mmc_ep0_wait
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:125: break;
;	d:\ztex\include\ztex-conf.h:123: case $0:			
	ret
00118$:
;	d:\ztex\include\ztex-conf.h:124: $1
;	d:\ztex\include\ztex-conf.h:125: break;
;	d:\ztex\include\ztex-isr.h:105: default:
	ljmp	_init_fpga_configuration
00120$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_EP0CS
	movx	a,@dptr
	orl	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:107: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SUDAV_ISR'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:113: static void SUDAV_ISR () __interrupt
;	-----------------------------------------
;	 function SUDAV_ISR
;	-----------------------------------------
_SUDAV_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	d:\ztex\include\ztex-isr.h:116: ep0_prev_setup_request = bRequest;
	mov	dptr,#_bRequest
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ep0_prev_setup_request
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:117: SUDPTRCTL = 1;
	mov	dptr,#_SUDPTRCTL
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:120: switch ( bRequest ) {
	mov	dptr,#_bRequest
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x0C
	jnc	00344$
	ljmp	00160$
00344$:
	mov	a,r7
	mov	b,a
	add	a,#(00345$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,b
	add	a,#(00346$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00345$:
	.db	00101$
	.db	00112$
	.db	00160$
	.db	00122$
	.db	00160$
	.db	00160$
	.db	00132$
	.db	00152$
	.db	00153$
	.db	00154$
	.db	00155$
	.db	00156$
	.db	00157$
00346$:
	.db	00101$>>8
	.db	00112$>>8
	.db	00160$>>8
	.db	00122$>>8
	.db	00160$>>8
	.db	00160$>>8
	.db	00132$>>8
	.db	00152$>>8
	.db	00153$>>8
	.db	00154$>>8
	.db	00155$>>8
	.db	00156$>>8
	.db	00157$>>8
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
00101$:
;	d:\ztex\include\ztex-isr.h:122: switch(SETUPDAT[0]) {
	mov	dptr,#_SETUPDAT
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,00347$
	sjmp	00102$
00347$:
	cjne	r7,#0x81,00348$
	sjmp	00103$
00348$:
	cjne	r7,#0x82,00349$
	sjmp	00104$
00349$:
	ljmp	00160$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
00102$:
	mov	dptr,#_EP0BUF
;	d:\ztex\include\ztex-isr.h:125: EP0BUF[1] = 0;
;	d:\ztex\include\ztex-isr.h:126: EP0BCH = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_EP0BUF + 0x0001)
	movx	@dptr,a
	mov	dptr,#_EP0BCH
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:127: EP0BCL = 2;
	mov	dptr,#_EP0BCL
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:128: break;
	ljmp	00160$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
00103$:
	mov	dptr,#_EP0BUF
;	d:\ztex\include\ztex-isr.h:131: EP0BUF[1] = 0;
;	d:\ztex\include\ztex-isr.h:132: EP0BCH = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_EP0BUF + 0x0001)
	movx	@dptr,a
	mov	dptr,#_EP0BCH
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:133: EP0BCL = 2;
	mov	dptr,#_EP0BCL
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:134: break;
	ljmp	00160$
;	d:\ztex\include\ztex-isr.h:135: case 0x82:	
00104$:
;	d:\ztex\include\ztex-isr.h:136: switch ( SETUPDAT[4] ) {
	mov	dptr,#(_SETUPDAT + 0x0004)
	movx	a,@dptr
	mov	r7,a
	jz	00106$
	cjne	r7,#0x01,00351$
	sjmp	00107$
00351$:
	cjne	r7,#0x80,00352$
	sjmp	00106$
00352$:
;	d:\ztex\include\ztex-isr.h:138: case 0x80 :
	cjne	r7,#0x81,00109$
	sjmp	00108$
00106$:
;	d:\ztex\include\ztex-isr.h:139: EP0BUF[0] = EP0CS & bmBIT0;
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x01
	mov	dptr,#_EP0BUF
	mov	a,r7
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:140: break;
;	d:\ztex\include\ztex-isr.h:141: case 0x01 :
	sjmp	00110$
00107$:
;	d:\ztex\include\ztex-isr.h:142: EP0BUF[0] = EP1OUTCS & bmBIT0;
	mov	dptr,#_EP1OUTCS
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x01
	mov	dptr,#_EP0BUF
	mov	a,r7
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:143: break;
;	d:\ztex\include\ztex-isr.h:144: case 0x81 :
	sjmp	00110$
00108$:
;	d:\ztex\include\ztex-isr.h:145: EP0BUF[0] = EP1INCS & bmBIT0;
	mov	dptr,#_EP1INCS
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x01
	mov	dptr,#_EP0BUF
	mov	a,r7
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:146: break;
;	d:\ztex\include\ztex-isr.h:147: default:
	sjmp	00110$
00109$:
;	d:\ztex\include\ztex-isr.h:148: EP0BUF[0] = EPXCS[ ((SETUPDAT[4] >> 1)-1) & 3 ] & bmBIT0;
	mov	dptr,#(_SETUPDAT + 0x0004)
	movx	a,@dptr
	clr	c
	rrc	a
	dec	a
	anl	a,#0x03
	add	a,#_EPXCS
	mov	dpl,a
	clr	a
	addc	a,#(_EPXCS >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x01
	mov	dptr,#_EP0BUF
	mov	a,r7
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:150: }
00110$:
;	d:\ztex\include\ztex-isr.h:151: EP0BUF[1] = 0;
	mov	dptr,#(_EP0BUF + 0x0001)
;	d:\ztex\include\ztex-isr.h:152: EP0BCH = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_EP0BCH
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:153: EP0BCL = 2;
	mov	dptr,#_EP0BCL
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:156: break;
	ljmp	00160$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
00112$:
;	d:\ztex\include\ztex-isr.h:158: if ( SETUPDAT[0] == 2 && SETUPDAT[2] == 0 ) {
	mov	dptr,#_SETUPDAT
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00354$
	sjmp	00355$
00354$:
	ljmp	00160$
00355$:
	mov	dptr,#(_SETUPDAT + 0x0002)
	movx	a,@dptr
	jz	00356$
	ljmp	00160$
00356$:
;	d:\ztex\include\ztex-isr.h:159: switch ( SETUPDAT[4] ) {
	mov	dptr,#(_SETUPDAT + 0x0004)
	movx	a,@dptr
	mov	r7,a
	jz	00114$
	cjne	r7,#0x01,00358$
	sjmp	00115$
00358$:
	cjne	r7,#0x80,00359$
	sjmp	00114$
00359$:
;	d:\ztex\include\ztex-isr.h:161: case 0x80 :
	cjne	r7,#0x81,00117$
	sjmp	00116$
00114$:
;	d:\ztex\include\ztex-isr.h:162: EP0CS &= ~bmBIT0;
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r7,a
	anl	a,#0xFE
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:163: break;
	ljmp	00160$
;	d:\ztex\include\ztex-isr.h:164: case 0x01 :
00115$:
;	d:\ztex\include\ztex-isr.h:165: EP1OUTCS &= ~bmBIT0;
	mov	dptr,#_EP1OUTCS
	movx	a,@dptr
	mov	r7,a
	anl	a,#0xFE
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:166: break;
	ljmp	00160$
;	d:\ztex\include\ztex-isr.h:167: case 0x81 :
00116$:
;	d:\ztex\include\ztex-isr.h:168: EP1INCS &= ~bmBIT0;
	mov	dptr,#_EP1INCS
	movx	a,@dptr
	mov	r7,a
	anl	a,#0xFE
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:169: break;
	ljmp	00160$
;	d:\ztex\include\ztex-isr.h:170: default:
00117$:
;	d:\ztex\include\ztex-isr.h:171: EPXCS[ ((SETUPDAT[4] >> 1)-1) & 3 ] &= ~bmBIT0;
	mov	dptr,#(_SETUPDAT + 0x0004)
	movx	a,@dptr
	clr	c
	rrc	a
	dec	a
	anl	a,#0x03
	add	a,#_EPXCS
	mov	r6,a
	clr	a
	addc	a,#(_EPXCS >> 8)
	mov	r7,a
	mov	dptr,#(_SETUPDAT + 0x0004)
	movx	a,@dptr
	clr	c
	rrc	a
	dec	a
	anl	a,#0x03
	add	a,#_EPXCS
	mov	dpl,a
	clr	a
	addc	a,#(_EPXCS >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0xFE
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:175: break;
	ljmp	00160$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
00122$:
;	d:\ztex\include\ztex-isr.h:177: if ( SETUPDAT[0] == 2 && SETUPDAT[2] == 0 ) {
	mov	dptr,#_SETUPDAT
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00361$
	sjmp	00362$
00361$:
	ljmp	00160$
00362$:
	mov	dptr,#(_SETUPDAT + 0x0002)
	movx	a,@dptr
	jz	00363$
	ljmp	00160$
00363$:
;	d:\ztex\include\ztex-isr.h:178: switch ( SETUPDAT[4] ) {
	mov	dptr,#(_SETUPDAT + 0x0004)
	movx	a,@dptr
	mov	r7,a
	jz	00124$
	cjne	r7,#0x01,00365$
	sjmp	00125$
00365$:
	cjne	r7,#0x80,00366$
	sjmp	00124$
00366$:
;	d:\ztex\include\ztex-isr.h:180: case 0x80 :
	cjne	r7,#0x81,00127$
	sjmp	00126$
00124$:
;	d:\ztex\include\ztex-isr.h:181: EP0CS |= bmBIT0;
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:182: break;
;	d:\ztex\include\ztex-isr.h:183: case 0x01 :
	sjmp	00128$
00125$:
;	d:\ztex\include\ztex-isr.h:184: EP1OUTCS |= bmBIT0;
	mov	dptr,#_EP1OUTCS
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:185: break;
;	d:\ztex\include\ztex-isr.h:186: case 0x81 :
	sjmp	00128$
00126$:
;	d:\ztex\include\ztex-isr.h:187: EP1INCS |= bmBIT0;
	mov	dptr,#_EP1INCS
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:188: break;
;	d:\ztex\include\ztex-isr.h:189: default:
	sjmp	00128$
00127$:
;	d:\ztex\include\ztex-isr.h:190: EPXCS[ ((SETUPDAT[4] >> 1)-1) & 3 ] |= ~bmBIT0;
	mov	dptr,#(_SETUPDAT + 0x0004)
	movx	a,@dptr
	clr	c
	rrc	a
	dec	a
	anl	a,#0x03
	add	a,#_EPXCS
	mov	r6,a
	clr	a
	addc	a,#(_EPXCS >> 8)
	mov	r7,a
	mov	dptr,#(_SETUPDAT + 0x0004)
	movx	a,@dptr
	clr	c
	rrc	a
	dec	a
	anl	a,#0x03
	add	a,#_EPXCS
	mov	dpl,a
	clr	a
	addc	a,#(_EPXCS >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	orl	ar5,#0xFE
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:192: }
00128$:
;	d:\ztex\include\ztex-isr.h:193: a = ( (SETUPDAT[4] & 0x80) >> 3 ) | (SETUPDAT[4] & 0x0f);
	mov	dptr,#(_SETUPDAT + 0x0004)
	movx	a,@dptr
	anl	a,#0x80
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r7,a
	mov	dptr,#(_SETUPDAT + 0x0004)
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x0F
	anl	a,r6
	orl	ar7,a
;	d:\ztex\include\ztex-isr.h:194: TOGCTL = a;
;	d:\ztex\include\ztex-isr.h:195: TOGCTL = a | bmBIT5;
	mov	dptr,#_TOGCTL
	mov	a,r7
	movx	@dptr,a
	mov	a,#0x20
	orl	a,r7
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:197: break;
	ljmp	00160$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
00132$:
;	d:\ztex\include\ztex-isr.h:199: switch(SETUPDAT[3]) {
	mov	dptr,#(_SETUPDAT + 0x0003)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00368$
	sjmp	00133$
00368$:
	cjne	r7,#0x02,00369$
	sjmp	00134$
00369$:
	cjne	r7,#0x03,00370$
	sjmp	00138$
00370$:
	cjne	r7,#0x06,00371$
	ljmp	00145$
00371$:
	cjne	r7,#0x07,00372$
	ljmp	00146$
00372$:
	ljmp	00150$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
00133$:
;	d:\ztex\include\ztex-isr.h:201: SUDPTRH = MSB(&DeviceDescriptor);
	mov	r6,#_DeviceDescriptor
	mov	r7,#(_DeviceDescriptor >> 8)
	mov	ar6,r7
	mov	dptr,#_SUDPTRH
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:202: SUDPTRL = LSB(&DeviceDescriptor);
	mov	dptr,#_SUDPTRL
	mov	a,#_DeviceDescriptor
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:203: break;
	ljmp	00160$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
00134$:
;	d:\ztex\include\ztex-isr.h:205: if (USBCS & bmBIT7) {
	mov	dptr,#_USBCS
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00136$
;	d:\ztex\include\ztex-isr.h:206: SUDPTRH = MSB(&HighSpeedConfigDescriptor);
	mov	r6,#_HighSpeedConfigDescriptor
	mov	r7,#(_HighSpeedConfigDescriptor >> 8)
	mov	ar6,r7
	mov	dptr,#_SUDPTRH
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:207: SUDPTRL = LSB(&HighSpeedConfigDescriptor);
	mov	dptr,#_SUDPTRL
	mov	a,#_HighSpeedConfigDescriptor
	movx	@dptr,a
	ljmp	00160$
00136$:
;	d:\ztex\include\ztex-isr.h:210: SUDPTRH = MSB(&FullSpeedConfigDescriptor);
	mov	r6,#_FullSpeedConfigDescriptor
	mov	r7,#(_FullSpeedConfigDescriptor >> 8)
	mov	ar6,r7
	mov	dptr,#_SUDPTRH
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:211: SUDPTRL = LSB(&FullSpeedConfigDescriptor);
	mov	dptr,#_SUDPTRL
	mov	a,#_FullSpeedConfigDescriptor
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:213: break; 
	ljmp	00160$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
00138$:
;	d:\ztex\include\ztex-isr.h:215: switch (SETUPDAT[2]) {
	mov	dptr,#(_SETUPDAT + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00374$
	sjmp	00139$
00374$:
	cjne	r7,#0x02,00375$
	sjmp	00140$
00375$:
	cjne	r7,#0x03,00376$
	sjmp	00141$
00376$:
;	d:\ztex\include\ztex-isr.h:216: case 1:
	cjne	r7,#0x04,00143$
	sjmp	00142$
00139$:
;	d:\ztex\include\ztex-isr.h:217: SEND_STRING_DESCRIPTOR(manufacturerString);
	mov	dpl,#_manufacturerString
	mov	r6,#_manufacturerString
	mov	r7,#(_manufacturerString >> 8)
	mov	ar6,r7
	mov	_sendStringDescriptor_PARM_2,r6
	mov	_sendStringDescriptor_PARM_3,#0x05
	lcall	_sendStringDescriptor
;	d:\ztex\include\ztex-isr.h:218: break;
	ljmp	00160$
;	d:\ztex\include\ztex-isr.h:219: case 2:
00140$:
;	d:\ztex\include\ztex-isr.h:220: SEND_STRING_DESCRIPTOR(productString);
	mov	dpl,#_productString
	mov	r6,#_productString
	mov	r7,#(_productString >> 8)
	mov	ar6,r7
	mov	_sendStringDescriptor_PARM_2,r6
	mov	_sendStringDescriptor_PARM_3,#0x12
	lcall	_sendStringDescriptor
;	d:\ztex\include\ztex-isr.h:221: break;
	ljmp	00160$
;	d:\ztex\include\ztex-isr.h:222: case 3:
00141$:
;	d:\ztex\include\ztex-isr.h:223: SEND_STRING_DESCRIPTOR(SN_STRING);
	mov	dpl,#_SN_STRING
	mov	r6,#_SN_STRING
	mov	r7,#(_SN_STRING >> 8)
	mov	ar6,r7
	mov	_sendStringDescriptor_PARM_2,r6
	mov	_sendStringDescriptor_PARM_3,#0x0A
	lcall	_sendStringDescriptor
;	d:\ztex\include\ztex-isr.h:224: break;
	ljmp	00160$
;	d:\ztex\include\ztex-isr.h:225: case 4:
00142$:
;	d:\ztex\include\ztex-isr.h:226: SEND_STRING_DESCRIPTOR(configurationString);
	mov	dpl,#_configurationString
	mov	r6,#_configurationString
	mov	r7,#(_configurationString >> 8)
	mov	ar6,r7
	mov	_sendStringDescriptor_PARM_2,r6
	mov	_sendStringDescriptor_PARM_3,#0x08
	lcall	_sendStringDescriptor
;	d:\ztex\include\ztex-isr.h:227: break; 
	ljmp	00160$
;	d:\ztex\include\ztex-isr.h:228: default:
00143$:
;	d:\ztex\include\ztex-isr.h:229: SUDPTRH = MSB(&EmptyStringDescriptor);
	mov	r6,#_EmptyStringDescriptor
	mov	r7,#(_EmptyStringDescriptor >> 8)
	mov	ar6,r7
	mov	dptr,#_SUDPTRH
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:230: SUDPTRL = LSB(&EmptyStringDescriptor);
	mov	dptr,#_SUDPTRL
	mov	a,#_EmptyStringDescriptor
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:233: break;
	ljmp	00160$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
00145$:
;	d:\ztex\include\ztex-isr.h:235: SUDPTRH = MSB(&DeviceQualifierDescriptor);
	mov	r6,#_DeviceQualifierDescriptor
	mov	r7,#(_DeviceQualifierDescriptor >> 8)
	mov	ar6,r7
	mov	dptr,#_SUDPTRH
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:236: SUDPTRL = LSB(&DeviceQualifierDescriptor);
	mov	dptr,#_SUDPTRL
	mov	a,#_DeviceQualifierDescriptor
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:237: break;
	ljmp	00160$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
00146$:
;	d:\ztex\include\ztex-isr.h:239: if (USBCS & bmBIT7) {
	mov	dptr,#_USBCS
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00148$
;	d:\ztex\include\ztex-isr.h:240: SUDPTRH = MSB(&FullSpeedConfigDescriptor);
	mov	r6,#_FullSpeedConfigDescriptor
	mov	r7,#(_FullSpeedConfigDescriptor >> 8)
	mov	ar6,r7
	mov	dptr,#_SUDPTRH
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:241: SUDPTRL = LSB(&FullSpeedConfigDescriptor);
	mov	dptr,#_SUDPTRL
	mov	a,#_FullSpeedConfigDescriptor
	movx	@dptr,a
	ljmp	00160$
00148$:
;	d:\ztex\include\ztex-isr.h:244: SUDPTRH = MSB(&HighSpeedConfigDescriptor);
	mov	r6,#_HighSpeedConfigDescriptor
	mov	r7,#(_HighSpeedConfigDescriptor >> 8)
	mov	ar6,r7
	mov	dptr,#_SUDPTRH
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:245: SUDPTRL = LSB(&HighSpeedConfigDescriptor);
	mov	dptr,#_SUDPTRL
	mov	a,#_HighSpeedConfigDescriptor
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:247: break; 
;	d:\ztex\include\ztex-isr.h:248: default:
	sjmp	00160$
00150$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:251: break;
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	sjmp	00160$
00152$:
;	d:\ztex\include\ztex-isr.h:253: break;			
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	sjmp	00160$
00153$:
	mov	dptr,#_EP0BUF
;	d:\ztex\include\ztex-isr.h:256: EP0BCH = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_EP0BCH
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:257: EP0BCL = 1;
	mov	dptr,#_EP0BCL
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:258: break;
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	sjmp	00160$
00154$:
;	d:\ztex\include\ztex-isr.h:260: resetToggleData();
	lcall	_resetToggleData
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	sjmp	00160$
00155$:
	mov	dptr,#_EP0BUF
;	d:\ztex\include\ztex-isr.h:264: EP0BCH = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_EP0BCH
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:265: EP0BCL = 1;
	mov	dptr,#_EP0BCL
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:266: break;
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	sjmp	00160$
00156$:
;	d:\ztex\include\ztex-isr.h:268: resetToggleData();
	lcall	_resetToggleData
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	sjmp	00160$
00157$:
;	d:\ztex\include\ztex-isr.h:271: if ( SETUPDAT[0] == 0x82 ) {
	mov	dptr,#_SETUPDAT
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x82,00160$
;	d:\ztex\include\ztex-isr.h:272: ISOFRAME_COUNTER[ ((SETUPDAT[4] >> 1)-1) & 3 ] = 0;
	mov	dptr,#(_SETUPDAT + 0x0004)
	movx	a,@dptr
	clr	c
	rrc	a
	dec	a
	anl	a,#0x03
	mov	b,#0x02
	mul	ab
	add	a,#_ISOFRAME_COUNTER
	mov	dpl,a
	mov	a,#(_ISOFRAME_COUNTER >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_USBFRAMEL
	movx	a,@dptr
	mov	dptr,#_EP0BUF
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:274: EP0BUF[1] = USBFRAMEH;	
	mov	dptr,#_USBFRAMEH
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_EP0BUF + 0x0001)
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:275: EP0BCH = 0;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:276: EP0BCL = 2;
	mov	dptr,#_EP0BCL
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:280: }
00160$:
;	d:\ztex\include\ztex-isr.h:283: switch ( bmRequestType ) {
	mov	dptr,#_bmRequestType
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x40,00381$
	ljmp	00187$
00381$:
	cjne	r7,#0xC0,00382$
	sjmp	00383$
00382$:
	ljmp	00191$
00383$:
;	d:\ztex\include\ztex-isr.h:285: ep0_payload_remaining = (SETUPDAT[7] << 8) | SETUPDAT[6];
	mov	dptr,#(_SETUPDAT + 0x0007)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_SETUPDAT + 0x0006)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dptr,#_ep0_payload_remaining
	mov	a,r5
	orl	a,r7
	movx	@dptr,a
	mov	a,r4
	orl	a,r6
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:286: ep0_payload_update();
	lcall	_ep0_payload_update
;	d:\ztex\include\ztex-isr.h:288: switch ( bRequest ) {
	mov	dptr,#_bRequest
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00384$
	sjmp	00163$
00384$:
	cjne	r7,#0x03,00385$
	sjmp	00164$
00385$:
	cjne	r7,#0x22,00386$
	sjmp	00162$
00386$:
	cjne	r7,#0x30,00387$
	ljmp	00181$
00387$:
	cjne	r7,#0x38,00388$
	sjmp	00165$
00388$:
	cjne	r7,#0x3A,00389$
	sjmp	00166$
00389$:
	cjne	r7,#0x40,00390$
	ljmp	00167$
00390$:
	cjne	r7,#0x41,00391$
	ljmp	00168$
00391$:
	cjne	r7,#0x43,00392$
	ljmp	00180$
00392$:
	ljmp	00185$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
00162$:
;	d:\ztex\include\ztex-isr.h:290: SUDPTRCTL = 0;
	mov	dptr,#_SUDPTRCTL
;	d:\ztex\include\ztex-isr.h:291: EP0BCH = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_EP0BCH
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:292: EP0BCL = ZTEX_DESCRIPTOR_LEN;
	mov	dptr,#_EP0BCL
	mov	a,#0x28
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:293: SUDPTRH = MSB(ZTEX_DESCRIPTOR_OFFS);
	mov	dptr,#_SUDPTRH
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:294: SUDPTRL = LSB(ZTEX_DESCRIPTOR_OFFS); 
	mov	dptr,#_SUDPTRL
	mov	a,#0x6C
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:295: break;
	ljmp	00191$
;	d:\ztex\include\ztex-conf.h:100: case $0:
00163$:
	lcall	_sendPwd
;	d:\ztex\include\ztex-conf.h:102: break;
	ljmp	00191$
;	d:\ztex\include\ztex-conf.h:100: case $0:
00164$:
;	usb-test.c:116: sendStatus();
	lcall	_sendStatus
;	d:\ztex\include\ztex-conf.h:102: break;
	ljmp	00191$
;	d:\ztex\include\ztex-conf.h:100: case $0:
00165$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#(_SETUPDAT + 0x0003)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_SETUPDAT + 0x0002)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dptr,#_eeprom_addr
	mov	a,r5
	orl	a,r7
	movx	@dptr,a
	mov	a,r4
	orl	a,r6
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:216: EP0BCH = 0;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:217: EP0BCL = eeprom_read_ep0(); 
	lcall	_eeprom_read_ep0
	mov	a,dpl
	mov	dptr,#_EP0BCL
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:102: break;
	ljmp	00191$
;	d:\ztex\include\ztex-conf.h:100: case $0:
00166$:
;	d:\ztex\include\ztex-eeprom.h:244: EP0BUF[0] = LSB(eeprom_write_bytes);
	mov	dptr,#_eeprom_write_bytes
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_EP0BUF
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:245: EP0BUF[1] = MSB(eeprom_write_bytes);
	mov	dptr,#_eeprom_write_bytes
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#(_EP0BUF + 0x0001)
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:246: EP0BUF[2] = eeprom_write_checksum;
	mov	dptr,#_eeprom_write_checksum
	movx	a,@dptr
	mov	dptr,#(_EP0BUF + 0x0002)
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	_eeprom_select_PARM_2,#0x00
	mov	_eeprom_select_PARM_3,#0x01
	mov	dpl,#0xA2
	lcall	_eeprom_select
	mov	r7,dpl
	mov	dptr,#(_EP0BUF + 0x0003)
	mov	a,r7
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:248: EP0BCH = 0;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:249: EP0BCL = 4;
	mov	dptr,#_EP0BCL
	mov	a,#0x04
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:102: break;
	ljmp	00191$
;	d:\ztex\include\ztex-conf.h:100: case $0:
00167$:
;	d:\ztex\include\ztex-utils.h:121: AUTOPTRL1=LO(&($0));
	mov	_AUTOPTRL1,#_flash_enabled
;	d:\ztex\include\ztex-utils.h:122: AUTOPTRH1=HI(&($0));
	mov	r6,#_flash_enabled
	mov	r7,#(_flash_enabled >> 8)
	mov	ar6,r7
	mov	_AUTOPTRH1,r6
;	d:\ztex\include\ztex-utils.h:123: AUTOPTRL2=LO(&($1));
	mov	_AUTOPTRL2,#_EP0BUF
;	d:\ztex\include\ztex-utils.h:124: AUTOPTRH2=HI(&($1));
	mov	r6,#_EP0BUF
	mov	r7,#(_EP0BUF >> 8)
	mov	ar6,r7
	mov	_AUTOPTRH2,r6
;	d:\ztex\include\ztex-utils.h:130: __endasm; 
	push ar2
	mov r2,#(8);
	lcall _MEM_COPY1_int
	pop ar2
;	d:\ztex\include\ztex-flash1.h:1063: EP0BCH = 0;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1064: EP0BCL = 8;
	mov	dptr,#_EP0BCL
	mov	a,#0x08
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:102: break;
	ljmp	00191$
;	d:\ztex\include\ztex-conf.h:100: case $0:
00168$:
;	d:\ztex\include\ztex-flash1.h:1098: if ( (MMC_IO & MMC_bmCS) == 0 ) {
	mov	a,_IOC
	jb	acc.5,00170$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_flash_ec
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
	mov	dptr,#_ep0_payload_remaining
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:139: break;
	ljmp	00191$
00170$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	lcall	_mmc_select
	mov	a,dpl
	jz	00172$
;	d:\ztex\include\ztex-flash1.h:1103: mmc_deselect();
	lcall	_mmc_deselect
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
	mov	dptr,#_ep0_payload_remaining
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:139: break;
	ljmp	00191$
00172$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:1107: mmc_last_cmd = 18;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x12
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1108: mmc_buffer[0] = 18 | 64;
	mov	dptr,#_mmc_buffer
	mov	a,#0x52
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1109: if ( mmc_version == 0 ) {
	mov	dptr,#_mmc_version
	movx	a,@dptr
	mov	r7,a
	jnz	00174$
;	d:\ztex\include\ztex-flash1.h:1129: __endasm;
	clr c
	mov dptr,#(_SETUPDAT + 2)
	movx a,@dptr
	mov dptr,#(_mmc_buffer + 3)
	rlc a
	movx @dptr,a
	mov dptr,#(_SETUPDAT + 3)
	movx a,@dptr
	mov dptr,#(_mmc_buffer + 2)
	rlc a
	movx @dptr,a
	mov dptr,#(_SETUPDAT + 4)
	movx a,@dptr
	mov dptr,#(_mmc_buffer + 1)
	rlc a
	movx @dptr,a
;	d:\ztex\include\ztex-flash1.h:1130: mmc_buffer[4] = 0;
	mov	dptr,#(_mmc_buffer + 0x0004)
	clr	a
	movx	@dptr,a
	sjmp	00175$
00174$:
;	d:\ztex\include\ztex-flash1.h:1133: mmc_buffer[1] = SETUPDAT[5];
	mov	dptr,#(_SETUPDAT + 0x0005)
	movx	a,@dptr
	mov	dptr,#(_mmc_buffer + 0x0001)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1134: mmc_buffer[2] = SETUPDAT[4];
	mov	dptr,#(_SETUPDAT + 0x0004)
	movx	a,@dptr
	mov	dptr,#(_mmc_buffer + 0x0002)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1135: mmc_buffer[3] = SETUPDAT[3];
	mov	dptr,#(_SETUPDAT + 0x0003)
	movx	a,@dptr
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1136: mmc_buffer[4] = SETUPDAT[2];
	mov	dptr,#(_SETUPDAT + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
00175$:
;	d:\ztex\include\ztex-flash1.h:1138: mmc_buffer[5] = 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1139: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:1140: mmc_read_response();
	lcall	_mmc_read_response
;	d:\ztex\include\ztex-flash1.h:1141: if ( mmc_response != 0 ) {
	mov	dptr,#_mmc_response
	movx	a,@dptr
	mov	r7,a
	jz	00177$
;	d:\ztex\include\ztex-flash1.h:1142: flash_ec = FLASH_EC_CMD_ERROR; 
	mov	dptr,#_flash_ec
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1143: mmc_deselect();
	lcall	_mmc_deselect
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
	mov	dptr,#_ep0_payload_remaining
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:139: break;
	ljmp	00191$
00177$:
;	d:\ztex\include\ztex-flash1.h:1147: mmc_ep0_wait = 1;
	mov	dptr,#_mmc_ep0_wait
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1148: mmc_read_ep0();  
	lcall	_mmc_read_ep0
;	d:\ztex\include\ztex-flash1.h:1149: if ( flash_ec != 0 ) {
	mov	dptr,#_flash_ec
	movx	a,@dptr
	mov	r7,a
	jz	00179$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
	mov	dptr,#_ep0_payload_remaining
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:139: break;
	ljmp	00191$
00179$:
;	d:\ztex\include\ztex-flash1.h:1152: EP0BCH = 0;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1153: EP0BCL = ep0_payload_transfer; 
	mov	dptr,#_ep0_payload_transfer
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_EP0BCL
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:102: break;
	ljmp	00191$
;	d:\ztex\include\ztex-conf.h:100: case $0:
00180$:
;	d:\ztex\include\ztex-utils.h:121: AUTOPTRL1=LO(&($0));
	mov	_AUTOPTRL1,#_flash_ec
;	d:\ztex\include\ztex-utils.h:122: AUTOPTRH1=HI(&($0));
	mov	r6,#_flash_ec
	mov	r7,#(_flash_ec >> 8)
	mov	ar6,r7
	mov	_AUTOPTRH1,r6
;	d:\ztex\include\ztex-utils.h:123: AUTOPTRL2=LO(&($1));
	mov	_AUTOPTRL2,#(_EP0BUF + 0x0002)
;	d:\ztex\include\ztex-utils.h:124: AUTOPTRH2=HI(&($1));
	mov	r6,#(_EP0BUF + 0x0002)
	mov	r7,#((_EP0BUF + 0x0002) >> 8)
	mov	ar6,r7
	mov	_AUTOPTRH2,r6
;	d:\ztex\include\ztex-utils.h:130: __endasm; 
	push ar2
	mov r2,#(20);
	lcall _MEM_COPY1_int
	pop ar2
;	d:\ztex\include\ztex-flash1.h:1271: EP0BUF[22] = (MMC__IO_DO & MMC_bmDO) == 0;
	mov	a,#0x01
	anl	a,_IOD
	mov	r7,a
	clr	a
	cjne	r7,#0x00,00398$
	inc	a
00398$:
	mov	dptr,#(_EP0BUF + 0x0016)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1272: mmc_select();
	lcall	_mmc_select
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dpl,#0x08
	lcall	_mmc_clocks
;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
	mov	dptr,#_mmc_last_cmd
	mov	a,#0x0D
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
	mov	dptr,#_mmc_buffer
	mov	a,#0x4D
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
	mov	dptr,#(_mmc_buffer + 0x0001)
;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_mmc_buffer + 0x0004)
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
	mov	dptr,#(_mmc_buffer + 0x0005)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
	mov	_flash_write_PARM_2,#0x06
	mov	dptr,#_mmc_buffer
	lcall	_flash_write
;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
	lcall	_mmc_read_response
;	d:\ztex\include\ztex-flash1.h:1274: EP0BUF[0] = mmc_response;
	mov	dptr,#_mmc_response
	movx	a,@dptr
	mov	dptr,#_EP0BUF
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1275: EP0BUF[1] = flash_read_byte();
	lcall	_flash_read_byte
	mov	r7,dpl
	mov	dptr,#(_EP0BUF + 0x0001)
	mov	a,r7
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1276: mmc_deselect();
	lcall	_mmc_deselect
;	d:\ztex\include\ztex-flash1.h:1277: EP0BCH = 0;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1278: EP0BCL = 23;
	mov	dptr,#_EP0BCL
	mov	a,#0x17
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:102: break;
	ljmp	00191$
;	d:\ztex\include\ztex-conf.h:100: case $0:
00181$:
;	d:\ztex\include\ztex-utils.h:121: AUTOPTRL1=LO(&($0));
	mov	_AUTOPTRL1,#_fpga_checksum
;	d:\ztex\include\ztex-utils.h:122: AUTOPTRH1=HI(&($0));
	mov	r6,#_fpga_checksum
	mov	r7,#(_fpga_checksum >> 8)
	mov	ar6,r7
	mov	_AUTOPTRH1,r6
;	d:\ztex\include\ztex-utils.h:123: AUTOPTRL2=LO(&($1));
	mov	_AUTOPTRL2,#(_EP0BUF + 0x0001)
;	d:\ztex\include\ztex-utils.h:124: AUTOPTRH2=HI(&($1));
	mov	r6,#(_EP0BUF + 0x0001)
	mov	r7,#((_EP0BUF + 0x0001) >> 8)
	mov	ar6,r7
	mov	_AUTOPTRH2,r6
;	d:\ztex\include\ztex-utils.h:130: __endasm; 
	push ar2
	mov r2,#(7);
	lcall _MEM_COPY1_int
	pop ar2
;	d:\ztex\include\ztex-fpga3.h:117: OEA &= ~bmBIT1;
	mov	r7,_OEA
	mov	a,#0xFD
	anl	a,r7
	mov	_OEA,a
;	d:\ztex\include\ztex-fpga3.h:118: if ( IOA1 )  {
	jnb	_IOA1,00183$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_EP0BUF
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-fpga3.h:120: IOA1 = 1;		
	setb	_IOA1
;	d:\ztex\include\ztex-fpga3.h:121: OEA |= bmBIT1;
	orl	_OEA,#0x02
	sjmp	00184$
00183$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_EP0BUF
	mov	a,#0x01
	movx	@dptr,a
	lcall	_reset_fpga
00184$:
	mov	dptr,#(_EP0BUF + 0x0008)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-fpga3.h:129: EP0BCH = 0;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-fpga3.h:130: EP0BCL = 9;
	mov	dptr,#_EP0BCL
	mov	a,#0x09
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:102: break;
;	d:\ztex\include\ztex-isr.h:297: default:
	sjmp	00191$
00185$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:300: break;
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	sjmp	00191$
00187$:
;	d:\ztex\include\ztex-isr.h:305: if ( SETUPDAT[7]!=0 || SETUPDAT[6]!=0 ) {
	mov	dptr,#(_SETUPDAT + 0x0007)
	movx	a,@dptr
	jnz	00188$
	mov	dptr,#(_SETUPDAT + 0x0006)
	movx	a,@dptr
	jz	00189$
00188$:
;	d:\ztex\include\ztex-isr.h:306: ep0_vendor_cmd_setup = 1;
	mov	dptr,#_ep0_vendor_cmd_setup
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:307: EP0BCL = 0;
	mov	dptr,#_EP0BCL
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
	mov	dptr,#_USBIRQ
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00192$
00189$:
	lcall	_ep0_vendor_cmd_su
;	d:\ztex\include\ztex-isr.h:313: EP0BCL = 0;
	mov	dptr,#_EP0BCL
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:315: }
00191$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
	mov	dptr,#_USBIRQ
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x80
	movx	@dptr,a
00192$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'SOF_ISR'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:325: void SOF_ISR() __interrupt
;	-----------------------------------------
;	 function SOF_ISR
;	-----------------------------------------
_SOF_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	d:\ztex\include\ztex-isr.h:327: EXIF &= ~bmBIT4;
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
;	d:\ztex\include\ztex-isr.h:328: USBIRQ = bmBIT1;
	mov	dptr,#_USBIRQ
	mov	a,#0x02
	movx	@dptr,a
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'SUTOK_ISR'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:334: void SUTOK_ISR() __interrupt 
;	-----------------------------------------
;	 function SUTOK_ISR
;	-----------------------------------------
_SUTOK_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	d:\ztex\include\ztex-isr.h:336: EXIF &= ~bmBIT4;
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
;	d:\ztex\include\ztex-isr.h:337: USBIRQ = bmBIT2;
	mov	dptr,#_USBIRQ
	mov	a,#0x04
	movx	@dptr,a
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'SUSP_ISR'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:343: void SUSP_ISR() __interrupt
;	-----------------------------------------
;	 function SUSP_ISR
;	-----------------------------------------
_SUSP_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	d:\ztex\include\ztex-isr.h:345: EXIF &= ~bmBIT4;
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
;	d:\ztex\include\ztex-isr.h:346: USBIRQ = bmBIT3;
	mov	dptr,#_USBIRQ
	mov	a,#0x08
	movx	@dptr,a
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'URES_ISR'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:352: void URES_ISR() __interrupt
;	-----------------------------------------
;	 function URES_ISR
;	-----------------------------------------
_URES_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	d:\ztex\include\ztex-isr.h:354: EXIF &= ~bmBIT4;
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
;	d:\ztex\include\ztex-isr.h:355: USBIRQ = bmBIT4;
	mov	dptr,#_USBIRQ
	mov	a,#0x10
	movx	@dptr,a
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'HSGRANT_ISR'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:361: void HSGRANT_ISR() __interrupt
;	-----------------------------------------
;	 function HSGRANT_ISR
;	-----------------------------------------
_HSGRANT_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	d:\ztex\include\ztex-isr.h:363: EXIF &= ~bmBIT4;
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
;	d:\ztex\include\ztex-isr.h:365: USBIRQ = bmBIT5;
	mov	dptr,#_USBIRQ
	mov	a,#0x20
	movx	@dptr,a
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0ACK_ISR'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:371: void EP0ACK_ISR() __interrupt
;	-----------------------------------------
;	 function EP0ACK_ISR
;	-----------------------------------------
_EP0ACK_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
	mov	dptr,#_USBIRQ
	mov	a,#0x40
	movx	@dptr,a
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0IN_ISR'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:380: static void EP0IN_ISR () __interrupt
;	-----------------------------------------
;	 function EP0IN_ISR
;	-----------------------------------------
_EP0IN_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	clr	_EUSB
;	d:\ztex\include\ztex-isr.h:383: ep0_payload_update();
	lcall	_ep0_payload_update
;	d:\ztex\include\ztex-isr.h:384: switch ( ep0_prev_setup_request ) {
	mov	dptr,#_ep0_prev_setup_request
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00147$
	ljmp	00114$
00147$:
	cjne	r7,#0x03,00148$
	ljmp	00114$
00148$:
	cjne	r7,#0x30,00149$
	sjmp	00114$
00149$:
	cjne	r7,#0x38,00150$
	sjmp	00103$
00150$:
	cjne	r7,#0x3A,00151$
	sjmp	00114$
00151$:
	cjne	r7,#0x40,00152$
	sjmp	00114$
00152$:
	cjne	r7,#0x41,00153$
	sjmp	00106$
00153$:
;	d:\ztex\include\ztex-conf.h:105: case $0:
	cjne	r7,#0x43,00113$
	sjmp	00114$
00103$:
;	d:\ztex\include\ztex-eeprom.h:219: EP0BCH = 0;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-eeprom.h:220: EP0BCL = eeprom_read_ep0(); 
	lcall	_eeprom_read_ep0
	mov	a,dpl
	mov	dptr,#_EP0BCL
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:107: break;
;	d:\ztex\include\ztex-conf.h:105: case $0:
	sjmp	00114$
00106$:
;	d:\ztex\include\ztex-flash1.h:1155: if ( ep0_payload_transfer != 0 ) {
	mov	dptr,#_ep0_payload_transfer
	movx	a,@dptr
	mov	r7,a
	jz	00110$
;	d:\ztex\include\ztex-flash1.h:1156: flash_ec = 0;
	mov	dptr,#_flash_ec
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1157: mmc_read_ep0(); 
	lcall	_mmc_read_ep0
;	d:\ztex\include\ztex-flash1.h:1158: if ( flash_ec != 0 ) {
	mov	dptr,#_flash_ec
	movx	a,@dptr
	mov	r7,a
	jz	00110$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
	mov	dptr,#_ep0_payload_remaining
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:139: break;
	sjmp	00114$
00110$:
;	d:\ztex\include\ztex-flash1.h:1162: EP0BCH = 0;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1163: EP0BCL = ep0_payload_transfer;
	mov	dptr,#_ep0_payload_transfer
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_EP0BCL
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:107: break;
;	d:\ztex\include\ztex-isr.h:386: default:
	sjmp	00114$
00113$:
;	d:\ztex\include\ztex-isr.h:387: EP0BCH = 0;
	mov	dptr,#_EP0BCH
;	d:\ztex\include\ztex-isr.h:388: EP0BCL = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_EP0BCL
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:389: }
00114$:
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
	mov	dptr,#_EPIRQ
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:392: EUSB = 1;
	setb	_EUSB
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0OUT_ISR'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:398: static void EP0OUT_ISR () __interrupt
;	-----------------------------------------
;	 function EP0OUT_ISR
;	-----------------------------------------
_EP0OUT_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	clr	_EUSB
;	d:\ztex\include\ztex-isr.h:401: if ( ep0_vendor_cmd_setup ) {
	mov	dptr,#_ep0_vendor_cmd_setup
	movx	a,@dptr
	mov	r7,a
	jz	00102$
;	d:\ztex\include\ztex-isr.h:402: ep0_vendor_cmd_setup = 0;
	mov	dptr,#_ep0_vendor_cmd_setup
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:403: ep0_payload_remaining = (SETUPDAT[7] << 8) | SETUPDAT[6];
	mov	dptr,#(_SETUPDAT + 0x0007)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_SETUPDAT + 0x0006)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dptr,#_ep0_payload_remaining
	mov	a,r5
	orl	a,r7
	movx	@dptr,a
	mov	a,r4
	orl	a,r6
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:404: ep0_vendor_cmd_su();
	lcall	_ep0_vendor_cmd_su
00102$:
;	d:\ztex\include\ztex-isr.h:407: ep0_payload_update();
	lcall	_ep0_payload_update
;	d:\ztex\include\ztex-isr.h:409: switch ( ep0_prev_setup_request ) {
	mov	dptr,#_ep0_prev_setup_request
	movx	a,@dptr
	mov	r7,a
	jz	00103$
	cjne	r7,#0x02,00154$
	sjmp	00104$
00154$:
	cjne	r7,#0x04,00155$
	sjmp	00105$
00155$:
	cjne	r7,#0x31,00156$
	sjmp	00114$
00156$:
	cjne	r7,#0x32,00157$
	sjmp	00113$
00157$:
	cjne	r7,#0x39,00158$
	sjmp	00106$
00158$:
;	d:\ztex\include\ztex-conf.h:128: case $0:			
	cjne	r7,#0x42,00114$
	sjmp	00107$
00103$:
;	usb-test.c:133: receivePassword();
	lcall	_receivePassword
;	d:\ztex\include\ztex-conf.h:130: break;
;	d:\ztex\include\ztex-conf.h:128: case $0:			
	sjmp	00114$
00104$:
;	usb-test.c:150: receiveEssid();
	lcall	_receiveEssid
;	d:\ztex\include\ztex-conf.h:130: break;
;	d:\ztex\include\ztex-conf.h:128: case $0:			
	sjmp	00114$
00105$:
;	usb-test.c:167: receiveTargetKey();
	lcall	_receiveTargetKey
;	d:\ztex\include\ztex-conf.h:130: break;
;	d:\ztex\include\ztex-conf.h:128: case $0:			
	sjmp	00114$
00106$:
;	d:\ztex\include\ztex-eeprom.h:237: eeprom_write_ep0(EP0BCL);
	mov	dptr,#_EP0BCL
	movx	a,@dptr
	mov	dpl,a
	lcall	_eeprom_write_ep0
;	d:\ztex\include\ztex-conf.h:130: break;
;	d:\ztex\include\ztex-conf.h:128: case $0:			
	sjmp	00114$
00107$:
;	d:\ztex\include\ztex-flash1.h:1256: if ( ep0_payload_transfer != 0 ) {
	mov	dptr,#_ep0_payload_transfer
	movx	a,@dptr
	mov	r7,a
	jz	00114$
;	d:\ztex\include\ztex-flash1.h:1257: flash_ec = 0;
	mov	dptr,#_flash_ec
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-flash1.h:1258: mmc_send_ep0();
	lcall	_mmc_send_ep0
;	d:\ztex\include\ztex-flash1.h:1259: if ( flash_ec != 0 ) {
	mov	dptr,#_flash_ec
	movx	a,@dptr
	mov	r7,a
	jz	00114$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
	mov	dptr,#_ep0_payload_remaining
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:139: break;
;	d:\ztex\include\ztex-conf.h:128: case $0:			
	sjmp	00114$
00113$:
;	d:\ztex\include\ztex-fpga3.h:183: fpga_send_ep0();
	lcall	_fpga_send_ep0
;	d:\ztex\include\ztex-isr.h:411: } 
00114$:
;	d:\ztex\include\ztex-isr.h:413: EP0BCL = 0;
	mov	dptr,#_EP0BCL
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
	mov	dptr,#_EPIRQ
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ztex-isr.h:417: if ( ep0_payload_remaining == 0 ) {
	mov	dptr,#_ep0_payload_remaining
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00116$
;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x80
	movx	@dptr,a
00116$:
;	d:\ztex\include\ztex-isr.h:420: EUSB = 1;
	setb	_EUSB
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'EP1IN_ISR'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:427: void EP1IN_ISR() __interrupt
;	-----------------------------------------
;	 function EP1IN_ISR
;	-----------------------------------------
_EP1IN_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	d:\ztex\include\ztex-isr.h:429: EXIF &= ~bmBIT4;
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
;	d:\ztex\include\ztex-isr.h:430: EPIRQ = bmBIT2;
	mov	dptr,#_EPIRQ
	mov	a,#0x04
	movx	@dptr,a
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'EP1OUT_ISR'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:437: void EP1OUT_ISR() __interrupt
;	-----------------------------------------
;	 function EP1OUT_ISR
;	-----------------------------------------
_EP1OUT_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	d:\ztex\include\ztex-isr.h:439: EXIF &= ~bmBIT4;
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
;	d:\ztex\include\ztex-isr.h:440: EPIRQ = bmBIT3;
	mov	dptr,#_EPIRQ
	mov	a,#0x08
	movx	@dptr,a
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'EP2_ISR'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:446: void EP2_ISR() __interrupt
;	-----------------------------------------
;	 function EP2_ISR
;	-----------------------------------------
_EP2_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	d:\ztex\include\ztex-isr.h:448: EXIF &= ~bmBIT4;
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
;	d:\ztex\include\ztex-isr.h:449: EPIRQ = bmBIT4;
	mov	dptr,#_EPIRQ
	mov	a,#0x10
	movx	@dptr,a
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'EP4_ISR'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:455: void EP4_ISR() __interrupt
;	-----------------------------------------
;	 function EP4_ISR
;	-----------------------------------------
_EP4_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	d:\ztex\include\ztex-isr.h:457: EXIF &= ~bmBIT4;
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
;	d:\ztex\include\ztex-isr.h:458: EPIRQ = bmBIT5;
	mov	dptr,#_EPIRQ
	mov	a,#0x20
	movx	@dptr,a
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'EP6_ISR'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:464: void EP6_ISR() __interrupt
;	-----------------------------------------
;	 function EP6_ISR
;	-----------------------------------------
_EP6_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	d:\ztex\include\ztex-isr.h:466: EXIF &= ~bmBIT4;
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
;	d:\ztex\include\ztex-isr.h:467: EPIRQ = bmBIT6;
	mov	dptr,#_EPIRQ
	mov	a,#0x40
	movx	@dptr,a
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'EP8_ISR'
;------------------------------------------------------------
;	d:\ztex\include\ztex-isr.h:473: void EP8_ISR() __interrupt
;	-----------------------------------------
;	 function EP8_ISR
;	-----------------------------------------
_EP8_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	d:\ztex\include\ztex-isr.h:475: EXIF &= ~bmBIT4;
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
;	d:\ztex\include\ztex-isr.h:476: EPIRQ = bmBIT7;
	mov	dptr,#_EPIRQ
	mov	a,#0x80
	movx	@dptr,a
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'init_USB'
;------------------------------------------------------------
;	d:\ztex\include\ztex.h:290: void init_USB ()
;	-----------------------------------------
;	 function init_USB
;	-----------------------------------------
_init_USB:
;	d:\ztex\include\ztex.h:292: USBCS |= bmBIT3;
	mov	dptr,#_USBCS
	movx	a,@dptr
	orl	a,#0x08
	movx	@dptr,a
;	d:\ztex\include\ztex.h:294: CPUCS = bmBIT4 | bmBIT1;
	mov	dptr,#_CPUCS
	mov	a,#0x12
	movx	@dptr,a
;	d:\ztex\include\ztex.h:295: wait(2);
	mov	dptr,#0x0002
	lcall	_wait
;	d:\ztex\include\ztex.h:296: CKCON &= ~7;
	mov	r7,_CKCON
	mov	a,#0xF8
	anl	a,r7
	mov	_CKCON,a
;	d:\ztex\include\ztex.h:311: IOA1 = 1;		
	setb	_IOA1
;	d:\ztex\include\ztex.h:312: OEA |= bmBIT1;
	orl	_OEA,#0x02
;	d:\ztex\include\ztex-fpga-flash.h:145: fpga_flash_result= 255;
	mov	dptr,#_fpga_flash_result
	mov	a,#0xFF
	movx	@dptr,a
;	d:\ztex\include\ztex.h:322: EA = 0;
	clr	_EA
;	d:\ztex\include\ztex.h:323: EUSB = 0;
	clr	_EUSB
;	d:\ztex\include\ezintavecs.h:123: INT8VEC_USB.op=0x02;
	mov	dptr,#_INT8VEC_USB
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:124: INT8VEC_USB.addrH = 0x01;
	mov	dptr,#(_INT8VEC_USB + 0x0001)
	mov	a,#0x01
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:125: INT8VEC_USB.addrL = 0xb8;
	mov	dptr,#(_INT8VEC_USB + 0x0002)
	mov	a,#0xB8
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:126: INTSETUP |= 8;
	mov	dptr,#_INTSETUP
	movx	a,@dptr
	orl	a,#0x08
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
	mov	dptr,#_INTVEC_SUDAV
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
	mov	r6,#_SUDAV_ISR
	mov	r7,#(_SUDAV_ISR >> 8)
	mov	ar5,r7
	mov	dptr,#(_INTVEC_SUDAV + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
	mov	dptr,#(_INTVEC_SUDAV + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
	mov	dptr,#_INTVEC_SOF
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
	mov	r6,#_SOF_ISR
	mov	r7,#(_SOF_ISR >> 8)
	mov	ar5,r7
	mov	dptr,#(_INTVEC_SOF + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
	mov	dptr,#(_INTVEC_SOF + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
	mov	dptr,#_INTVEC_SUTOK
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
	mov	r6,#_SUTOK_ISR
	mov	r7,#(_SUTOK_ISR >> 8)
	mov	ar5,r7
	mov	dptr,#(_INTVEC_SUTOK + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
	mov	dptr,#(_INTVEC_SUTOK + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
	mov	dptr,#_INTVEC_SUSPEND
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
	mov	r6,#_SUSP_ISR
	mov	r7,#(_SUSP_ISR >> 8)
	mov	ar5,r7
	mov	dptr,#(_INTVEC_SUSPEND + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
	mov	dptr,#(_INTVEC_SUSPEND + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
	mov	dptr,#_INTVEC_USBRESET
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
	mov	r6,#_URES_ISR
	mov	r7,#(_URES_ISR >> 8)
	mov	ar5,r7
	mov	dptr,#(_INTVEC_USBRESET + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
	mov	dptr,#(_INTVEC_USBRESET + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
	mov	dptr,#_INTVEC_HISPEED
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
	mov	r6,#_HSGRANT_ISR
	mov	r7,#(_HSGRANT_ISR >> 8)
	mov	ar5,r7
	mov	dptr,#(_INTVEC_HISPEED + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
	mov	dptr,#(_INTVEC_HISPEED + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
	mov	dptr,#_INTVEC_EP0ACK
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
	mov	r6,#_EP0ACK_ISR
	mov	r7,#(_EP0ACK_ISR >> 8)
	mov	ar5,r7
	mov	dptr,#(_INTVEC_EP0ACK + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
	mov	dptr,#(_INTVEC_EP0ACK + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
	mov	dptr,#_INTVEC_EP0IN
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
	mov	r6,#_EP0IN_ISR
	mov	r7,#(_EP0IN_ISR >> 8)
	mov	ar5,r7
	mov	dptr,#(_INTVEC_EP0IN + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
	mov	dptr,#(_INTVEC_EP0IN + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
	mov	dptr,#_INTVEC_EP0OUT
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
	mov	r6,#_EP0OUT_ISR
	mov	r7,#(_EP0OUT_ISR >> 8)
	mov	ar5,r7
	mov	dptr,#(_INTVEC_EP0OUT + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
	mov	dptr,#(_INTVEC_EP0OUT + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
	mov	dptr,#_INTVEC_EP1IN
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
	mov	r6,#_EP1IN_ISR
	mov	r7,#(_EP1IN_ISR >> 8)
	mov	ar5,r7
	mov	dptr,#(_INTVEC_EP1IN + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
	mov	dptr,#(_INTVEC_EP1IN + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
	mov	dptr,#_INTVEC_EP1OUT
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
	mov	r6,#_EP1OUT_ISR
	mov	r7,#(_EP1OUT_ISR >> 8)
	mov	ar5,r7
	mov	dptr,#(_INTVEC_EP1OUT + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
	mov	dptr,#(_INTVEC_EP1OUT + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
	mov	dptr,#_INTVEC_EP2
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
	mov	r6,#_EP2_ISR
	mov	r7,#(_EP2_ISR >> 8)
	mov	ar5,r7
	mov	dptr,#(_INTVEC_EP2 + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
	mov	dptr,#(_INTVEC_EP2 + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
	mov	dptr,#_INTVEC_EP4
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
	mov	r6,#_EP4_ISR
	mov	r7,#(_EP4_ISR >> 8)
	mov	ar5,r7
	mov	dptr,#(_INTVEC_EP4 + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
	mov	dptr,#(_INTVEC_EP4 + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
	mov	dptr,#_INTVEC_EP6
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
	mov	r6,#_EP6_ISR
	mov	r7,#(_EP6_ISR >> 8)
	mov	ar5,r7
	mov	dptr,#(_INTVEC_EP6 + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
	mov	dptr,#(_INTVEC_EP6 + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
	mov	dptr,#_INTVEC_EP8
	mov	a,#0x02
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
	mov	r6,#_EP8_ISR
	mov	r7,#(_EP8_ISR >> 8)
	mov	ar5,r7
	mov	dptr,#(_INTVEC_EP8 + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
	mov	dptr,#(_INTVEC_EP8 + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	d:\ztex\include\ztex.h:344: EXIF &= ~bmBIT4;
	mov	r7,_EXIF
	mov	a,#0xEF
	anl	a,r7
	mov	_EXIF,a
;	d:\ztex\include\ztex.h:345: USBIRQ = 0x7f;
	mov	dptr,#_USBIRQ
	mov	a,#0x7F
	movx	@dptr,a
;	d:\ztex\include\ztex.h:346: USBIE |= 0x7f; 
	mov	dptr,#_USBIE
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x7F
	movx	@dptr,a
;	d:\ztex\include\ztex.h:347: EPIRQ = 0xff;
	mov	dptr,#_EPIRQ
	mov	a,#0xFF
	movx	@dptr,a
;	d:\ztex\include\ztex.h:348: EPIE = 0xff;
	mov	dptr,#_EPIE
	mov	a,#0xFF
	movx	@dptr,a
;	d:\ztex\include\ztex.h:350: EUSB = 1;
	setb	_EUSB
;	d:\ztex\include\ztex.h:351: EA = 1;
	setb	_EA
;	d:\ztex\include\ztex.h:278: EP$0CFG = bmBIT7 | bmBIT5;
	mov	dptr,#_EP1INCFG
	mov	a,#0xA0
	movx	@dptr,a
;	d:\ztex\include\ezregs.h:46: __endasm;
	nop
	nop
	nop
	nop
;	d:\ztex\include\ztex.h:278: EP$0CFG = bmBIT7 | bmBIT5;
	mov	dptr,#_EP1OUTCFG
	mov	a,#0xA0
	movx	@dptr,a
;	d:\ztex\include\ezregs.h:46: __endasm;
	nop
	nop
	nop
	nop
;	d:\ztex\include\ztex.h:273: ;
	mov	dptr,#_EP2CFG
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ezregs.h:46: __endasm;
	nop
	nop
	nop
	nop
;	d:\ztex\include\ztex.h:273: ;
	mov	dptr,#_EP4CFG
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ezregs.h:46: __endasm;
	nop
	nop
	nop
	nop
;	d:\ztex\include\ztex.h:273: ;
	mov	dptr,#_EP6CFG
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ezregs.h:46: __endasm;
	nop
	nop
	nop
	nop
;	d:\ztex\include\ztex.h:273: ;
	mov	dptr,#_EP8CFG
	clr	a
	movx	@dptr,a
;	d:\ztex\include\ezregs.h:46: __endasm;
	nop
	nop
	nop
	nop
;	d:\ztex\include\ztex.h:371: flash_init();
	lcall	_flash_init
;	d:\ztex\include\ztex.h:374: fpga_configure_from_flash_init();
	lcall	_fpga_configure_from_flash_init
;	d:\ztex\include\ztex.h:389: USBCS |= bmBIT7 | bmBIT1;
	mov	dptr,#_USBCS
	movx	a,@dptr
	orl	a,#0x82
	movx	@dptr,a
;	d:\ztex\include\ztex.h:390: wait(10);
	mov	dptr,#0x000A
	lcall	_wait
;	d:\ztex\include\ztex.h:392: USBCS &= ~bmBIT3;
	mov	dptr,#_USBCS
	movx	a,@dptr
	anl	a,#0xF7
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	usb-test.c:186: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	usb-test.c:189: init_USB();
	lcall	_init_USB
;	usb-test.c:191: while (1)
00102$:
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_fpga_flash_boot_id:
	.db #0x5A	; 90	'Z'
	.db #0x54	; 84	'T'
	.db #0x45	; 69	'E'
	.db #0x58	; 88	'X'
	.db #0x42	; 66	'B'
	.db #0x53	; 83	'S'
	.db #0x01	; 1
	.db #0x01	; 1
_manufacturerString:
	.ascii "ZTEX"
	.db 0x00
_productString:
	.ascii "USB_Test UFM 1.11"
	.db 0x00
_configurationString:
	.ascii "default"
	.db 0x00
_PadByte:
	.db #0x00	; 0
_DeviceDescriptor:
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0x1A	; 26
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
_DeviceQualifierDescriptor:
	.db #0x0A	; 10
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x00	; 0
_HighSpeedConfigDescriptor:
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0xC0	; 192
	.db #0x32	; 50	'2'
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
_HighSpeedConfigDescriptor_PadByte:
	.db #0x00	; 0
	.db 0x00
_FullSpeedConfigDescriptor:
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0xC0	; 192
	.db #0x32	; 50	'2'
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
_FullSpeedConfigDescriptor_PadByte:
	.db #0x00	; 0
	.db 0x00
_EmptyStringDescriptor:
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.area XINIT   (CODE)
__xinit__ep0_payload_remaining:
	.byte #0x00,#0x00	; 0
__xinit__ep0_payload_transfer:
	.db #0x00	; 0
__xinit__generatePwds:
	.db #0x00	; 0
__xinit__pwdLen:
	.db #0x00	; 0
__xinit__ep0_prev_setup_request:
	.db #0xFF	; 255
__xinit__ep0_vendor_cmd_setup:
	.db #0x00	; 0
__xinit__ISOFRAME_COUNTER:
	.byte #0x00,#0x00	; 0
	.byte #0x00,#0x00	; 0
	.byte #0x00,#0x00	; 0
	.byte #0x00,#0x00	; 0
	.area CABS    (ABS,CODE)
