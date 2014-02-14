                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.2.1 #8547 (Apr 26 2013) (MINGW32)
                              4 ; This file was generated Sun Jun 23 19:37:30 2013
                              5 ;--------------------------------------------------------
                              6 	.module usb_test_tmp
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _flash_write_PARM_2
                             13 	.globl _flash_read_PARM_2
                             14 	.globl _EmptyStringDescriptor
                             15 	.globl _FullSpeedConfigDescriptor_PadByte
                             16 	.globl _FullSpeedConfigDescriptor
                             17 	.globl _HighSpeedConfigDescriptor_PadByte
                             18 	.globl _HighSpeedConfigDescriptor
                             19 	.globl _DeviceQualifierDescriptor
                             20 	.globl _DeviceDescriptor
                             21 	.globl _PadByte
                             22 	.globl _configurationString
                             23 	.globl _productString
                             24 	.globl _manufacturerString
                             25 	.globl _fpga_flash_boot_id
                             26 	.globl _main
                             27 	.globl _init_USB
                             28 	.globl _EP8_ISR
                             29 	.globl _EP6_ISR
                             30 	.globl _EP4_ISR
                             31 	.globl _EP2_ISR
                             32 	.globl _EP1OUT_ISR
                             33 	.globl _EP1IN_ISR
                             34 	.globl _EP0ACK_ISR
                             35 	.globl _HSGRANT_ISR
                             36 	.globl _URES_ISR
                             37 	.globl _SUSP_ISR
                             38 	.globl _SUTOK_ISR
                             39 	.globl _SOF_ISR
                             40 	.globl _abscode_identity
                             41 	.globl _fpga_configure_from_flash_init
                             42 	.globl _fpga_first_free_sector
                             43 	.globl _fpga_configure_from_flash
                             44 	.globl _fpga_send_bitstream_from_flash
                             45 	.globl _fpga_send_ep0
                             46 	.globl _mmc_send_ep0
                             47 	.globl _mmc_read_ep0
                             48 	.globl _flash_init
                             49 	.globl _flash_write_next
                             50 	.globl _flash_write_finish
                             51 	.globl _flash_write_finish_sector
                             52 	.globl _flash_write_init
                             53 	.globl _flash_read_finish
                             54 	.globl _flash_read_next
                             55 	.globl _flash_read_init
                             56 	.globl _mmc_wait_start
                             57 	.globl _mmc_read_response
                             58 	.globl _mmc_deselect
                             59 	.globl _mmc_select
                             60 	.globl _mmc_wait_busy
                             61 	.globl _flash_write
                             62 	.globl _flash_write_byte
                             63 	.globl _flash_read
                             64 	.globl _flash_read_byte
                             65 	.globl _mmc_clocks
                             66 	.globl _eeprom_write_ep0
                             67 	.globl _eeprom_read_ep0
                             68 	.globl _eeprom_write
                             69 	.globl _eeprom_read
                             70 	.globl _eeprom_select
                             71 	.globl _i2c_waitStop
                             72 	.globl _i2c_waitStart
                             73 	.globl _i2c_waitRead
                             74 	.globl _i2c_waitWrite
                             75 	.globl _receiveTargetKey
                             76 	.globl _receiveEssid
                             77 	.globl _receivePassword
                             78 	.globl _sendStatus
                             79 	.globl _sendPwd
                             80 	.globl _receiveData
                             81 	.globl _receiveLen
                             82 	.globl _MEM_COPY1_int
                             83 	.globl _uwait
                             84 	.globl _wait
                             85 	.globl _abscode_intvec
                             86 	.globl _EIPX6
                             87 	.globl _EIPX5
                             88 	.globl _EIPX4
                             89 	.globl _PI2C
                             90 	.globl _PUSB
                             91 	.globl _BREG7
                             92 	.globl _BREG6
                             93 	.globl _BREG5
                             94 	.globl _BREG4
                             95 	.globl _BREG3
                             96 	.globl _BREG2
                             97 	.globl _BREG1
                             98 	.globl _BREG0
                             99 	.globl _EIEX6
                            100 	.globl _EIEX5
                            101 	.globl _EIEX4
                            102 	.globl _EI2C
                            103 	.globl _EUSB
                            104 	.globl _ACC7
                            105 	.globl _ACC6
                            106 	.globl _ACC5
                            107 	.globl _ACC4
                            108 	.globl _ACC3
                            109 	.globl _ACC2
                            110 	.globl _ACC1
                            111 	.globl _ACC0
                            112 	.globl _SMOD1
                            113 	.globl _ERESI
                            114 	.globl _RESI
                            115 	.globl _INT6
                            116 	.globl _CY
                            117 	.globl _AC
                            118 	.globl _F0
                            119 	.globl _RS1
                            120 	.globl _RS0
                            121 	.globl _OV
                            122 	.globl _F1
                            123 	.globl _PF
                            124 	.globl _TF2
                            125 	.globl _EXF2
                            126 	.globl _RCLK
                            127 	.globl _TCLK
                            128 	.globl _EXEN2
                            129 	.globl _TR2
                            130 	.globl _CT2
                            131 	.globl _CPRL2
                            132 	.globl _SM0_1
                            133 	.globl _SM1_1
                            134 	.globl _SM2_1
                            135 	.globl _REN_1
                            136 	.globl _TB8_1
                            137 	.globl _RB8_1
                            138 	.globl _TI_1
                            139 	.globl _RI_1
                            140 	.globl _PS1
                            141 	.globl _PT2
                            142 	.globl _PS0
                            143 	.globl _PT1
                            144 	.globl _PX1
                            145 	.globl _PT0
                            146 	.globl _PX0
                            147 	.globl _IOD7
                            148 	.globl _IOD6
                            149 	.globl _IOD5
                            150 	.globl _IOD4
                            151 	.globl _IOD3
                            152 	.globl _IOD2
                            153 	.globl _IOD1
                            154 	.globl _IOD0
                            155 	.globl _EA
                            156 	.globl _ES1
                            157 	.globl _ET2
                            158 	.globl _ES0
                            159 	.globl _ET1
                            160 	.globl _EX1
                            161 	.globl _ET0
                            162 	.globl _EX0
                            163 	.globl _IOC7
                            164 	.globl _IOC6
                            165 	.globl _IOC5
                            166 	.globl _IOC4
                            167 	.globl _IOC3
                            168 	.globl _IOC2
                            169 	.globl _IOC1
                            170 	.globl _IOC0
                            171 	.globl _SM0_0
                            172 	.globl _SM1_0
                            173 	.globl _SM2_0
                            174 	.globl _REN_0
                            175 	.globl _TB8_0
                            176 	.globl _RB8_0
                            177 	.globl _TI_0
                            178 	.globl _RI_0
                            179 	.globl _IOB7
                            180 	.globl _IOB6
                            181 	.globl _IOB5
                            182 	.globl _IOB4
                            183 	.globl _IOB3
                            184 	.globl _IOB2
                            185 	.globl _IOB1
                            186 	.globl _IOB0
                            187 	.globl _TF1
                            188 	.globl _TR1
                            189 	.globl _TF0
                            190 	.globl _TR0
                            191 	.globl _IE1
                            192 	.globl _IT1
                            193 	.globl _IE0
                            194 	.globl _IT0
                            195 	.globl _IOA7
                            196 	.globl _IOA6
                            197 	.globl _IOA5
                            198 	.globl _IOA4
                            199 	.globl _IOA3
                            200 	.globl _IOA2
                            201 	.globl _IOA1
                            202 	.globl _IOA0
                            203 	.globl _EIP
                            204 	.globl _BREG
                            205 	.globl _EIE
                            206 	.globl _ACC
                            207 	.globl _EICON
                            208 	.globl _PSW
                            209 	.globl _TH2
                            210 	.globl _TL2
                            211 	.globl _RCAP2H
                            212 	.globl _RCAP2L
                            213 	.globl _T2CON
                            214 	.globl _SBUF1
                            215 	.globl _SCON1
                            216 	.globl _GPIFSGLDATLNOX
                            217 	.globl _GPIFSGLDATLX
                            218 	.globl _GPIFSGLDATH
                            219 	.globl _GPIFTRIG
                            220 	.globl _EP01STAT
                            221 	.globl _IP
                            222 	.globl _OEE
                            223 	.globl _OED
                            224 	.globl _OEC
                            225 	.globl _OEB
                            226 	.globl _OEA
                            227 	.globl _IOE
                            228 	.globl _IOD
                            229 	.globl _AUTOPTRSETUP
                            230 	.globl _EP68FIFOFLGS
                            231 	.globl _EP24FIFOFLGS
                            232 	.globl _EP2468STAT
                            233 	.globl _IE
                            234 	.globl _INT4CLR
                            235 	.globl _INT2CLR
                            236 	.globl _IOC
                            237 	.globl _AUTOPTRL2
                            238 	.globl _AUTOPTRH2
                            239 	.globl _AUTOPTRL1
                            240 	.globl _AUTOPTRH1
                            241 	.globl _SBUF0
                            242 	.globl _SCON0
                            243 	.globl __XPAGE
                            244 	.globl _MPAGE
                            245 	.globl _EXIF
                            246 	.globl _IOB
                            247 	.globl _CKCON
                            248 	.globl _TH1
                            249 	.globl _TH0
                            250 	.globl _TL1
                            251 	.globl _TL0
                            252 	.globl _TMOD
                            253 	.globl _TCON
                            254 	.globl _PCON
                            255 	.globl _DPS
                            256 	.globl _DPH1
                            257 	.globl _DPL1
                            258 	.globl _DPH0
                            259 	.globl _DPL0
                            260 	.globl _SP
                            261 	.globl _IOA
                            262 	.globl _ISOFRAME_COUNTER
                            263 	.globl _ep0_vendor_cmd_setup
                            264 	.globl _ep0_prev_setup_request
                            265 	.globl _pwdLen
                            266 	.globl _generatePwds
                            267 	.globl _ep0_payload_transfer
                            268 	.globl _ep0_payload_remaining
                            269 	.globl _SN_STRING
                            270 	.globl _MODULE_RESERVED
                            271 	.globl _INTERFACE_CAPABILITIES
                            272 	.globl _INTERFACE_VERSION
                            273 	.globl _FW_VERSION
                            274 	.globl _PRODUCT_ID
                            275 	.globl _ZTEXID
                            276 	.globl _ZTEX_DESCRIPTOR_VERSION
                            277 	.globl _ZTEX_DESCRIPTOR
                            278 	.globl _fpga_flash_result
                            279 	.globl _fpga_init_b
                            280 	.globl _fpga_bytes
                            281 	.globl _fpga_checksum
                            282 	.globl _mmc_ep0_wait
                            283 	.globl _mmc_buffer
                            284 	.globl _mmc_version
                            285 	.globl _mmc_response
                            286 	.globl _mmc_last_cmd
                            287 	.globl _flash_ec
                            288 	.globl _flash_sectors
                            289 	.globl _flash_sector_size
                            290 	.globl _flash_enabled
                            291 	.globl _eeprom_write_checksum
                            292 	.globl _eeprom_write_bytes
                            293 	.globl _eeprom_addr
                            294 	.globl _pwd
                            295 	.globl _pwdStatusSector
                            296 	.globl _INTVEC_GPIFWF
                            297 	.globl _INTVEC_GPIFDONE
                            298 	.globl _INTVEC_EP8FF
                            299 	.globl _INTVEC_EP6FF
                            300 	.globl _INTVEC_EP2FF
                            301 	.globl _INTVEC_EP8EF
                            302 	.globl _INTVEC_EP6EF
                            303 	.globl _INTVEC_EP4EF
                            304 	.globl _INTVEC_EP2EF
                            305 	.globl _INTVEC_EP8PF
                            306 	.globl _INTVEC_EP6PF
                            307 	.globl _INTVEC_EP4PF
                            308 	.globl _INTVEC_EP2PF
                            309 	.globl _INTVEC_EP8ISOERR
                            310 	.globl _INTVEC_EP6ISOERR
                            311 	.globl _INTVEC_EP4ISOERR
                            312 	.globl _INTVEC_EP2ISOERR
                            313 	.globl _INTVEC_ERRLIMIT
                            314 	.globl _INTVEC_EP8PING
                            315 	.globl _INTVEC_EP6PING
                            316 	.globl _INTVEC_EP4PING
                            317 	.globl _INTVEC_EP2PING
                            318 	.globl _INTVEC_EP1PING
                            319 	.globl _INTVEC_EP0PING
                            320 	.globl _INTVEC_IBN
                            321 	.globl _INTVEC_EP8
                            322 	.globl _INTVEC_EP6
                            323 	.globl _INTVEC_EP4
                            324 	.globl _INTVEC_EP2
                            325 	.globl _INTVEC_EP1OUT
                            326 	.globl _INTVEC_EP1IN
                            327 	.globl _INTVEC_EP0OUT
                            328 	.globl _INTVEC_EP0IN
                            329 	.globl _INTVEC_EP0ACK
                            330 	.globl _INTVEC_HISPEED
                            331 	.globl _INTVEC_USBRESET
                            332 	.globl _INTVEC_SUSPEND
                            333 	.globl _INTVEC_SUTOK
                            334 	.globl _INTVEC_SOF
                            335 	.globl _INTVEC_SUDAV
                            336 	.globl _INT12VEC_IE6
                            337 	.globl _INT11VEC_IE5
                            338 	.globl _INT10VEC_GPIF
                            339 	.globl _INT9VEC_I2C
                            340 	.globl _INT8VEC_USB
                            341 	.globl _INT7VEC_USART1
                            342 	.globl _INT6VEC_RESUME
                            343 	.globl _INT5VEC_T2
                            344 	.globl _INT4VEC_USART0
                            345 	.globl _INT3VEC_T1
                            346 	.globl _INT2VEC_IE1
                            347 	.globl _INT1VEC_T0
                            348 	.globl _INT0VEC_IE0
                            349 	.globl _EP8FIFOBUF
                            350 	.globl _EP6FIFOBUF
                            351 	.globl _EP4FIFOBUF
                            352 	.globl _EP2FIFOBUF
                            353 	.globl _EP1INBUF
                            354 	.globl _EP1OUTBUF
                            355 	.globl _EP0BUF
                            356 	.globl _GPIFABORT
                            357 	.globl _GPIFREADYSTAT
                            358 	.globl _GPIFREADYCFG
                            359 	.globl _XGPIFSGLDATLNOX
                            360 	.globl _XGPIFSGLDATLX
                            361 	.globl _XGPIFSGLDATH
                            362 	.globl _EP8GPIFTRIG
                            363 	.globl _EP8GPIFPFSTOP
                            364 	.globl _EP8GPIFFLGSEL
                            365 	.globl _EP6GPIFTRIG
                            366 	.globl _EP6GPIFPFSTOP
                            367 	.globl _EP6GPIFFLGSEL
                            368 	.globl _EP4GPIFTRIG
                            369 	.globl _EP4GPIFPFSTOP
                            370 	.globl _EP4GPIFFLGSEL
                            371 	.globl _EP2GPIFTRIG
                            372 	.globl _EP2GPIFPFSTOP
                            373 	.globl _EP2GPIFFLGSEL
                            374 	.globl _GPIFTCB0
                            375 	.globl _GPIFTCB1
                            376 	.globl _GPIFTCB2
                            377 	.globl _GPIFTCB3
                            378 	.globl _FLOWSTBHPERIOD
                            379 	.globl _FLOWSTBEDGE
                            380 	.globl _FLOWSTB
                            381 	.globl _FLOWHOLDOFF
                            382 	.globl _FLOWEQ1CTL
                            383 	.globl _FLOWEQ0CTL
                            384 	.globl _FLOWLOGIC
                            385 	.globl _FLOWSTATE
                            386 	.globl _GPIFADRL
                            387 	.globl _GPIFADRH
                            388 	.globl _GPIFCTLCFG
                            389 	.globl _GPIFIDLECTL
                            390 	.globl _GPIFIDLECS
                            391 	.globl _GPIFWFSELECT
                            392 	.globl _wLengthH
                            393 	.globl _wLengthL
                            394 	.globl _wIndexH
                            395 	.globl _wIndexL
                            396 	.globl _wValueH
                            397 	.globl _wValueL
                            398 	.globl _bRequest
                            399 	.globl _bmRequestType
                            400 	.globl _SETUPDAT
                            401 	.globl _SUDPTRCTL
                            402 	.globl _SUDPTRL
                            403 	.globl _SUDPTRH
                            404 	.globl _EP8FIFOBCL
                            405 	.globl _EP8FIFOBCH
                            406 	.globl _EP6FIFOBCL
                            407 	.globl _EP6FIFOBCH
                            408 	.globl _EP4FIFOBCL
                            409 	.globl _EP4FIFOBCH
                            410 	.globl _EP2FIFOBCL
                            411 	.globl _EP2FIFOBCH
                            412 	.globl _EP8FIFOFLGS
                            413 	.globl _EP6FIFOFLGS
                            414 	.globl _EP4FIFOFLGS
                            415 	.globl _EP2FIFOFLGS
                            416 	.globl _EP8CS
                            417 	.globl _EP6CS
                            418 	.globl _EP4CS
                            419 	.globl _EP2CS
                            420 	.globl _EPXCS
                            421 	.globl _EP1INCS
                            422 	.globl _EP1OUTCS
                            423 	.globl _EP0CS
                            424 	.globl _EP8BCL
                            425 	.globl _EP8BCH
                            426 	.globl _EP6BCL
                            427 	.globl _EP6BCH
                            428 	.globl _EP4BCL
                            429 	.globl _EP4BCH
                            430 	.globl _EP2BCL
                            431 	.globl _EP2BCH
                            432 	.globl _EP1INBC
                            433 	.globl _EP1OUTBC
                            434 	.globl _EP0BCL
                            435 	.globl _EP0BCH
                            436 	.globl _FNADDR
                            437 	.globl _MICROFRAME
                            438 	.globl _USBFRAMEL
                            439 	.globl _USBFRAMEH
                            440 	.globl _TOGCTL
                            441 	.globl _WAKEUPCS
                            442 	.globl _SUSPEND
                            443 	.globl _USBCS
                            444 	.globl _UDMACRCQUALIFIER
                            445 	.globl _UDMACRCL
                            446 	.globl _UDMACRCH
                            447 	.globl _EXTAUTODAT2
                            448 	.globl _XAUTODAT2
                            449 	.globl _EXTAUTODAT1
                            450 	.globl _XAUTODAT1
                            451 	.globl _I2CTL
                            452 	.globl _I2DAT
                            453 	.globl _I2CS
                            454 	.globl _PORTECFG
                            455 	.globl _PORTCCFG
                            456 	.globl _PORTACFG
                            457 	.globl _INTSETUP
                            458 	.globl _INT4IVEC
                            459 	.globl _INT2IVEC
                            460 	.globl _CLRERRCNT
                            461 	.globl _ERRCNTLIM
                            462 	.globl _USBERRIRQ
                            463 	.globl _USBERRIE
                            464 	.globl _GPIFIRQ
                            465 	.globl _GPIFIE
                            466 	.globl _EPIRQ
                            467 	.globl _EPIE
                            468 	.globl _USBIRQ
                            469 	.globl _USBIE
                            470 	.globl _NAKIRQ
                            471 	.globl _NAKIE
                            472 	.globl _IBNIRQ
                            473 	.globl _IBNIE
                            474 	.globl _EP8FIFOIRQ
                            475 	.globl _EP8FIFOIE
                            476 	.globl _EP6FIFOIRQ
                            477 	.globl _EP6FIFOIE
                            478 	.globl _EP4FIFOIRQ
                            479 	.globl _EP4FIFOIE
                            480 	.globl _EP2FIFOIRQ
                            481 	.globl _EP2FIFOIE
                            482 	.globl _OUTPKTEND
                            483 	.globl _INPKTEND
                            484 	.globl _EP8ISOINPKTS
                            485 	.globl _EP6ISOINPKTS
                            486 	.globl _EP4ISOINPKTS
                            487 	.globl _EP2ISOINPKTS
                            488 	.globl _EP8FIFOPFL
                            489 	.globl _EP8FIFOPFH
                            490 	.globl _EP6FIFOPFL
                            491 	.globl _EP6FIFOPFH
                            492 	.globl _EP4FIFOPFL
                            493 	.globl _EP4FIFOPFH
                            494 	.globl _EP2FIFOPFL
                            495 	.globl _EP2FIFOPFH
                            496 	.globl _ECC2B2
                            497 	.globl _ECC2B1
                            498 	.globl _ECC2B0
                            499 	.globl _ECC1B2
                            500 	.globl _ECC1B1
                            501 	.globl _ECC1B0
                            502 	.globl _ECCRESET
                            503 	.globl _ECCCFG
                            504 	.globl _EP8AUTOINLENL
                            505 	.globl _EP8AUTOINLENH
                            506 	.globl _EP6AUTOINLENL
                            507 	.globl _EP6AUTOINLENH
                            508 	.globl _EP4AUTOINLENL
                            509 	.globl _EP4AUTOINLENH
                            510 	.globl _EP2AUTOINLENL
                            511 	.globl _EP2AUTOINLENH
                            512 	.globl _EP8FIFOCFG
                            513 	.globl _EP6FIFOCFG
                            514 	.globl _EP4FIFOCFG
                            515 	.globl _EP2FIFOCFG
                            516 	.globl _EP8CFG
                            517 	.globl _EP6CFG
                            518 	.globl _EP4CFG
                            519 	.globl _EP2CFG
                            520 	.globl _EP1INCFG
                            521 	.globl _EP1OUTCFG
                            522 	.globl _GPIFHOLDAMOUNT
                            523 	.globl _REVCTL
                            524 	.globl _REVID
                            525 	.globl _FIFOPINPOLAR
                            526 	.globl _UART230
                            527 	.globl _BPADDRL
                            528 	.globl _BPADDRH
                            529 	.globl _BREAKPT
                            530 	.globl _FIFORESET
                            531 	.globl _PINFLAGSCD
                            532 	.globl _PINFLAGSAB
                            533 	.globl _IFCONFIG
                            534 	.globl _CPUCS
                            535 	.globl _GPCR2
                            536 	.globl _GPIF_WAVE3_DATA
                            537 	.globl _GPIF_WAVE2_DATA
                            538 	.globl _GPIF_WAVE1_DATA
                            539 	.globl _GPIF_WAVE0_DATA
                            540 	.globl _GPIF_WAVE_DATA
                            541 	.globl _eeprom_write_PARM_3
                            542 	.globl _eeprom_write_PARM_2
                            543 	.globl _eeprom_read_PARM_3
                            544 	.globl _eeprom_read_PARM_2
                            545 	.globl _eeprom_select_PARM_3
                            546 	.globl _eeprom_select_PARM_2
                            547 ;--------------------------------------------------------
                            548 ; special function registers
                            549 ;--------------------------------------------------------
                            550 	.area RSEG    (ABS,DATA)
   0000                     551 	.org 0x0000
                     0080   552 _IOA	=	0x0080
                     0081   553 _SP	=	0x0081
                     0082   554 _DPL0	=	0x0082
                     0083   555 _DPH0	=	0x0083
                     0084   556 _DPL1	=	0x0084
                     0085   557 _DPH1	=	0x0085
                     0086   558 _DPS	=	0x0086
                     0087   559 _PCON	=	0x0087
                     0088   560 _TCON	=	0x0088
                     0089   561 _TMOD	=	0x0089
                     008A   562 _TL0	=	0x008a
                     008B   563 _TL1	=	0x008b
                     008C   564 _TH0	=	0x008c
                     008D   565 _TH1	=	0x008d
                     008E   566 _CKCON	=	0x008e
                     0090   567 _IOB	=	0x0090
                     0091   568 _EXIF	=	0x0091
                     0092   569 _MPAGE	=	0x0092
                     0092   570 __XPAGE	=	0x0092
                     0098   571 _SCON0	=	0x0098
                     0099   572 _SBUF0	=	0x0099
                     009A   573 _AUTOPTRH1	=	0x009a
                     009B   574 _AUTOPTRL1	=	0x009b
                     009D   575 _AUTOPTRH2	=	0x009d
                     009E   576 _AUTOPTRL2	=	0x009e
                     00A0   577 _IOC	=	0x00a0
                     00A1   578 _INT2CLR	=	0x00a1
                     00A2   579 _INT4CLR	=	0x00a2
                     00A8   580 _IE	=	0x00a8
                     00AA   581 _EP2468STAT	=	0x00aa
                     00AB   582 _EP24FIFOFLGS	=	0x00ab
                     00AC   583 _EP68FIFOFLGS	=	0x00ac
                     00AF   584 _AUTOPTRSETUP	=	0x00af
                     00B0   585 _IOD	=	0x00b0
                     00B1   586 _IOE	=	0x00b1
                     00B2   587 _OEA	=	0x00b2
                     00B3   588 _OEB	=	0x00b3
                     00B4   589 _OEC	=	0x00b4
                     00B5   590 _OED	=	0x00b5
                     00B6   591 _OEE	=	0x00b6
                     00B8   592 _IP	=	0x00b8
                     00BA   593 _EP01STAT	=	0x00ba
                     00BB   594 _GPIFTRIG	=	0x00bb
                     00BD   595 _GPIFSGLDATH	=	0x00bd
                     00BE   596 _GPIFSGLDATLX	=	0x00be
                     00BF   597 _GPIFSGLDATLNOX	=	0x00bf
                     00C0   598 _SCON1	=	0x00c0
                     00C1   599 _SBUF1	=	0x00c1
                     00C8   600 _T2CON	=	0x00c8
                     00CA   601 _RCAP2L	=	0x00ca
                     00CB   602 _RCAP2H	=	0x00cb
                     00CC   603 _TL2	=	0x00cc
                     00CD   604 _TH2	=	0x00cd
                     00D0   605 _PSW	=	0x00d0
                     00D8   606 _EICON	=	0x00d8
                     00E0   607 _ACC	=	0x00e0
                     00E8   608 _EIE	=	0x00e8
                     00F0   609 _BREG	=	0x00f0
                     00F8   610 _EIP	=	0x00f8
                            611 ;--------------------------------------------------------
                            612 ; special function bits
                            613 ;--------------------------------------------------------
                            614 	.area RSEG    (ABS,DATA)
   0000                     615 	.org 0x0000
                     0080   616 _IOA0	=	0x0080
                     0081   617 _IOA1	=	0x0081
                     0082   618 _IOA2	=	0x0082
                     0083   619 _IOA3	=	0x0083
                     0084   620 _IOA4	=	0x0084
                     0085   621 _IOA5	=	0x0085
                     0086   622 _IOA6	=	0x0086
                     0087   623 _IOA7	=	0x0087
                     0088   624 _IT0	=	0x0088
                     0089   625 _IE0	=	0x0089
                     008A   626 _IT1	=	0x008a
                     008B   627 _IE1	=	0x008b
                     008C   628 _TR0	=	0x008c
                     008D   629 _TF0	=	0x008d
                     008E   630 _TR1	=	0x008e
                     008F   631 _TF1	=	0x008f
                     0090   632 _IOB0	=	0x0090
                     0091   633 _IOB1	=	0x0091
                     0092   634 _IOB2	=	0x0092
                     0093   635 _IOB3	=	0x0093
                     0094   636 _IOB4	=	0x0094
                     0095   637 _IOB5	=	0x0095
                     0096   638 _IOB6	=	0x0096
                     0097   639 _IOB7	=	0x0097
                     0098   640 _RI_0	=	0x0098
                     0099   641 _TI_0	=	0x0099
                     009A   642 _RB8_0	=	0x009a
                     009B   643 _TB8_0	=	0x009b
                     009C   644 _REN_0	=	0x009c
                     009D   645 _SM2_0	=	0x009d
                     009E   646 _SM1_0	=	0x009e
                     009F   647 _SM0_0	=	0x009f
                     00A0   648 _IOC0	=	0x00a0
                     00A1   649 _IOC1	=	0x00a1
                     00A2   650 _IOC2	=	0x00a2
                     00A3   651 _IOC3	=	0x00a3
                     00A4   652 _IOC4	=	0x00a4
                     00A5   653 _IOC5	=	0x00a5
                     00A6   654 _IOC6	=	0x00a6
                     00A7   655 _IOC7	=	0x00a7
                     00A8   656 _EX0	=	0x00a8
                     00A9   657 _ET0	=	0x00a9
                     00AA   658 _EX1	=	0x00aa
                     00AB   659 _ET1	=	0x00ab
                     00AC   660 _ES0	=	0x00ac
                     00AD   661 _ET2	=	0x00ad
                     00AE   662 _ES1	=	0x00ae
                     00AF   663 _EA	=	0x00af
                     00B0   664 _IOD0	=	0x00b0
                     00B1   665 _IOD1	=	0x00b1
                     00B2   666 _IOD2	=	0x00b2
                     00B3   667 _IOD3	=	0x00b3
                     00B4   668 _IOD4	=	0x00b4
                     00B5   669 _IOD5	=	0x00b5
                     00B6   670 _IOD6	=	0x00b6
                     00B7   671 _IOD7	=	0x00b7
                     00B8   672 _PX0	=	0x00b8
                     00B9   673 _PT0	=	0x00b9
                     00BA   674 _PX1	=	0x00ba
                     00BB   675 _PT1	=	0x00bb
                     00BC   676 _PS0	=	0x00bc
                     00BD   677 _PT2	=	0x00bd
                     00BE   678 _PS1	=	0x00be
                     00C0   679 _RI_1	=	0x00c0
                     00C1   680 _TI_1	=	0x00c1
                     00C2   681 _RB8_1	=	0x00c2
                     00C3   682 _TB8_1	=	0x00c3
                     00C4   683 _REN_1	=	0x00c4
                     00C5   684 _SM2_1	=	0x00c5
                     00C6   685 _SM1_1	=	0x00c6
                     00C7   686 _SM0_1	=	0x00c7
                     00C8   687 _CPRL2	=	0x00c8
                     00C9   688 _CT2	=	0x00c9
                     00CA   689 _TR2	=	0x00ca
                     00CB   690 _EXEN2	=	0x00cb
                     00CC   691 _TCLK	=	0x00cc
                     00CD   692 _RCLK	=	0x00cd
                     00CE   693 _EXF2	=	0x00ce
                     00CF   694 _TF2	=	0x00cf
                     00D0   695 _PF	=	0x00d0
                     00D1   696 _F1	=	0x00d1
                     00D2   697 _OV	=	0x00d2
                     00D3   698 _RS0	=	0x00d3
                     00D4   699 _RS1	=	0x00d4
                     00D5   700 _F0	=	0x00d5
                     00D6   701 _AC	=	0x00d6
                     00D7   702 _CY	=	0x00d7
                     00DB   703 _INT6	=	0x00db
                     00DC   704 _RESI	=	0x00dc
                     00DD   705 _ERESI	=	0x00dd
                     00DF   706 _SMOD1	=	0x00df
                     00E0   707 _ACC0	=	0x00e0
                     00E1   708 _ACC1	=	0x00e1
                     00E2   709 _ACC2	=	0x00e2
                     00E3   710 _ACC3	=	0x00e3
                     00E4   711 _ACC4	=	0x00e4
                     00E5   712 _ACC5	=	0x00e5
                     00E6   713 _ACC6	=	0x00e6
                     00E7   714 _ACC7	=	0x00e7
                     00E8   715 _EUSB	=	0x00e8
                     00E9   716 _EI2C	=	0x00e9
                     00EA   717 _EIEX4	=	0x00ea
                     00EB   718 _EIEX5	=	0x00eb
                     00EC   719 _EIEX6	=	0x00ec
                     00F0   720 _BREG0	=	0x00f0
                     00F1   721 _BREG1	=	0x00f1
                     00F2   722 _BREG2	=	0x00f2
                     00F3   723 _BREG3	=	0x00f3
                     00F4   724 _BREG4	=	0x00f4
                     00F5   725 _BREG5	=	0x00f5
                     00F6   726 _BREG6	=	0x00f6
                     00F7   727 _BREG7	=	0x00f7
                     00F8   728 _PUSB	=	0x00f8
                     00F9   729 _PI2C	=	0x00f9
                     00FA   730 _EIPX4	=	0x00fa
                     00FB   731 _EIPX5	=	0x00fb
                     00FC   732 _EIPX6	=	0x00fc
                            733 ;--------------------------------------------------------
                            734 ; overlayable register banks
                            735 ;--------------------------------------------------------
                            736 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     737 	.ds 8
                            738 ;--------------------------------------------------------
                            739 ; overlayable bit register bank
                            740 ;--------------------------------------------------------
                            741 	.area BIT_BANK	(REL,OVR,DATA)
   0021                     742 bits:
   0021                     743 	.ds 1
                     8000   744 	b0 = bits[0]
                     8100   745 	b1 = bits[1]
                     8200   746 	b2 = bits[2]
                     8300   747 	b3 = bits[3]
                     8400   748 	b4 = bits[4]
                     8500   749 	b5 = bits[5]
                     8600   750 	b6 = bits[6]
                     8700   751 	b7 = bits[7]
                            752 ;--------------------------------------------------------
                            753 ; internal ram data
                            754 ;--------------------------------------------------------
                            755 	.area DSEG    (DATA)
   0008                     756 _eeprom_select_PARM_2:
   0008                     757 	.ds 1
   0009                     758 _eeprom_select_PARM_3:
   0009                     759 	.ds 1
   000A                     760 _eeprom_read_PARM_2:
   000A                     761 	.ds 2
   000C                     762 _eeprom_read_PARM_3:
   000C                     763 	.ds 1
   000D                     764 _eeprom_write_PARM_2:
   000D                     765 	.ds 2
   000F                     766 _eeprom_write_PARM_3:
   000F                     767 	.ds 1
   0010                     768 _fpga_send_ep0_oOED_1_131:
   0010                     769 	.ds 1
                            770 ;--------------------------------------------------------
                            771 ; overlayable items in internal ram 
                            772 ;--------------------------------------------------------
                            773 	.area	OSEG    (OVR,DATA)
                            774 	.area	OSEG    (OVR,DATA)
                            775 	.area	OSEG    (OVR,DATA)
                            776 	.area	OSEG    (OVR,DATA)
                            777 	.area	OSEG    (OVR,DATA)
                            778 	.area	OSEG    (OVR,DATA)
                            779 	.area	OSEG    (OVR,DATA)
                            780 	.area	OSEG    (OVR,DATA)
                            781 	.area	OSEG    (OVR,DATA)
                            782 	.area	OSEG    (OVR,DATA)
   0011                     783 _flash_read_PARM_2:
   0011                     784 	.ds 1
                            785 	.area	OSEG    (OVR,DATA)
                            786 	.area	OSEG    (OVR,DATA)
   0011                     787 _flash_write_PARM_2:
   0011                     788 	.ds 1
                            789 	.area	OSEG    (OVR,DATA)
                            790 	.area	OSEG    (OVR,DATA)
   0011                     791 _sendStringDescriptor_PARM_2:
   0011                     792 	.ds 1
   0012                     793 _sendStringDescriptor_PARM_3:
   0012                     794 	.ds 1
                            795 ;--------------------------------------------------------
                            796 ; Stack segment in internal ram 
                            797 ;--------------------------------------------------------
                            798 	.area	SSEG	(DATA)
   0022                     799 __start__stack:
   0022                     800 	.ds	1
                            801 
                            802 ;--------------------------------------------------------
                            803 ; indirectly addressable internal ram data
                            804 ;--------------------------------------------------------
                            805 	.area ISEG    (DATA)
                            806 ;--------------------------------------------------------
                            807 ; absolute internal ram data
                            808 ;--------------------------------------------------------
                            809 	.area IABS    (ABS,DATA)
                            810 	.area IABS    (ABS,DATA)
                            811 ;--------------------------------------------------------
                            812 ; bit data
                            813 ;--------------------------------------------------------
                            814 	.area BSEG    (BIT)
   0000                     815 _receiveData_sloc0_1_0:
   0000                     816 	.ds 1
   0001                     817 _sendPwd_sloc0_1_0:
   0001                     818 	.ds 1
                            819 ;--------------------------------------------------------
                            820 ; paged external ram data
                            821 ;--------------------------------------------------------
                            822 	.area PSEG    (PAG,XDATA)
                            823 ;--------------------------------------------------------
                            824 ; external ram data
                            825 ;--------------------------------------------------------
                            826 	.area XSEG    (XDATA)
                     E400   827 _GPIF_WAVE_DATA	=	0xe400
                     E400   828 _GPIF_WAVE0_DATA	=	0xe400
                     E420   829 _GPIF_WAVE1_DATA	=	0xe420
                     E440   830 _GPIF_WAVE2_DATA	=	0xe440
                     E460   831 _GPIF_WAVE3_DATA	=	0xe460
                     E50D   832 _GPCR2	=	0xe50d
                     E600   833 _CPUCS	=	0xe600
                     E601   834 _IFCONFIG	=	0xe601
                     E602   835 _PINFLAGSAB	=	0xe602
                     E603   836 _PINFLAGSCD	=	0xe603
                     E604   837 _FIFORESET	=	0xe604
                     E605   838 _BREAKPT	=	0xe605
                     E606   839 _BPADDRH	=	0xe606
                     E607   840 _BPADDRL	=	0xe607
                     E608   841 _UART230	=	0xe608
                     E609   842 _FIFOPINPOLAR	=	0xe609
                     E60A   843 _REVID	=	0xe60a
                     E60B   844 _REVCTL	=	0xe60b
                     E60C   845 _GPIFHOLDAMOUNT	=	0xe60c
                     E610   846 _EP1OUTCFG	=	0xe610
                     E611   847 _EP1INCFG	=	0xe611
                     E612   848 _EP2CFG	=	0xe612
                     E613   849 _EP4CFG	=	0xe613
                     E614   850 _EP6CFG	=	0xe614
                     E615   851 _EP8CFG	=	0xe615
                     E618   852 _EP2FIFOCFG	=	0xe618
                     E619   853 _EP4FIFOCFG	=	0xe619
                     E61A   854 _EP6FIFOCFG	=	0xe61a
                     E61B   855 _EP8FIFOCFG	=	0xe61b
                     E620   856 _EP2AUTOINLENH	=	0xe620
                     E621   857 _EP2AUTOINLENL	=	0xe621
                     E622   858 _EP4AUTOINLENH	=	0xe622
                     E623   859 _EP4AUTOINLENL	=	0xe623
                     E624   860 _EP6AUTOINLENH	=	0xe624
                     E625   861 _EP6AUTOINLENL	=	0xe625
                     E626   862 _EP8AUTOINLENH	=	0xe626
                     E627   863 _EP8AUTOINLENL	=	0xe627
                     E628   864 _ECCCFG	=	0xe628
                     E629   865 _ECCRESET	=	0xe629
                     E62A   866 _ECC1B0	=	0xe62a
                     E62B   867 _ECC1B1	=	0xe62b
                     E62C   868 _ECC1B2	=	0xe62c
                     E62D   869 _ECC2B0	=	0xe62d
                     E62E   870 _ECC2B1	=	0xe62e
                     E62F   871 _ECC2B2	=	0xe62f
                     E630   872 _EP2FIFOPFH	=	0xe630
                     E631   873 _EP2FIFOPFL	=	0xe631
                     E632   874 _EP4FIFOPFH	=	0xe632
                     E633   875 _EP4FIFOPFL	=	0xe633
                     E634   876 _EP6FIFOPFH	=	0xe634
                     E635   877 _EP6FIFOPFL	=	0xe635
                     E636   878 _EP8FIFOPFH	=	0xe636
                     E637   879 _EP8FIFOPFL	=	0xe637
                     E640   880 _EP2ISOINPKTS	=	0xe640
                     E641   881 _EP4ISOINPKTS	=	0xe641
                     E642   882 _EP6ISOINPKTS	=	0xe642
                     E643   883 _EP8ISOINPKTS	=	0xe643
                     E648   884 _INPKTEND	=	0xe648
                     E649   885 _OUTPKTEND	=	0xe649
                     E650   886 _EP2FIFOIE	=	0xe650
                     E651   887 _EP2FIFOIRQ	=	0xe651
                     E652   888 _EP4FIFOIE	=	0xe652
                     E653   889 _EP4FIFOIRQ	=	0xe653
                     E654   890 _EP6FIFOIE	=	0xe654
                     E655   891 _EP6FIFOIRQ	=	0xe655
                     E656   892 _EP8FIFOIE	=	0xe656
                     E657   893 _EP8FIFOIRQ	=	0xe657
                     E658   894 _IBNIE	=	0xe658
                     E659   895 _IBNIRQ	=	0xe659
                     E65A   896 _NAKIE	=	0xe65a
                     E65B   897 _NAKIRQ	=	0xe65b
                     E65C   898 _USBIE	=	0xe65c
                     E65D   899 _USBIRQ	=	0xe65d
                     E65E   900 _EPIE	=	0xe65e
                     E65F   901 _EPIRQ	=	0xe65f
                     E660   902 _GPIFIE	=	0xe660
                     E661   903 _GPIFIRQ	=	0xe661
                     E662   904 _USBERRIE	=	0xe662
                     E663   905 _USBERRIRQ	=	0xe663
                     E664   906 _ERRCNTLIM	=	0xe664
                     E665   907 _CLRERRCNT	=	0xe665
                     E666   908 _INT2IVEC	=	0xe666
                     E667   909 _INT4IVEC	=	0xe667
                     E668   910 _INTSETUP	=	0xe668
                     E670   911 _PORTACFG	=	0xe670
                     E671   912 _PORTCCFG	=	0xe671
                     E672   913 _PORTECFG	=	0xe672
                     E678   914 _I2CS	=	0xe678
                     E679   915 _I2DAT	=	0xe679
                     E67A   916 _I2CTL	=	0xe67a
                     E67B   917 _XAUTODAT1	=	0xe67b
                     E67B   918 _EXTAUTODAT1	=	0xe67b
                     E67C   919 _XAUTODAT2	=	0xe67c
                     E67C   920 _EXTAUTODAT2	=	0xe67c
                     E67D   921 _UDMACRCH	=	0xe67d
                     E67E   922 _UDMACRCL	=	0xe67e
                     E67F   923 _UDMACRCQUALIFIER	=	0xe67f
                     E680   924 _USBCS	=	0xe680
                     E681   925 _SUSPEND	=	0xe681
                     E682   926 _WAKEUPCS	=	0xe682
                     E683   927 _TOGCTL	=	0xe683
                     E684   928 _USBFRAMEH	=	0xe684
                     E685   929 _USBFRAMEL	=	0xe685
                     E686   930 _MICROFRAME	=	0xe686
                     E687   931 _FNADDR	=	0xe687
                     E68A   932 _EP0BCH	=	0xe68a
                     E68B   933 _EP0BCL	=	0xe68b
                     E68D   934 _EP1OUTBC	=	0xe68d
                     E68F   935 _EP1INBC	=	0xe68f
                     E690   936 _EP2BCH	=	0xe690
                     E691   937 _EP2BCL	=	0xe691
                     E694   938 _EP4BCH	=	0xe694
                     E695   939 _EP4BCL	=	0xe695
                     E698   940 _EP6BCH	=	0xe698
                     E699   941 _EP6BCL	=	0xe699
                     E69C   942 _EP8BCH	=	0xe69c
                     E69D   943 _EP8BCL	=	0xe69d
                     E6A0   944 _EP0CS	=	0xe6a0
                     E6A1   945 _EP1OUTCS	=	0xe6a1
                     E6A2   946 _EP1INCS	=	0xe6a2
                     E6A3   947 _EPXCS	=	0xe6a3
                     E6A3   948 _EP2CS	=	0xe6a3
                     E6A4   949 _EP4CS	=	0xe6a4
                     E6A5   950 _EP6CS	=	0xe6a5
                     E6A6   951 _EP8CS	=	0xe6a6
                     E6A7   952 _EP2FIFOFLGS	=	0xe6a7
                     E6A8   953 _EP4FIFOFLGS	=	0xe6a8
                     E6A9   954 _EP6FIFOFLGS	=	0xe6a9
                     E6AA   955 _EP8FIFOFLGS	=	0xe6aa
                     E6AB   956 _EP2FIFOBCH	=	0xe6ab
                     E6AC   957 _EP2FIFOBCL	=	0xe6ac
                     E6AD   958 _EP4FIFOBCH	=	0xe6ad
                     E6AE   959 _EP4FIFOBCL	=	0xe6ae
                     E6AF   960 _EP6FIFOBCH	=	0xe6af
                     E6B0   961 _EP6FIFOBCL	=	0xe6b0
                     E6B1   962 _EP8FIFOBCH	=	0xe6b1
                     E6B2   963 _EP8FIFOBCL	=	0xe6b2
                     E6B3   964 _SUDPTRH	=	0xe6b3
                     E6B4   965 _SUDPTRL	=	0xe6b4
                     E6B5   966 _SUDPTRCTL	=	0xe6b5
                     E6B8   967 _SETUPDAT	=	0xe6b8
                     E6B8   968 _bmRequestType	=	0xe6b8
                     E6B9   969 _bRequest	=	0xe6b9
                     E6BA   970 _wValueL	=	0xe6ba
                     E6BB   971 _wValueH	=	0xe6bb
                     E6BC   972 _wIndexL	=	0xe6bc
                     E6BD   973 _wIndexH	=	0xe6bd
                     E6BE   974 _wLengthL	=	0xe6be
                     E6BF   975 _wLengthH	=	0xe6bf
                     E6C0   976 _GPIFWFSELECT	=	0xe6c0
                     E6C1   977 _GPIFIDLECS	=	0xe6c1
                     E6C2   978 _GPIFIDLECTL	=	0xe6c2
                     E6C3   979 _GPIFCTLCFG	=	0xe6c3
                     E6C4   980 _GPIFADRH	=	0xe6c4
                     E6C5   981 _GPIFADRL	=	0xe6c5
                     E6C6   982 _FLOWSTATE	=	0xe6c6
                     E6C7   983 _FLOWLOGIC	=	0xe6c7
                     E6C8   984 _FLOWEQ0CTL	=	0xe6c8
                     E6C9   985 _FLOWEQ1CTL	=	0xe6c9
                     E6CA   986 _FLOWHOLDOFF	=	0xe6ca
                     E6CB   987 _FLOWSTB	=	0xe6cb
                     E6CC   988 _FLOWSTBEDGE	=	0xe6cc
                     E6CD   989 _FLOWSTBHPERIOD	=	0xe6cd
                     E6CE   990 _GPIFTCB3	=	0xe6ce
                     E6CF   991 _GPIFTCB2	=	0xe6cf
                     E6D0   992 _GPIFTCB1	=	0xe6d0
                     E6D1   993 _GPIFTCB0	=	0xe6d1
                     E6D2   994 _EP2GPIFFLGSEL	=	0xe6d2
                     E6D3   995 _EP2GPIFPFSTOP	=	0xe6d3
                     E6D4   996 _EP2GPIFTRIG	=	0xe6d4
                     E6DA   997 _EP4GPIFFLGSEL	=	0xe6da
                     E6DB   998 _EP4GPIFPFSTOP	=	0xe6db
                     E6DC   999 _EP4GPIFTRIG	=	0xe6dc
                     E6E2  1000 _EP6GPIFFLGSEL	=	0xe6e2
                     E6E3  1001 _EP6GPIFPFSTOP	=	0xe6e3
                     E6E4  1002 _EP6GPIFTRIG	=	0xe6e4
                     E6EA  1003 _EP8GPIFFLGSEL	=	0xe6ea
                     E6EB  1004 _EP8GPIFPFSTOP	=	0xe6eb
                     E6EC  1005 _EP8GPIFTRIG	=	0xe6ec
                     E6F0  1006 _XGPIFSGLDATH	=	0xe6f0
                     E6F1  1007 _XGPIFSGLDATLX	=	0xe6f1
                     E6F2  1008 _XGPIFSGLDATLNOX	=	0xe6f2
                     E6F3  1009 _GPIFREADYCFG	=	0xe6f3
                     E6F4  1010 _GPIFREADYSTAT	=	0xe6f4
                     E6F5  1011 _GPIFABORT	=	0xe6f5
                     E740  1012 _EP0BUF	=	0xe740
                     E780  1013 _EP1OUTBUF	=	0xe780
                     E7C0  1014 _EP1INBUF	=	0xe7c0
                     F000  1015 _EP2FIFOBUF	=	0xf000
                     F400  1016 _EP4FIFOBUF	=	0xf400
                     F800  1017 _EP6FIFOBUF	=	0xf800
                     FC00  1018 _EP8FIFOBUF	=	0xfc00
                     0003  1019 _INT0VEC_IE0	=	0x0003
                     000B  1020 _INT1VEC_T0	=	0x000b
                     0013  1021 _INT2VEC_IE1	=	0x0013
                     001B  1022 _INT3VEC_T1	=	0x001b
                     0023  1023 _INT4VEC_USART0	=	0x0023
                     002B  1024 _INT5VEC_T2	=	0x002b
                     0033  1025 _INT6VEC_RESUME	=	0x0033
                     003B  1026 _INT7VEC_USART1	=	0x003b
                     0043  1027 _INT8VEC_USB	=	0x0043
                     004B  1028 _INT9VEC_I2C	=	0x004b
                     0053  1029 _INT10VEC_GPIF	=	0x0053
                     005B  1030 _INT11VEC_IE5	=	0x005b
                     0063  1031 _INT12VEC_IE6	=	0x0063
                     0100  1032 _INTVEC_SUDAV	=	0x0100
                     0104  1033 _INTVEC_SOF	=	0x0104
                     0108  1034 _INTVEC_SUTOK	=	0x0108
                     010C  1035 _INTVEC_SUSPEND	=	0x010c
                     0110  1036 _INTVEC_USBRESET	=	0x0110
                     0114  1037 _INTVEC_HISPEED	=	0x0114
                     0118  1038 _INTVEC_EP0ACK	=	0x0118
                     0120  1039 _INTVEC_EP0IN	=	0x0120
                     0124  1040 _INTVEC_EP0OUT	=	0x0124
                     0128  1041 _INTVEC_EP1IN	=	0x0128
                     012C  1042 _INTVEC_EP1OUT	=	0x012c
                     0130  1043 _INTVEC_EP2	=	0x0130
                     0134  1044 _INTVEC_EP4	=	0x0134
                     0138  1045 _INTVEC_EP6	=	0x0138
                     013C  1046 _INTVEC_EP8	=	0x013c
                     0140  1047 _INTVEC_IBN	=	0x0140
                     0148  1048 _INTVEC_EP0PING	=	0x0148
                     014C  1049 _INTVEC_EP1PING	=	0x014c
                     0150  1050 _INTVEC_EP2PING	=	0x0150
                     0154  1051 _INTVEC_EP4PING	=	0x0154
                     0158  1052 _INTVEC_EP6PING	=	0x0158
                     015C  1053 _INTVEC_EP8PING	=	0x015c
                     0160  1054 _INTVEC_ERRLIMIT	=	0x0160
                     0170  1055 _INTVEC_EP2ISOERR	=	0x0170
                     0174  1056 _INTVEC_EP4ISOERR	=	0x0174
                     0178  1057 _INTVEC_EP6ISOERR	=	0x0178
                     017C  1058 _INTVEC_EP8ISOERR	=	0x017c
                     0180  1059 _INTVEC_EP2PF	=	0x0180
                     0184  1060 _INTVEC_EP4PF	=	0x0184
                     0188  1061 _INTVEC_EP6PF	=	0x0188
                     018C  1062 _INTVEC_EP8PF	=	0x018c
                     0190  1063 _INTVEC_EP2EF	=	0x0190
                     0194  1064 _INTVEC_EP4EF	=	0x0194
                     0198  1065 _INTVEC_EP6EF	=	0x0198
                     019C  1066 _INTVEC_EP8EF	=	0x019c
                     01A0  1067 _INTVEC_EP2FF	=	0x01a0
                     01A8  1068 _INTVEC_EP6FF	=	0x01a8
                     01AC  1069 _INTVEC_EP8FF	=	0x01ac
                     01B0  1070 _INTVEC_GPIFDONE	=	0x01b0
                     01B4  1071 _INTVEC_GPIFWF	=	0x01b4
   3A00                    1072 _pwdStatusSector::
   3A00                    1073 	.ds 2
   3A02                    1074 _pwd::
   3A02                    1075 	.ds 64
   3A42                    1076 _eeprom_addr::
   3A42                    1077 	.ds 2
   3A44                    1078 _eeprom_write_bytes::
   3A44                    1079 	.ds 2
   3A46                    1080 _eeprom_write_checksum::
   3A46                    1081 	.ds 1
   3A47                    1082 _flash_enabled::
   3A47                    1083 	.ds 1
   3A48                    1084 _flash_sector_size::
   3A48                    1085 	.ds 2
   3A4A                    1086 _flash_sectors::
   3A4A                    1087 	.ds 4
   3A4E                    1088 _flash_ec::
   3A4E                    1089 	.ds 1
   3A4F                    1090 _mmc_last_cmd::
   3A4F                    1091 	.ds 1
   3A50                    1092 _mmc_response::
   3A50                    1093 	.ds 1
   3A51                    1094 _mmc_version::
   3A51                    1095 	.ds 1
   3A52                    1096 _mmc_buffer::
   3A52                    1097 	.ds 16
   3A62                    1098 _mmc_ep0_wait::
   3A62                    1099 	.ds 1
   3A63                    1100 _fpga_checksum::
   3A63                    1101 	.ds 1
   3A64                    1102 _fpga_bytes::
   3A64                    1103 	.ds 4
   3A68                    1104 _fpga_init_b::
   3A68                    1105 	.ds 1
   3A69                    1106 _fpga_flash_result::
   3A69                    1107 	.ds 1
                     006C  1108 _ZTEX_DESCRIPTOR	=	0x006c
                     006D  1109 _ZTEX_DESCRIPTOR_VERSION	=	0x006d
                     006E  1110 _ZTEXID	=	0x006e
                     0072  1111 _PRODUCT_ID	=	0x0072
                     0076  1112 _FW_VERSION	=	0x0076
                     0077  1113 _INTERFACE_VERSION	=	0x0077
                     0078  1114 _INTERFACE_CAPABILITIES	=	0x0078
                     007E  1115 _MODULE_RESERVED	=	0x007e
                     008A  1116 _SN_STRING	=	0x008a
                           1117 ;--------------------------------------------------------
                           1118 ; absolute external ram data
                           1119 ;--------------------------------------------------------
                           1120 	.area XABS    (ABS,XDATA)
                           1121 ;--------------------------------------------------------
                           1122 ; external initialized ram data
                           1123 ;--------------------------------------------------------
                           1124 	.area XISEG   (XDATA)
   3A6A                    1125 _ep0_payload_remaining::
   3A6A                    1126 	.ds 2
   3A6C                    1127 _ep0_payload_transfer::
   3A6C                    1128 	.ds 1
   3A6D                    1129 _generatePwds::
   3A6D                    1130 	.ds 1
   3A6E                    1131 _pwdLen::
   3A6E                    1132 	.ds 1
   3A6F                    1133 _ep0_prev_setup_request::
   3A6F                    1134 	.ds 1
   3A70                    1135 _ep0_vendor_cmd_setup::
   3A70                    1136 	.ds 1
   3A71                    1137 _ISOFRAME_COUNTER::
   3A71                    1138 	.ds 8
                           1139 	.area HOME    (CODE)
                           1140 	.area GSINIT0 (CODE)
                           1141 	.area GSINIT1 (CODE)
                           1142 	.area GSINIT2 (CODE)
                           1143 	.area GSINIT3 (CODE)
                           1144 	.area GSINIT4 (CODE)
                           1145 	.area GSINIT5 (CODE)
                           1146 	.area GSINIT  (CODE)
                           1147 	.area GSFINAL (CODE)
                           1148 	.area CSEG    (CODE)
                           1149 ;--------------------------------------------------------
                           1150 ; interrupt vector 
                           1151 ;--------------------------------------------------------
                           1152 	.area HOME    (CODE)
   0200                    1153 __interrupt_vect:
   0200 02 02 06      [24] 1154 	ljmp	__sdcc_gsinit_startup
                           1155 ;--------------------------------------------------------
                           1156 ; global & static initialisations
                           1157 ;--------------------------------------------------------
                           1158 	.area HOME    (CODE)
                           1159 	.area GSINIT  (CODE)
                           1160 	.area GSFINAL (CODE)
                           1161 	.area GSINIT  (CODE)
                           1162 	.globl __sdcc_gsinit_startup
                           1163 	.globl __sdcc_program_startup
                           1164 	.globl __start__stack
                           1165 	.globl __mcs51_genXINIT
                           1166 	.globl __mcs51_genXRAMCLEAR
                           1167 	.globl __mcs51_genRAMCLEAR
                           1168 	.area GSFINAL (CODE)
   025F 02 02 03      [24] 1169 	ljmp	__sdcc_program_startup
                           1170 ;--------------------------------------------------------
                           1171 ; Home
                           1172 ;--------------------------------------------------------
                           1173 	.area HOME    (CODE)
                           1174 	.area HOME    (CODE)
   0203                    1175 __sdcc_program_startup:
   0203 02 24 05      [24] 1176 	ljmp	_main
                           1177 ;	return from main will return to caller
                           1178 ;--------------------------------------------------------
                           1179 ; code
                           1180 ;--------------------------------------------------------
                           1181 	.area CSEG    (CODE)
                           1182 ;------------------------------------------------------------
                           1183 ;Allocation info for local variables in function 'abscode_intvec'
                           1184 ;------------------------------------------------------------
                           1185 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
                           1186 ;	-----------------------------------------
                           1187 ;	 function abscode_intvec
                           1188 ;	-----------------------------------------
   0262                    1189 _abscode_intvec:
                     0007  1190 	ar7 = 0x07
                     0006  1191 	ar6 = 0x06
                     0005  1192 	ar5 = 0x05
                     0004  1193 	ar4 = 0x04
                     0003  1194 	ar3 = 0x03
                     0002  1195 	ar2 = 0x02
                     0001  1196 	ar1 = 0x01
                     0000  1197 	ar0 = 0x00
                           1198 ;	d:\ztex\include\ezintavecs.h:317: ERROR: no line number 317 in file d:\ztex\include\ezintavecs.h
                           1199 	.area ABSCODE (ABS,CODE)
   0000                    1200 	.org 0x0000
   0000                    1201 	ENTRY:
   0000 02 02 00      [24] 1202 	ljmp #0x0200
                           1203 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0003                    1204 	.org 0x0003
                           1205 ;	# 34 "d:\\ztex\\include\\ezintavecs.h"
   0003 32            [24] 1206 	reti
                           1207 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   000B                    1208 	.org 0x000b
                           1209 ;	# 35 "d:\\ztex\\include\\ezintavecs.h"
   000B 32            [24] 1210 	reti
                           1211 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0013                    1212 	.org 0x0013
                           1213 ;	# 36 "d:\\ztex\\include\\ezintavecs.h"
   0013 32            [24] 1214 	reti
                           1215 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   001B                    1216 	.org 0x001b
                           1217 ;	# 37 "d:\\ztex\\include\\ezintavecs.h"
   001B 32            [24] 1218 	reti
                           1219 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0023                    1220 	.org 0x0023
                           1221 ;	# 38 "d:\\ztex\\include\\ezintavecs.h"
   0023 32            [24] 1222 	reti
                           1223 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   002B                    1224 	.org 0x002b
                           1225 ;	# 39 "d:\\ztex\\include\\ezintavecs.h"
   002B 32            [24] 1226 	reti
                           1227 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0033                    1228 	.org 0x0033
                           1229 ;	# 40 "d:\\ztex\\include\\ezintavecs.h"
   0033 32            [24] 1230 	reti
                           1231 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   003B                    1232 	.org 0x003b
                           1233 ;	# 41 "d:\\ztex\\include\\ezintavecs.h"
   003B 32            [24] 1234 	reti
                           1235 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0043                    1236 	.org 0x0043
                           1237 ;	# 42 "d:\\ztex\\include\\ezintavecs.h"
   0043 32            [24] 1238 	reti
                           1239 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   004B                    1240 	.org 0x004b
                           1241 ;	# 43 "d:\\ztex\\include\\ezintavecs.h"
   004B 32            [24] 1242 	reti
                           1243 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0053                    1244 	.org 0x0053
                           1245 ;	# 44 "d:\\ztex\\include\\ezintavecs.h"
   0053 32            [24] 1246 	reti
                           1247 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   005B                    1248 	.org 0x005b
                           1249 ;	# 45 "d:\\ztex\\include\\ezintavecs.h"
   005B 32            [24] 1250 	reti
                           1251 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0063                    1252 	.org 0x0063
                           1253 ;	# 46 "d:\\ztex\\include\\ezintavecs.h"
   0063 32            [24] 1254 	reti
                           1255 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0100                    1256 	.org 0x0100
                           1257 ;	# 47 "d:\\ztex\\include\\ezintavecs.h"
   0100 32            [24] 1258 	reti
                           1259 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0104                    1260 	.org 0x0104
                           1261 ;	# 48 "d:\\ztex\\include\\ezintavecs.h"
   0104 32            [24] 1262 	reti
                           1263 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0108                    1264 	.org 0x0108
                           1265 ;	# 49 "d:\\ztex\\include\\ezintavecs.h"
   0108 32            [24] 1266 	reti
                           1267 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   010C                    1268 	.org 0x010C
                           1269 ;	# 50 "d:\\ztex\\include\\ezintavecs.h"
   010C 32            [24] 1270 	reti
                           1271 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0110                    1272 	.org 0x0110
                           1273 ;	# 51 "d:\\ztex\\include\\ezintavecs.h"
   0110 32            [24] 1274 	reti
                           1275 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0114                    1276 	.org 0x0114
                           1277 ;	# 52 "d:\\ztex\\include\\ezintavecs.h"
   0114 32            [24] 1278 	reti
                           1279 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0118                    1280 	.org 0x0118
                           1281 ;	# 53 "d:\\ztex\\include\\ezintavecs.h"
   0118 32            [24] 1282 	reti
                           1283 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0120                    1284 	.org 0x0120
                           1285 ;	# 54 "d:\\ztex\\include\\ezintavecs.h"
   0120 32            [24] 1286 	reti
                           1287 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0124                    1288 	.org 0x0124
                           1289 ;	# 55 "d:\\ztex\\include\\ezintavecs.h"
   0124 32            [24] 1290 	reti
                           1291 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0128                    1292 	.org 0x0128
                           1293 ;	# 56 "d:\\ztex\\include\\ezintavecs.h"
   0128 32            [24] 1294 	reti
                           1295 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   012C                    1296 	.org 0x012C
                           1297 ;	# 57 "d:\\ztex\\include\\ezintavecs.h"
   012C 32            [24] 1298 	reti
                           1299 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0130                    1300 	.org 0x0130
                           1301 ;	# 58 "d:\\ztex\\include\\ezintavecs.h"
   0130 32            [24] 1302 	reti
                           1303 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0134                    1304 	.org 0x0134
                           1305 ;	# 59 "d:\\ztex\\include\\ezintavecs.h"
   0134 32            [24] 1306 	reti
                           1307 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0138                    1308 	.org 0x0138
                           1309 ;	# 60 "d:\\ztex\\include\\ezintavecs.h"
   0138 32            [24] 1310 	reti
                           1311 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   013C                    1312 	.org 0x013C
                           1313 ;	# 61 "d:\\ztex\\include\\ezintavecs.h"
   013C 32            [24] 1314 	reti
                           1315 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0140                    1316 	.org 0x0140
                           1317 ;	# 62 "d:\\ztex\\include\\ezintavecs.h"
   0140 32            [24] 1318 	reti
                           1319 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0148                    1320 	.org 0x0148
                           1321 ;	# 63 "d:\\ztex\\include\\ezintavecs.h"
   0148 32            [24] 1322 	reti
                           1323 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   014C                    1324 	.org 0x014C
                           1325 ;	# 64 "d:\\ztex\\include\\ezintavecs.h"
   014C 32            [24] 1326 	reti
                           1327 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0150                    1328 	.org 0x0150
                           1329 ;	# 65 "d:\\ztex\\include\\ezintavecs.h"
   0150 32            [24] 1330 	reti
                           1331 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0154                    1332 	.org 0x0154
                           1333 ;	# 66 "d:\\ztex\\include\\ezintavecs.h"
   0154 32            [24] 1334 	reti
                           1335 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0158                    1336 	.org 0x0158
                           1337 ;	# 67 "d:\\ztex\\include\\ezintavecs.h"
   0158 32            [24] 1338 	reti
                           1339 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   015C                    1340 	.org 0x015C
                           1341 ;	# 68 "d:\\ztex\\include\\ezintavecs.h"
   015C 32            [24] 1342 	reti
                           1343 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0160                    1344 	.org 0x0160
                           1345 ;	# 69 "d:\\ztex\\include\\ezintavecs.h"
   0160 32            [24] 1346 	reti
                           1347 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0170                    1348 	.org 0x0170
                           1349 ;	# 70 "d:\\ztex\\include\\ezintavecs.h"
   0170 32            [24] 1350 	reti
                           1351 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0174                    1352 	.org 0x0174
                           1353 ;	# 71 "d:\\ztex\\include\\ezintavecs.h"
   0174 32            [24] 1354 	reti
                           1355 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0178                    1356 	.org 0x0178
                           1357 ;	# 72 "d:\\ztex\\include\\ezintavecs.h"
   0178 32            [24] 1358 	reti
                           1359 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   017C                    1360 	.org 0x017C
                           1361 ;	# 73 "d:\\ztex\\include\\ezintavecs.h"
   017C 32            [24] 1362 	reti
                           1363 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0180                    1364 	.org 0x0180
                           1365 ;	# 74 "d:\\ztex\\include\\ezintavecs.h"
   0180 32            [24] 1366 	reti
                           1367 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0184                    1368 	.org 0x0184
                           1369 ;	# 75 "d:\\ztex\\include\\ezintavecs.h"
   0184 32            [24] 1370 	reti
                           1371 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0188                    1372 	.org 0x0188
                           1373 ;	# 76 "d:\\ztex\\include\\ezintavecs.h"
   0188 32            [24] 1374 	reti
                           1375 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   018C                    1376 	.org 0x018C
                           1377 ;	# 77 "d:\\ztex\\include\\ezintavecs.h"
   018C 32            [24] 1378 	reti
                           1379 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0190                    1380 	.org 0x0190
                           1381 ;	# 78 "d:\\ztex\\include\\ezintavecs.h"
   0190 32            [24] 1382 	reti
                           1383 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0194                    1384 	.org 0x0194
                           1385 ;	# 79 "d:\\ztex\\include\\ezintavecs.h"
   0194 32            [24] 1386 	reti
                           1387 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   0198                    1388 	.org 0x0198
                           1389 ;	# 80 "d:\\ztex\\include\\ezintavecs.h"
   0198 32            [24] 1390 	reti
                           1391 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   019C                    1392 	.org 0x019C
                           1393 ;	# 81 "d:\\ztex\\include\\ezintavecs.h"
   019C 32            [24] 1394 	reti
                           1395 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   01A0                    1396 	.org 0x01A0
                           1397 ;	# 82 "d:\\ztex\\include\\ezintavecs.h"
   01A0 32            [24] 1398 	reti
                           1399 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   01A8                    1400 	.org 0x01A8
                           1401 ;	# 83 "d:\\ztex\\include\\ezintavecs.h"
   01A8 32            [24] 1402 	reti
                           1403 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   01AC                    1404 	.org 0x01AC
                           1405 ;	# 84 "d:\\ztex\\include\\ezintavecs.h"
   01AC 32            [24] 1406 	reti
                           1407 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   01B0                    1408 	.org 0x01B0
                           1409 ;	# 85 "d:\\ztex\\include\\ezintavecs.h"
   01B0 32            [24] 1410 	reti
                           1411 ;	# 94 "d:\\ztex\\include\\ezintavecs.h"
   01B4                    1412 	.org 0x01B4
                           1413 ;	# 101 "d:\\ztex\\include\\ezintavecs.h"
   01B4 32            [24] 1414 	reti
   01B8                    1415 	.org 0x01b8
   01B8                    1416 	INTVEC_DUMMY:
   01B8 32            [24] 1417 	reti
                           1418 	.area CSEG (CODE)
   0262 22            [24] 1419 	ret
                           1420 ;------------------------------------------------------------
                           1421 ;Allocation info for local variables in function 'wait'
                           1422 ;------------------------------------------------------------
                           1423 ;ms                        Allocated to registers r6 r7 
                           1424 ;i                         Allocated to registers r2 r3 
                           1425 ;j                         Allocated to registers r4 r5 
                           1426 ;------------------------------------------------------------
                           1427 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
                           1428 ;	-----------------------------------------
                           1429 ;	 function wait
                           1430 ;	-----------------------------------------
   0263                    1431 _wait:
   0263 AE 82         [24] 1432 	mov	r6,dpl
   0265 AF 83         [24] 1433 	mov	r7,dph
                           1434 ;	d:\ztex\include\ztex-utils.h:80: for (j=0; j<ms; j++) 
   0267 7C 00         [12] 1435 	mov	r4,#0x00
   0269 7D 00         [12] 1436 	mov	r5,#0x00
   026B                    1437 00107$:
   026B C3            [12] 1438 	clr	c
   026C EC            [12] 1439 	mov	a,r4
   026D 9E            [12] 1440 	subb	a,r6
   026E ED            [12] 1441 	mov	a,r5
   026F 9F            [12] 1442 	subb	a,r7
   0270 50 14         [24] 1443 	jnc	00109$
                           1444 ;	d:\ztex\include\ztex-utils.h:81: for (i=0; i<1200; i++);
   0272 7A B0         [12] 1445 	mov	r2,#0xB0
   0274 7B 04         [12] 1446 	mov	r3,#0x04
   0276                    1447 00105$:
   0276 1A            [12] 1448 	dec	r2
   0277 BA FF 01      [24] 1449 	cjne	r2,#0xFF,00126$
   027A 1B            [12] 1450 	dec	r3
   027B                    1451 00126$:
   027B EA            [12] 1452 	mov	a,r2
   027C 4B            [12] 1453 	orl	a,r3
   027D 70 F7         [24] 1454 	jnz	00105$
                           1455 ;	d:\ztex\include\ztex-utils.h:80: for (j=0; j<ms; j++) 
   027F 0C            [12] 1456 	inc	r4
   0280 BC 00 E8      [24] 1457 	cjne	r4,#0x00,00107$
   0283 0D            [12] 1458 	inc	r5
   0284 80 E5         [24] 1459 	sjmp	00107$
   0286                    1460 00109$:
   0286 22            [24] 1461 	ret
                           1462 ;------------------------------------------------------------
                           1463 ;Allocation info for local variables in function 'uwait'
                           1464 ;------------------------------------------------------------
                           1465 ;us                        Allocated to registers r6 r7 
                           1466 ;i                         Allocated to registers r2 r3 
                           1467 ;j                         Allocated to registers r4 r5 
                           1468 ;------------------------------------------------------------
                           1469 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
                           1470 ;	-----------------------------------------
                           1471 ;	 function uwait
                           1472 ;	-----------------------------------------
   0287                    1473 _uwait:
   0287 AE 82         [24] 1474 	mov	r6,dpl
   0289 AF 83         [24] 1475 	mov	r7,dph
                           1476 ;	d:\ztex\include\ztex-utils.h:90: for (j=0; j<us; j++) 
   028B 7C 00         [12] 1477 	mov	r4,#0x00
   028D 7D 00         [12] 1478 	mov	r5,#0x00
   028F                    1479 00107$:
   028F C3            [12] 1480 	clr	c
   0290 EC            [12] 1481 	mov	a,r4
   0291 9E            [12] 1482 	subb	a,r6
   0292 ED            [12] 1483 	mov	a,r5
   0293 9F            [12] 1484 	subb	a,r7
   0294 50 14         [24] 1485 	jnc	00109$
                           1486 ;	d:\ztex\include\ztex-utils.h:91: for (i=0; i<10; i++);
   0296 7A 0A         [12] 1487 	mov	r2,#0x0A
   0298 7B 00         [12] 1488 	mov	r3,#0x00
   029A                    1489 00105$:
   029A 1A            [12] 1490 	dec	r2
   029B BA FF 01      [24] 1491 	cjne	r2,#0xFF,00126$
   029E 1B            [12] 1492 	dec	r3
   029F                    1493 00126$:
   029F EA            [12] 1494 	mov	a,r2
   02A0 4B            [12] 1495 	orl	a,r3
   02A1 70 F7         [24] 1496 	jnz	00105$
                           1497 ;	d:\ztex\include\ztex-utils.h:90: for (j=0; j<us; j++) 
   02A3 0C            [12] 1498 	inc	r4
   02A4 BC 00 E8      [24] 1499 	cjne	r4,#0x00,00107$
   02A7 0D            [12] 1500 	inc	r5
   02A8 80 E5         [24] 1501 	sjmp	00107$
   02AA                    1502 00109$:
   02AA 22            [24] 1503 	ret
                           1504 ;------------------------------------------------------------
                           1505 ;Allocation info for local variables in function 'MEM_COPY1_int'
                           1506 ;------------------------------------------------------------
                           1507 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
                           1508 ;	-----------------------------------------
                           1509 ;	 function MEM_COPY1_int
                           1510 ;	-----------------------------------------
   02AB                    1511 _MEM_COPY1_int:
                           1512 ;	d:\ztex\include\ztex-utils.h:110: __endasm;
   02AB                    1513 	020001$:
   02AB 75 AF 07      [24] 1514 	mov _AUTOPTRSETUP,#0x07
   02AE 90 E6 7B      [24] 1515 	mov dptr,#_XAUTODAT1
   02B1 E0            [24] 1516 	movx a,@dptr
   02B2 90 E6 7C      [24] 1517 	mov dptr,#_XAUTODAT2
   02B5 F0            [24] 1518 	movx @dptr,a
   02B6 DA F3         [24] 1519 	djnz r2, 020001$
   02B8 22            [24] 1520 	ret
   02B9 22            [24] 1521 	ret
                           1522 ;------------------------------------------------------------
                           1523 ;Allocation info for local variables in function 'receiveLen'
                           1524 ;------------------------------------------------------------
                           1525 ;	usb-test.c:58: void receiveLen()
                           1526 ;	-----------------------------------------
                           1527 ;	 function receiveLen
                           1528 ;	-----------------------------------------
   02BA                    1529 _receiveLen:
                           1530 ;	usb-test.c:60: IOB = SETUPDAT[2];
   02BA 90 E6 BA      [24] 1531 	mov	dptr,#(_SETUPDAT + 0x0002)
   02BD E0            [24] 1532 	movx	a,@dptr
   02BE F5 90         [12] 1533 	mov	_IOB,a
                           1534 ;	usb-test.c:61: LEN_VALID = 1;
   02C0 D2 86         [12] 1535 	setb	_IOA6
                           1536 ;	d:\ztex\include\ztex-utils.h:37: __endasm;
   02C2 00            [12] 1537 	nop
   02C3 00            [12] 1538 	nop
                           1539 ;	usb-test.c:64: LEN_VALID = 0;
   02C4 C2 86         [12] 1540 	clr	_IOA6
   02C6 22            [24] 1541 	ret
                           1542 ;------------------------------------------------------------
                           1543 ;Allocation info for local variables in function 'receiveData'
                           1544 ;------------------------------------------------------------
                           1545 ;size                      Allocated to registers r6 r7 
                           1546 ;b                         Allocated to registers r4 r5 
                           1547 ;------------------------------------------------------------
                           1548 ;	usb-test.c:67: void receiveData()
                           1549 ;	-----------------------------------------
                           1550 ;	 function receiveData
                           1551 ;	-----------------------------------------
   02C7                    1552 _receiveData:
                           1553 ;	usb-test.c:69: int size = EP0BCL, b;
   02C7 90 E6 8B      [24] 1554 	mov	dptr,#_EP0BCL
   02CA E0            [24] 1555 	movx	a,@dptr
   02CB FE            [12] 1556 	mov	r6,a
   02CC 7F 00         [12] 1557 	mov	r7,#0x00
                           1558 ;	usb-test.c:71: for ( b=0; b<size; b++ ) {
   02CE 7C 00         [12] 1559 	mov	r4,#0x00
   02D0 7D 00         [12] 1560 	mov	r5,#0x00
   02D2                    1561 00103$:
   02D2 C3            [12] 1562 	clr	c
   02D3 EC            [12] 1563 	mov	a,r4
   02D4 9E            [12] 1564 	subb	a,r6
   02D5 ED            [12] 1565 	mov	a,r5
   02D6 64 80         [12] 1566 	xrl	a,#0x80
   02D8 8F F0         [24] 1567 	mov	b,r7
   02DA 63 F0 80      [24] 1568 	xrl	b,#0x80
   02DD 95 F0         [12] 1569 	subb	a,b
   02DF 50 1D         [24] 1570 	jnc	00105$
                           1571 ;	usb-test.c:72: IOB = EP0BUF[b];
   02E1 EC            [12] 1572 	mov	a,r4
   02E2 24 40         [12] 1573 	add	a,#_EP0BUF
   02E4 F5 82         [12] 1574 	mov	dpl,a
   02E6 ED            [12] 1575 	mov	a,r5
   02E7 34 E7         [12] 1576 	addc	a,#(_EP0BUF >> 8)
   02E9 F5 83         [12] 1577 	mov	dph,a
   02EB E0            [24] 1578 	movx	a,@dptr
   02EC F5 90         [12] 1579 	mov	_IOB,a
                           1580 ;	usb-test.c:73: RD_CLK = !RD_CLK;
   02EE A2 82         [12] 1581 	mov	c,_IOA2
   02F0 B3            [12] 1582 	cpl	c
   02F1 92 00         [24] 1583 	mov  _receiveData_sloc0_1_0,c
   02F3 92 82         [24] 1584 	mov	_IOA2,c
                           1585 ;	d:\ztex\include\ztex-utils.h:37: __endasm;
   02F5 00            [12] 1586 	nop
   02F6 00            [12] 1587 	nop
                           1588 ;	usb-test.c:71: for ( b=0; b<size; b++ ) {
   02F7 0C            [12] 1589 	inc	r4
   02F8 BC 00 D7      [24] 1590 	cjne	r4,#0x00,00103$
   02FB 0D            [12] 1591 	inc	r5
   02FC 80 D4         [24] 1592 	sjmp	00103$
   02FE                    1593 00105$:
   02FE 22            [24] 1594 	ret
                           1595 ;------------------------------------------------------------
                           1596 ;Allocation info for local variables in function 'sendPwd'
                           1597 ;------------------------------------------------------------
                           1598 ;b                         Allocated to registers r6 
                           1599 ;len                       Allocated to registers r7 
                           1600 ;------------------------------------------------------------
                           1601 ;	usb-test.c:83: void sendPwd()
                           1602 ;	-----------------------------------------
                           1603 ;	 function sendPwd
                           1604 ;	-----------------------------------------
   02FF                    1605 _sendPwd:
                           1606 ;	usb-test.c:86: len = IOD;
   02FF AF B0         [24] 1607 	mov	r7,_IOD
                           1608 ;	usb-test.c:87: for ( b=0; b<len; b++ ) {
   0301 7E 00         [12] 1609 	mov	r6,#0x00
   0303                    1610 00103$:
   0303 C3            [12] 1611 	clr	c
   0304 EE            [12] 1612 	mov	a,r6
   0305 9F            [12] 1613 	subb	a,r7
   0306 50 19         [24] 1614 	jnc	00101$
                           1615 ;	usb-test.c:88: WR_CLK = !WR_CLK;
   0308 A2 83         [12] 1616 	mov	c,_IOA3
   030A B3            [12] 1617 	cpl	c
   030B 92 01         [24] 1618 	mov  _sendPwd_sloc0_1_0,c
   030D 92 83         [24] 1619 	mov	_IOA3,c
                           1620 ;	usb-test.c:89: EP0BUF[b] = IOD;
   030F EE            [12] 1621 	mov	a,r6
   0310 24 40         [12] 1622 	add	a,#_EP0BUF
   0312 F5 82         [12] 1623 	mov	dpl,a
   0314 E4            [12] 1624 	clr	a
   0315 34 E7         [12] 1625 	addc	a,#(_EP0BUF >> 8)
   0317 F5 83         [12] 1626 	mov	dph,a
   0319 E5 B0         [12] 1627 	mov	a,_IOD
   031B F0            [24] 1628 	movx	@dptr,a
                           1629 ;	d:\ztex\include\ztex-utils.h:37: __endasm;
   031C 00            [12] 1630 	nop
   031D 00            [12] 1631 	nop
                           1632 ;	usb-test.c:87: for ( b=0; b<len; b++ ) {
   031E 0E            [12] 1633 	inc	r6
   031F 80 E2         [24] 1634 	sjmp	00103$
   0321                    1635 00101$:
                           1636 ;	usb-test.c:93: EP0BCH = 0;
   0321 90 E6 8A      [24] 1637 	mov	dptr,#_EP0BCH
   0324 E4            [12] 1638 	clr	a
   0325 F0            [24] 1639 	movx	@dptr,a
                           1640 ;	usb-test.c:94: EP0BCL = len;
   0326 90 E6 8B      [24] 1641 	mov	dptr,#_EP0BCL
   0329 EF            [12] 1642 	mov	a,r7
   032A F0            [24] 1643 	movx	@dptr,a
                           1644 ;	usb-test.c:95: ep0_payload_remaining = 0;
   032B 90 3A 6A      [24] 1645 	mov	dptr,#_ep0_payload_remaining
   032E E4            [12] 1646 	clr	a
   032F F0            [24] 1647 	movx	@dptr,a
   0330 E4            [12] 1648 	clr	a
   0331 A3            [24] 1649 	inc	dptr
   0332 F0            [24] 1650 	movx	@dptr,a
   0333 22            [24] 1651 	ret
                           1652 ;------------------------------------------------------------
                           1653 ;Allocation info for local variables in function 'sendStatus'
                           1654 ;------------------------------------------------------------
                           1655 ;	usb-test.c:108: void sendStatus()
                           1656 ;	-----------------------------------------
                           1657 ;	 function sendStatus
                           1658 ;	-----------------------------------------
   0334                    1659 _sendStatus:
                           1660 ;	usb-test.c:110: EP0BUF[0] = IOC;
   0334 90 E7 40      [24] 1661 	mov	dptr,#_EP0BUF
   0337 E5 A0         [12] 1662 	mov	a,_IOC
   0339 F0            [24] 1663 	movx	@dptr,a
                           1664 ;	usb-test.c:111: EP0BCH = 0;
   033A 90 E6 8A      [24] 1665 	mov	dptr,#_EP0BCH
   033D E4            [12] 1666 	clr	a
   033E F0            [24] 1667 	movx	@dptr,a
                           1668 ;	usb-test.c:112: EP0BCL = 1;
   033F 90 E6 8B      [24] 1669 	mov	dptr,#_EP0BCL
   0342 74 01         [12] 1670 	mov	a,#0x01
   0344 F0            [24] 1671 	movx	@dptr,a
   0345 22            [24] 1672 	ret
                           1673 ;------------------------------------------------------------
                           1674 ;Allocation info for local variables in function 'receivePassword'
                           1675 ;------------------------------------------------------------
                           1676 ;	usb-test.c:124: void receivePassword()
                           1677 ;	-----------------------------------------
                           1678 ;	 function receivePassword
                           1679 ;	-----------------------------------------
   0346                    1680 _receivePassword:
                           1681 ;	usb-test.c:126: receiveData();
   0346 02 02 C7      [24] 1682 	ljmp	_receiveData
                           1683 ;------------------------------------------------------------
                           1684 ;Allocation info for local variables in function 'receiveEssid'
                           1685 ;------------------------------------------------------------
                           1686 ;	usb-test.c:140: void receiveEssid()
                           1687 ;	-----------------------------------------
                           1688 ;	 function receiveEssid
                           1689 ;	-----------------------------------------
   0349                    1690 _receiveEssid:
                           1691 ;	usb-test.c:142: ESSID_WR_EN = 1;
   0349 D2 84         [12] 1692 	setb	_IOA4
                           1693 ;	usb-test.c:143: receiveData();
   034B 12 02 C7      [24] 1694 	lcall	_receiveData
                           1695 ;	usb-test.c:144: ESSID_WR_EN = 0;
   034E C2 84         [12] 1696 	clr	_IOA4
   0350 22            [24] 1697 	ret
                           1698 ;------------------------------------------------------------
                           1699 ;Allocation info for local variables in function 'receiveTargetKey'
                           1700 ;------------------------------------------------------------
                           1701 ;	usb-test.c:157: void receiveTargetKey()
                           1702 ;	-----------------------------------------
                           1703 ;	 function receiveTargetKey
                           1704 ;	-----------------------------------------
   0351                    1705 _receiveTargetKey:
                           1706 ;	usb-test.c:159: TARGET_KEY_WR_EN = 1;
   0351 D2 87         [12] 1707 	setb	_IOA7
                           1708 ;	usb-test.c:160: receiveData();
   0353 12 02 C7      [24] 1709 	lcall	_receiveData
                           1710 ;	usb-test.c:161: TARGET_KEY_WR_EN = 0;
   0356 C2 87         [12] 1711 	clr	_IOA7
   0358 22            [24] 1712 	ret
                           1713 ;------------------------------------------------------------
                           1714 ;Allocation info for local variables in function 'i2c_waitWrite'
                           1715 ;------------------------------------------------------------
                           1716 ;i2csbuf                   Allocated to registers r7 
                           1717 ;toc                       Allocated to registers r7 
                           1718 ;------------------------------------------------------------
                           1719 ;	d:\ztex\include\ztex-eeprom.h:41: BYTE i2c_waitWrite()
                           1720 ;	-----------------------------------------
                           1721 ;	 function i2c_waitWrite
                           1722 ;	-----------------------------------------
   0359                    1723 _i2c_waitWrite:
                           1724 ;	d:\ztex\include\ztex-eeprom.h:44: for ( toc=0; toc<255 && !(I2CS & bmBIT0); toc++ );
   0359 7F 00         [12] 1725 	mov	r7,#0x00
   035B                    1726 00107$:
   035B BF FF 00      [24] 1727 	cjne	r7,#0xFF,00124$
   035E                    1728 00124$:
   035E 50 0B         [24] 1729 	jnc	00101$
   0360 90 E6 78      [24] 1730 	mov	dptr,#_I2CS
   0363 E0            [24] 1731 	movx	a,@dptr
   0364 FE            [12] 1732 	mov	r6,a
   0365 20 E0 03      [24] 1733 	jb	acc.0,00101$
   0368 0F            [12] 1734 	inc	r7
   0369 80 F0         [24] 1735 	sjmp	00107$
   036B                    1736 00101$:
                           1737 ;	d:\ztex\include\ztex-eeprom.h:45: i2csbuf = I2CS;
   036B 90 E6 78      [24] 1738 	mov	dptr,#_I2CS
   036E E0            [24] 1739 	movx	a,@dptr
                           1740 ;	d:\ztex\include\ztex-eeprom.h:46: if ( (i2csbuf & bmBIT2) || (!(i2csbuf & bmBIT1)) ) {
   036F FF            [12] 1741 	mov	r7,a
   0370 20 E2 04      [24] 1742 	jb	acc.2,00102$
   0373 EF            [12] 1743 	mov	a,r7
   0374 20 E1 0B      [24] 1744 	jb	acc.1,00103$
   0377                    1745 00102$:
                           1746 ;	d:\ztex\include\ztex-eeprom.h:47: I2CS |= bmBIT6;
   0377 90 E6 78      [24] 1747 	mov	dptr,#_I2CS
   037A E0            [24] 1748 	movx	a,@dptr
   037B 44 40         [12] 1749 	orl	a,#0x40
   037D F0            [24] 1750 	movx	@dptr,a
                           1751 ;	d:\ztex\include\ztex-eeprom.h:48: return 1;
   037E 75 82 01      [24] 1752 	mov	dpl,#0x01
   0381 22            [24] 1753 	ret
   0382                    1754 00103$:
                           1755 ;	d:\ztex\include\ztex-eeprom.h:50: return 0;
   0382 75 82 00      [24] 1756 	mov	dpl,#0x00
   0385 22            [24] 1757 	ret
                           1758 ;------------------------------------------------------------
                           1759 ;Allocation info for local variables in function 'i2c_waitRead'
                           1760 ;------------------------------------------------------------
                           1761 ;i2csbuf                   Allocated to registers r7 
                           1762 ;toc                       Allocated to registers r7 
                           1763 ;------------------------------------------------------------
                           1764 ;	d:\ztex\include\ztex-eeprom.h:57: BYTE i2c_waitRead(void)
                           1765 ;	-----------------------------------------
                           1766 ;	 function i2c_waitRead
                           1767 ;	-----------------------------------------
   0386                    1768 _i2c_waitRead:
                           1769 ;	d:\ztex\include\ztex-eeprom.h:60: for ( toc=0; toc<255 && !(I2CS & bmBIT0); toc++ );
   0386 7F 00         [12] 1770 	mov	r7,#0x00
   0388                    1771 00106$:
   0388 BF FF 00      [24] 1772 	cjne	r7,#0xFF,00123$
   038B                    1773 00123$:
   038B 50 0B         [24] 1774 	jnc	00101$
   038D 90 E6 78      [24] 1775 	mov	dptr,#_I2CS
   0390 E0            [24] 1776 	movx	a,@dptr
   0391 FE            [12] 1777 	mov	r6,a
   0392 20 E0 03      [24] 1778 	jb	acc.0,00101$
   0395 0F            [12] 1779 	inc	r7
   0396 80 F0         [24] 1780 	sjmp	00106$
   0398                    1781 00101$:
                           1782 ;	d:\ztex\include\ztex-eeprom.h:61: i2csbuf = I2CS;
   0398 90 E6 78      [24] 1783 	mov	dptr,#_I2CS
   039B E0            [24] 1784 	movx	a,@dptr
                           1785 ;	d:\ztex\include\ztex-eeprom.h:62: if (i2csbuf & bmBIT2) {
   039C FF            [12] 1786 	mov	r7,a
   039D 30 E2 0B      [24] 1787 	jnb	acc.2,00103$
                           1788 ;	d:\ztex\include\ztex-eeprom.h:63: I2CS |= bmBIT6;
   03A0 90 E6 78      [24] 1789 	mov	dptr,#_I2CS
   03A3 E0            [24] 1790 	movx	a,@dptr
   03A4 44 40         [12] 1791 	orl	a,#0x40
   03A6 F0            [24] 1792 	movx	@dptr,a
                           1793 ;	d:\ztex\include\ztex-eeprom.h:64: return 1;
   03A7 75 82 01      [24] 1794 	mov	dpl,#0x01
   03AA 22            [24] 1795 	ret
   03AB                    1796 00103$:
                           1797 ;	d:\ztex\include\ztex-eeprom.h:66: return 0;
   03AB 75 82 00      [24] 1798 	mov	dpl,#0x00
   03AE 22            [24] 1799 	ret
                           1800 ;------------------------------------------------------------
                           1801 ;Allocation info for local variables in function 'i2c_waitStart'
                           1802 ;------------------------------------------------------------
                           1803 ;toc                       Allocated to registers r7 
                           1804 ;------------------------------------------------------------
                           1805 ;	d:\ztex\include\ztex-eeprom.h:73: BYTE i2c_waitStart()
                           1806 ;	-----------------------------------------
                           1807 ;	 function i2c_waitStart
                           1808 ;	-----------------------------------------
   03AF                    1809 _i2c_waitStart:
                           1810 ;	d:\ztex\include\ztex-eeprom.h:76: for ( toc=0; toc<255; toc++ ) {
   03AF 7F 00         [12] 1811 	mov	r7,#0x00
   03B1                    1812 00104$:
                           1813 ;	d:\ztex\include\ztex-eeprom.h:77: if ( ! (I2CS & bmBIT2) )
   03B1 90 E6 78      [24] 1814 	mov	dptr,#_I2CS
   03B4 E0            [24] 1815 	movx	a,@dptr
   03B5 FE            [12] 1816 	mov	r6,a
   03B6 20 E2 04      [24] 1817 	jb	acc.2,00105$
                           1818 ;	d:\ztex\include\ztex-eeprom.h:78: return 0;
   03B9 75 82 00      [24] 1819 	mov	dpl,#0x00
   03BC 22            [24] 1820 	ret
   03BD                    1821 00105$:
                           1822 ;	d:\ztex\include\ztex-eeprom.h:76: for ( toc=0; toc<255; toc++ ) {
   03BD 0F            [12] 1823 	inc	r7
   03BE BF FF 00      [24] 1824 	cjne	r7,#0xFF,00118$
   03C1                    1825 00118$:
   03C1 40 EE         [24] 1826 	jc	00104$
                           1827 ;	d:\ztex\include\ztex-eeprom.h:80: return 1;
   03C3 75 82 01      [24] 1828 	mov	dpl,#0x01
   03C6 22            [24] 1829 	ret
                           1830 ;------------------------------------------------------------
                           1831 ;Allocation info for local variables in function 'i2c_waitStop'
                           1832 ;------------------------------------------------------------
                           1833 ;toc                       Allocated to registers r7 
                           1834 ;------------------------------------------------------------
                           1835 ;	d:\ztex\include\ztex-eeprom.h:87: BYTE i2c_waitStop()
                           1836 ;	-----------------------------------------
                           1837 ;	 function i2c_waitStop
                           1838 ;	-----------------------------------------
   03C7                    1839 _i2c_waitStop:
                           1840 ;	d:\ztex\include\ztex-eeprom.h:90: for ( toc=0; toc<255; toc++ ) {
   03C7 7F 00         [12] 1841 	mov	r7,#0x00
   03C9                    1842 00104$:
                           1843 ;	d:\ztex\include\ztex-eeprom.h:91: if ( ! (I2CS & bmBIT6) )
   03C9 90 E6 78      [24] 1844 	mov	dptr,#_I2CS
   03CC E0            [24] 1845 	movx	a,@dptr
   03CD FE            [12] 1846 	mov	r6,a
   03CE 20 E6 04      [24] 1847 	jb	acc.6,00105$
                           1848 ;	d:\ztex\include\ztex-eeprom.h:92: return 0;
   03D1 75 82 00      [24] 1849 	mov	dpl,#0x00
   03D4 22            [24] 1850 	ret
   03D5                    1851 00105$:
                           1852 ;	d:\ztex\include\ztex-eeprom.h:90: for ( toc=0; toc<255; toc++ ) {
   03D5 0F            [12] 1853 	inc	r7
   03D6 BF FF 00      [24] 1854 	cjne	r7,#0xFF,00118$
   03D9                    1855 00118$:
   03D9 40 EE         [24] 1856 	jc	00104$
                           1857 ;	d:\ztex\include\ztex-eeprom.h:94: return 1;
   03DB 75 82 01      [24] 1858 	mov	dpl,#0x01
   03DE 22            [24] 1859 	ret
                           1860 ;------------------------------------------------------------
                           1861 ;Allocation info for local variables in function 'eeprom_select'
                           1862 ;------------------------------------------------------------
                           1863 ;to                        Allocated with name '_eeprom_select_PARM_2'
                           1864 ;stop                      Allocated with name '_eeprom_select_PARM_3'
                           1865 ;addr                      Allocated to registers r7 
                           1866 ;toc                       Allocated to registers 
                           1867 ;------------------------------------------------------------
                           1868 ;	d:\ztex\include\ztex-eeprom.h:103: BYTE eeprom_select (BYTE addr, BYTE to, BYTE stop ) {
                           1869 ;	-----------------------------------------
                           1870 ;	 function eeprom_select
                           1871 ;	-----------------------------------------
   03DF                    1872 _eeprom_select:
   03DF AF 82         [24] 1873 	mov	r7,dpl
                           1874 ;	d:\ztex\include\ztex-eeprom.h:105: eeprom_select_start:
   03E1 C3            [12] 1875 	clr	c
   03E2 E4            [12] 1876 	clr	a
   03E3 95 08         [12] 1877 	subb	a,_eeprom_select_PARM_2
   03E5 E4            [12] 1878 	clr	a
   03E6 33            [12] 1879 	rlc	a
   03E7 FE            [12] 1880 	mov	r6,a
   03E8                    1881 00101$:
                           1882 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   03E8 90 E6 78      [24] 1883 	mov	dptr,#_I2CS
   03EB E0            [24] 1884 	movx	a,@dptr
   03EC 44 80         [12] 1885 	orl	a,#0x80
   03EE F0            [24] 1886 	movx	@dptr,a
                           1887 ;	d:\ztex\include\ztex-eeprom.h:107: i2c_waitStart();
   03EF C0 07         [24] 1888 	push	ar7
   03F1 C0 06         [24] 1889 	push	ar6
   03F3 12 03 AF      [24] 1890 	lcall	_i2c_waitStart
   03F6 D0 06         [24] 1891 	pop	ar6
   03F8 D0 07         [24] 1892 	pop	ar7
                           1893 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   03FA 90 E6 79      [24] 1894 	mov	dptr,#_I2DAT
   03FD EF            [12] 1895 	mov	a,r7
   03FE F0            [24] 1896 	movx	@dptr,a
                           1897 ;	d:\ztex\include\ztex-eeprom.h:109: if ( ! i2c_waitWrite() ) {
   03FF C0 07         [24] 1898 	push	ar7
   0401 C0 06         [24] 1899 	push	ar6
   0403 12 03 59      [24] 1900 	lcall	_i2c_waitWrite
   0406 E5 82         [12] 1901 	mov	a,dpl
   0408 D0 06         [24] 1902 	pop	ar6
   040A D0 07         [24] 1903 	pop	ar7
   040C 70 12         [24] 1904 	jnz	00107$
                           1905 ;	d:\ztex\include\ztex-eeprom.h:110: if ( stop ) {
   040E E5 09         [12] 1906 	mov	a,_eeprom_select_PARM_3
   0410 60 0A         [24] 1907 	jz	00103$
                           1908 ;	d:\ztex\include\ztex-eeprom.h:111: I2CS |= bmBIT6;
   0412 90 E6 78      [24] 1909 	mov	dptr,#_I2CS
   0415 E0            [24] 1910 	movx	a,@dptr
   0416 44 40         [12] 1911 	orl	a,#0x40
   0418 F0            [24] 1912 	movx	@dptr,a
                           1913 ;	d:\ztex\include\ztex-eeprom.h:112: i2c_waitStop();
   0419 12 03 C7      [24] 1914 	lcall	_i2c_waitStop
   041C                    1915 00103$:
                           1916 ;	d:\ztex\include\ztex-eeprom.h:114: return 0;
   041C 75 82 00      [24] 1917 	mov	dpl,#0x00
   041F 22            [24] 1918 	ret
   0420                    1919 00107$:
                           1920 ;	d:\ztex\include\ztex-eeprom.h:116: else if (toc<to) {
   0420 EE            [12] 1921 	mov	a,r6
   0421 60 10         [24] 1922 	jz	00108$
                           1923 ;	d:\ztex\include\ztex-eeprom.h:117: uwait(10);
   0423 90 00 0A      [24] 1924 	mov	dptr,#0x000A
   0426 C0 07         [24] 1925 	push	ar7
   0428 C0 06         [24] 1926 	push	ar6
   042A 12 02 87      [24] 1927 	lcall	_uwait
   042D D0 06         [24] 1928 	pop	ar6
   042F D0 07         [24] 1929 	pop	ar7
                           1930 ;	d:\ztex\include\ztex-eeprom.h:118: goto eeprom_select_start;
   0431 80 B5         [24] 1931 	sjmp	00101$
   0433                    1932 00108$:
                           1933 ;	d:\ztex\include\ztex-eeprom.h:120: if ( stop ) {
   0433 E5 09         [12] 1934 	mov	a,_eeprom_select_PARM_3
   0435 60 08         [24] 1935 	jz	00110$
                           1936 ;	d:\ztex\include\ztex-eeprom.h:121: I2CS |= bmBIT6;
   0437 90 E6 78      [24] 1937 	mov	dptr,#_I2CS
   043A E0            [24] 1938 	movx	a,@dptr
   043B FF            [12] 1939 	mov	r7,a
   043C 44 40         [12] 1940 	orl	a,#0x40
   043E F0            [24] 1941 	movx	@dptr,a
   043F                    1942 00110$:
                           1943 ;	d:\ztex\include\ztex-eeprom.h:123: return 1;
   043F 75 82 01      [24] 1944 	mov	dpl,#0x01
   0442 22            [24] 1945 	ret
                           1946 ;------------------------------------------------------------
                           1947 ;Allocation info for local variables in function 'eeprom_read'
                           1948 ;------------------------------------------------------------
                           1949 ;addr                      Allocated with name '_eeprom_read_PARM_2'
                           1950 ;length                    Allocated with name '_eeprom_read_PARM_3'
                           1951 ;buf                       Allocated to registers r6 r7 
                           1952 ;bytes                     Allocated to registers r5 
                           1953 ;i                         Allocated to registers 
                           1954 ;------------------------------------------------------------
                           1955 ;	d:\ztex\include\ztex-eeprom.h:131: BYTE eeprom_read ( __xdata BYTE *buf, WORD addr, BYTE length ) { 
                           1956 ;	-----------------------------------------
                           1957 ;	 function eeprom_read
                           1958 ;	-----------------------------------------
   0443                    1959 _eeprom_read:
   0443 AE 82         [24] 1960 	mov	r6,dpl
   0445 AF 83         [24] 1961 	mov	r7,dph
                           1962 ;	d:\ztex\include\ztex-eeprom.h:132: BYTE bytes = 0,i;
   0447 7D 00         [12] 1963 	mov	r5,#0x00
                           1964 ;	d:\ztex\include\ztex-eeprom.h:134: if ( length == 0 ) 
   0449 E5 0C         [12] 1965 	mov	a,_eeprom_read_PARM_3
                           1966 ;	d:\ztex\include\ztex-eeprom.h:135: return 0;
   044B 70 03         [24] 1967 	jnz	00102$
   044D F5 82         [12] 1968 	mov	dpl,a
   044F 22            [24] 1969 	ret
   0450                    1970 00102$:
                           1971 ;	d:\ztex\include\ztex-eeprom.h:137: if ( eeprom_select(EEPROM_ADDR, 100,0) ) 
   0450 75 08 64      [24] 1972 	mov	_eeprom_select_PARM_2,#0x64
   0453 75 09 00      [24] 1973 	mov	_eeprom_select_PARM_3,#0x00
   0456 75 82 A2      [24] 1974 	mov	dpl,#0xA2
   0459 C0 07         [24] 1975 	push	ar7
   045B C0 06         [24] 1976 	push	ar6
   045D C0 05         [24] 1977 	push	ar5
   045F 12 03 DF      [24] 1978 	lcall	_eeprom_select
   0462 E5 82         [12] 1979 	mov	a,dpl
   0464 D0 05         [24] 1980 	pop	ar5
   0466 D0 06         [24] 1981 	pop	ar6
   0468 D0 07         [24] 1982 	pop	ar7
   046A 60 03         [24] 1983 	jz	00154$
   046C 02 05 4A      [24] 1984 	ljmp	00118$
   046F                    1985 00154$:
                           1986 ;	d:\ztex\include\ztex-eeprom.h:31: ********************************************************************* */
   046F AC 0B         [24] 1987 	mov	r4,(_eeprom_read_PARM_2 + 1)
   0471 90 E6 79      [24] 1988 	mov	dptr,#_I2DAT
   0474 EC            [12] 1989 	mov	a,r4
   0475 F0            [24] 1990 	movx	@dptr,a
                           1991 ;	d:\ztex\include\ztex-eeprom.h:141: if ( i2c_waitWrite() ) goto eeprom_read_end;
   0476 C0 07         [24] 1992 	push	ar7
   0478 C0 06         [24] 1993 	push	ar6
   047A C0 05         [24] 1994 	push	ar5
   047C 12 03 59      [24] 1995 	lcall	_i2c_waitWrite
   047F E5 82         [12] 1996 	mov	a,dpl
   0481 D0 05         [24] 1997 	pop	ar5
   0483 D0 06         [24] 1998 	pop	ar6
   0485 D0 07         [24] 1999 	pop	ar7
   0487 60 03         [24] 2000 	jz	00155$
   0489 02 05 4A      [24] 2001 	ljmp	00118$
   048C                    2002 00155$:
                           2003 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   048C 90 E6 79      [24] 2004 	mov	dptr,#_I2DAT
   048F E5 0A         [12] 2005 	mov	a,_eeprom_read_PARM_2
   0491 F0            [24] 2006 	movx	@dptr,a
                           2007 ;	d:\ztex\include\ztex-eeprom.h:143: if ( i2c_waitWrite() ) goto eeprom_read_end;
   0492 C0 07         [24] 2008 	push	ar7
   0494 C0 06         [24] 2009 	push	ar6
   0496 C0 05         [24] 2010 	push	ar5
   0498 12 03 59      [24] 2011 	lcall	_i2c_waitWrite
   049B E5 82         [12] 2012 	mov	a,dpl
   049D D0 05         [24] 2013 	pop	ar5
   049F D0 06         [24] 2014 	pop	ar6
   04A1 D0 07         [24] 2015 	pop	ar7
   04A3 60 03         [24] 2016 	jz	00156$
   04A5 02 05 4A      [24] 2017 	ljmp	00118$
   04A8                    2018 00156$:
                           2019 ;	d:\ztex\include\ztex-eeprom.h:144: I2CS |= bmBIT6;
   04A8 90 E6 78      [24] 2020 	mov	dptr,#_I2CS
   04AB E0            [24] 2021 	movx	a,@dptr
   04AC 44 40         [12] 2022 	orl	a,#0x40
   04AE F0            [24] 2023 	movx	@dptr,a
                           2024 ;	d:\ztex\include\ztex-eeprom.h:145: i2c_waitStop();
   04AF C0 07         [24] 2025 	push	ar7
   04B1 C0 06         [24] 2026 	push	ar6
   04B3 C0 05         [24] 2027 	push	ar5
   04B5 12 03 C7      [24] 2028 	lcall	_i2c_waitStop
                           2029 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   04B8 90 E6 78      [24] 2030 	mov	dptr,#_I2CS
   04BB E0            [24] 2031 	movx	a,@dptr
   04BC 44 80         [12] 2032 	orl	a,#0x80
   04BE F0            [24] 2033 	movx	@dptr,a
                           2034 ;	d:\ztex\include\ztex-eeprom.h:148: i2c_waitStart();
   04BF 12 03 AF      [24] 2035 	lcall	_i2c_waitStart
                           2036 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   04C2 90 E6 79      [24] 2037 	mov	dptr,#_I2DAT
   04C5 74 A3         [12] 2038 	mov	a,#0xA3
   04C7 F0            [24] 2039 	movx	@dptr,a
                           2040 ;	d:\ztex\include\ztex-eeprom.h:150: if ( i2c_waitWrite() ) goto eeprom_read_end;
   04C8 12 03 59      [24] 2041 	lcall	_i2c_waitWrite
   04CB E5 82         [12] 2042 	mov	a,dpl
   04CD D0 05         [24] 2043 	pop	ar5
   04CF D0 06         [24] 2044 	pop	ar6
   04D1 D0 07         [24] 2045 	pop	ar7
   04D3 70 75         [24] 2046 	jnz	00118$
                           2047 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   04D5 90 E6 79      [24] 2048 	mov	dptr,#_I2DAT
   04D8 E0            [24] 2049 	movx	a,@dptr
   04D9 8E 82         [24] 2050 	mov	dpl,r6
   04DB 8F 83         [24] 2051 	mov	dph,r7
   04DD F0            [24] 2052 	movx	@dptr,a
                           2053 ;	d:\ztex\include\ztex-eeprom.h:153: if ( i2c_waitRead()) goto eeprom_read_end; 
   04DE C0 07         [24] 2054 	push	ar7
   04E0 C0 06         [24] 2055 	push	ar6
   04E2 C0 05         [24] 2056 	push	ar5
   04E4 12 03 86      [24] 2057 	lcall	_i2c_waitRead
   04E7 E5 82         [12] 2058 	mov	a,dpl
   04E9 D0 05         [24] 2059 	pop	ar5
   04EB D0 06         [24] 2060 	pop	ar6
   04ED D0 07         [24] 2061 	pop	ar7
   04EF 70 59         [24] 2062 	jnz	00118$
   04F1 FC            [12] 2063 	mov	r4,a
   04F2                    2064 00120$:
                           2065 ;	d:\ztex\include\ztex-eeprom.h:154: for (; bytes<length; bytes++ ) {
   04F2 C3            [12] 2066 	clr	c
   04F3 EC            [12] 2067 	mov	a,r4
   04F4 95 0C         [12] 2068 	subb	a,_eeprom_read_PARM_3
   04F6 50 2A         [24] 2069 	jnc	00115$
                           2070 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   04F8 90 E6 79      [24] 2071 	mov	dptr,#_I2DAT
   04FB E0            [24] 2072 	movx	a,@dptr
   04FC 8E 82         [24] 2073 	mov	dpl,r6
   04FE 8F 83         [24] 2074 	mov	dph,r7
   0500 F0            [24] 2075 	movx	@dptr,a
   0501 A3            [24] 2076 	inc	dptr
   0502 AE 82         [24] 2077 	mov	r6,dpl
   0504 AF 83         [24] 2078 	mov	r7,dph
                           2079 ;	d:\ztex\include\ztex-eeprom.h:156: buf++;
                           2080 ;	d:\ztex\include\ztex-eeprom.h:157: if ( i2c_waitRead()) goto eeprom_read_end; 
   0506 C0 07         [24] 2081 	push	ar7
   0508 C0 06         [24] 2082 	push	ar6
   050A C0 05         [24] 2083 	push	ar5
   050C C0 04         [24] 2084 	push	ar4
   050E 12 03 86      [24] 2085 	lcall	_i2c_waitRead
   0511 E5 82         [12] 2086 	mov	a,dpl
   0513 D0 04         [24] 2087 	pop	ar4
   0515 D0 05         [24] 2088 	pop	ar5
   0517 D0 06         [24] 2089 	pop	ar6
   0519 D0 07         [24] 2090 	pop	ar7
   051B 70 2D         [24] 2091 	jnz	00118$
                           2092 ;	d:\ztex\include\ztex-eeprom.h:154: for (; bytes<length; bytes++ ) {
   051D 0C            [12] 2093 	inc	r4
   051E 8C 05         [24] 2094 	mov	ar5,r4
   0520 80 D0         [24] 2095 	sjmp	00120$
   0522                    2096 00115$:
                           2097 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0522 90 E6 78      [24] 2098 	mov	dptr,#_I2CS
   0525 E0            [24] 2099 	movx	a,@dptr
   0526 44 20         [12] 2100 	orl	a,#0x20
   0528 F0            [24] 2101 	movx	@dptr,a
   0529 90 E6 79      [24] 2102 	mov	dptr,#_I2DAT
   052C E0            [24] 2103 	movx	a,@dptr
                           2104 ;	d:\ztex\include\ztex-eeprom.h:162: if ( i2c_waitRead()) goto eeprom_read_end; 
   052D C0 05         [24] 2105 	push	ar5
   052F 12 03 86      [24] 2106 	lcall	_i2c_waitRead
   0532 E5 82         [12] 2107 	mov	a,dpl
   0534 D0 05         [24] 2108 	pop	ar5
   0536 70 12         [24] 2109 	jnz	00118$
                           2110 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0538 90 E6 78      [24] 2111 	mov	dptr,#_I2CS
   053B E0            [24] 2112 	movx	a,@dptr
   053C 44 40         [12] 2113 	orl	a,#0x40
   053E F0            [24] 2114 	movx	@dptr,a
   053F 90 E6 79      [24] 2115 	mov	dptr,#_I2DAT
   0542 E0            [24] 2116 	movx	a,@dptr
                           2117 ;	d:\ztex\include\ztex-eeprom.h:166: i2c_waitStop();
   0543 C0 05         [24] 2118 	push	ar5
   0545 12 03 C7      [24] 2119 	lcall	_i2c_waitStop
   0548 D0 05         [24] 2120 	pop	ar5
                           2121 ;	d:\ztex\include\ztex-eeprom.h:168: eeprom_read_end:
   054A                    2122 00118$:
                           2123 ;	d:\ztex\include\ztex-eeprom.h:169: return bytes;
   054A 8D 82         [24] 2124 	mov	dpl,r5
   054C 22            [24] 2125 	ret
                           2126 ;------------------------------------------------------------
                           2127 ;Allocation info for local variables in function 'eeprom_write'
                           2128 ;------------------------------------------------------------
                           2129 ;addr                      Allocated with name '_eeprom_write_PARM_2'
                           2130 ;length                    Allocated with name '_eeprom_write_PARM_3'
                           2131 ;buf                       Allocated to registers r6 r7 
                           2132 ;bytes                     Allocated to registers r5 
                           2133 ;------------------------------------------------------------
                           2134 ;	d:\ztex\include\ztex-eeprom.h:178: BYTE eeprom_write ( __xdata BYTE *buf, WORD addr, BYTE length ) {
                           2135 ;	-----------------------------------------
                           2136 ;	 function eeprom_write
                           2137 ;	-----------------------------------------
   054D                    2138 _eeprom_write:
   054D AE 82         [24] 2139 	mov	r6,dpl
   054F AF 83         [24] 2140 	mov	r7,dph
                           2141 ;	d:\ztex\include\ztex-eeprom.h:179: BYTE bytes = 0;
   0551 7D 00         [12] 2142 	mov	r5,#0x00
                           2143 ;	d:\ztex\include\ztex-eeprom.h:181: if ( eeprom_select(EEPROM_ADDR, 100,0) ) 
   0553 75 08 64      [24] 2144 	mov	_eeprom_select_PARM_2,#0x64
   0556 75 09 00      [24] 2145 	mov	_eeprom_select_PARM_3,#0x00
   0559 75 82 A2      [24] 2146 	mov	dpl,#0xA2
   055C C0 07         [24] 2147 	push	ar7
   055E C0 06         [24] 2148 	push	ar6
   0560 C0 05         [24] 2149 	push	ar5
   0562 12 03 DF      [24] 2150 	lcall	_eeprom_select
   0565 E5 82         [12] 2151 	mov	a,dpl
   0567 D0 05         [24] 2152 	pop	ar5
   0569 D0 06         [24] 2153 	pop	ar6
   056B D0 07         [24] 2154 	pop	ar7
   056D 60 03         [24] 2155 	jz	00133$
   056F 02 06 08      [24] 2156 	ljmp	00110$
   0572                    2157 00133$:
                           2158 ;	d:\ztex\include\ztex-eeprom.h:31: ********************************************************************* */
   0572 AC 0E         [24] 2159 	mov	r4,(_eeprom_write_PARM_2 + 1)
   0574 90 E6 79      [24] 2160 	mov	dptr,#_I2DAT
   0577 EC            [12] 2161 	mov	a,r4
   0578 F0            [24] 2162 	movx	@dptr,a
                           2163 ;	d:\ztex\include\ztex-eeprom.h:185: if ( i2c_waitWrite() ) goto eeprom_write_end;
   0579 C0 07         [24] 2164 	push	ar7
   057B C0 06         [24] 2165 	push	ar6
   057D C0 05         [24] 2166 	push	ar5
   057F 12 03 59      [24] 2167 	lcall	_i2c_waitWrite
   0582 E5 82         [12] 2168 	mov	a,dpl
   0584 D0 05         [24] 2169 	pop	ar5
   0586 D0 06         [24] 2170 	pop	ar6
   0588 D0 07         [24] 2171 	pop	ar7
   058A 60 03         [24] 2172 	jz	00134$
   058C 02 06 08      [24] 2173 	ljmp	00110$
   058F                    2174 00134$:
                           2175 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   058F 90 E6 79      [24] 2176 	mov	dptr,#_I2DAT
   0592 E5 0D         [12] 2177 	mov	a,_eeprom_write_PARM_2
   0594 F0            [24] 2178 	movx	@dptr,a
                           2179 ;	d:\ztex\include\ztex-eeprom.h:187: if ( i2c_waitWrite() ) goto eeprom_write_end;
   0595 C0 07         [24] 2180 	push	ar7
   0597 C0 06         [24] 2181 	push	ar6
   0599 C0 05         [24] 2182 	push	ar5
   059B 12 03 59      [24] 2183 	lcall	_i2c_waitWrite
   059E E5 82         [12] 2184 	mov	a,dpl
   05A0 D0 05         [24] 2185 	pop	ar5
   05A2 D0 06         [24] 2186 	pop	ar6
   05A4 D0 07         [24] 2187 	pop	ar7
   05A6 70 60         [24] 2188 	jnz	00110$
   05A8 FC            [12] 2189 	mov	r4,a
   05A9                    2190 00112$:
                           2191 ;	d:\ztex\include\ztex-eeprom.h:189: for (; bytes<length; bytes++ ) {
   05A9 C3            [12] 2192 	clr	c
   05AA EC            [12] 2193 	mov	a,r4
   05AB 95 0F         [12] 2194 	subb	a,_eeprom_write_PARM_3
   05AD 50 4B         [24] 2195 	jnc	00109$
                           2196 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   05AF 8E 82         [24] 2197 	mov	dpl,r6
   05B1 8F 83         [24] 2198 	mov	dph,r7
   05B3 E0            [24] 2199 	movx	a,@dptr
   05B4 90 E6 79      [24] 2200 	mov	dptr,#_I2DAT
   05B7 F0            [24] 2201 	movx	@dptr,a
                           2202 ;	d:\ztex\include\ztex-eeprom.h:191: eeprom_write_checksum += *buf;
   05B8 8E 82         [24] 2203 	mov	dpl,r6
   05BA 8F 83         [24] 2204 	mov	dph,r7
   05BC E0            [24] 2205 	movx	a,@dptr
   05BD FB            [12] 2206 	mov	r3,a
   05BE A3            [24] 2207 	inc	dptr
   05BF AE 82         [24] 2208 	mov	r6,dpl
   05C1 AF 83         [24] 2209 	mov	r7,dph
   05C3 90 3A 46      [24] 2210 	mov	dptr,#_eeprom_write_checksum
   05C6 E0            [24] 2211 	movx	a,@dptr
   05C7 FA            [12] 2212 	mov	r2,a
   05C8 EB            [12] 2213 	mov	a,r3
   05C9 2A            [12] 2214 	add	a,r2
   05CA F0            [24] 2215 	movx	@dptr,a
                           2216 ;	d:\ztex\include\ztex-eeprom.h:192: buf++;
                           2217 ;	d:\ztex\include\ztex-eeprom.h:193: eeprom_write_bytes+=1;
   05CB 90 3A 44      [24] 2218 	mov	dptr,#_eeprom_write_bytes
   05CE E0            [24] 2219 	movx	a,@dptr
   05CF FA            [12] 2220 	mov	r2,a
   05D0 A3            [24] 2221 	inc	dptr
   05D1 E0            [24] 2222 	movx	a,@dptr
   05D2 FB            [12] 2223 	mov	r3,a
   05D3 90 3A 44      [24] 2224 	mov	dptr,#_eeprom_write_bytes
   05D6 74 01         [12] 2225 	mov	a,#0x01
   05D8 2A            [12] 2226 	add	a,r2
   05D9 F0            [24] 2227 	movx	@dptr,a
   05DA E4            [12] 2228 	clr	a
   05DB 3B            [12] 2229 	addc	a,r3
   05DC A3            [24] 2230 	inc	dptr
   05DD F0            [24] 2231 	movx	@dptr,a
                           2232 ;	d:\ztex\include\ztex-eeprom.h:194: if ( i2c_waitWrite() ) goto eeprom_write_end;
   05DE C0 07         [24] 2233 	push	ar7
   05E0 C0 06         [24] 2234 	push	ar6
   05E2 C0 05         [24] 2235 	push	ar5
   05E4 C0 04         [24] 2236 	push	ar4
   05E6 12 03 59      [24] 2237 	lcall	_i2c_waitWrite
   05E9 E5 82         [12] 2238 	mov	a,dpl
   05EB D0 04         [24] 2239 	pop	ar4
   05ED D0 05         [24] 2240 	pop	ar5
   05EF D0 06         [24] 2241 	pop	ar6
   05F1 D0 07         [24] 2242 	pop	ar7
   05F3 70 13         [24] 2243 	jnz	00110$
                           2244 ;	d:\ztex\include\ztex-eeprom.h:189: for (; bytes<length; bytes++ ) {
   05F5 0C            [12] 2245 	inc	r4
   05F6 8C 05         [24] 2246 	mov	ar5,r4
   05F8 80 AF         [24] 2247 	sjmp	00112$
   05FA                    2248 00109$:
                           2249 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   05FA 90 E6 78      [24] 2250 	mov	dptr,#_I2CS
   05FD E0            [24] 2251 	movx	a,@dptr
   05FE 44 40         [12] 2252 	orl	a,#0x40
   0600 F0            [24] 2253 	movx	@dptr,a
                           2254 ;	d:\ztex\include\ztex-eeprom.h:197: i2c_waitStop();
   0601 C0 05         [24] 2255 	push	ar5
   0603 12 03 C7      [24] 2256 	lcall	_i2c_waitStop
   0606 D0 05         [24] 2257 	pop	ar5
                           2258 ;	d:\ztex\include\ztex-eeprom.h:199: eeprom_write_end:
   0608                    2259 00110$:
                           2260 ;	d:\ztex\include\ztex-eeprom.h:200: return bytes;
   0608 8D 82         [24] 2261 	mov	dpl,r5
   060A 22            [24] 2262 	ret
                           2263 ;------------------------------------------------------------
                           2264 ;Allocation info for local variables in function 'eeprom_read_ep0'
                           2265 ;------------------------------------------------------------
                           2266 ;i                         Allocated to registers r6 
                           2267 ;b                         Allocated to registers r7 
                           2268 ;------------------------------------------------------------
                           2269 ;	d:\ztex\include\ztex-eeprom.h:206: BYTE eeprom_read_ep0 () { 
                           2270 ;	-----------------------------------------
                           2271 ;	 function eeprom_read_ep0
                           2272 ;	-----------------------------------------
   060B                    2273 _eeprom_read_ep0:
                           2274 ;	d:\ztex\include\ztex-eeprom.h:208: b = ep0_payload_transfer;
   060B 90 3A 6C      [24] 2275 	mov	dptr,#_ep0_payload_transfer
   060E E0            [24] 2276 	movx	a,@dptr
   060F FF            [12] 2277 	mov	r7,a
                           2278 ;	d:\ztex\include\ztex-eeprom.h:209: i = eeprom_read(EP0BUF, eeprom_addr, b);
   0610 90 3A 42      [24] 2279 	mov	dptr,#_eeprom_addr
   0613 E0            [24] 2280 	movx	a,@dptr
   0614 F5 0A         [12] 2281 	mov	_eeprom_read_PARM_2,a
   0616 A3            [24] 2282 	inc	dptr
   0617 E0            [24] 2283 	movx	a,@dptr
   0618 F5 0B         [12] 2284 	mov	(_eeprom_read_PARM_2 + 1),a
   061A 8F 0C         [24] 2285 	mov	_eeprom_read_PARM_3,r7
   061C 90 E7 40      [24] 2286 	mov	dptr,#_EP0BUF
   061F C0 07         [24] 2287 	push	ar7
   0621 12 04 43      [24] 2288 	lcall	_eeprom_read
   0624 AE 82         [24] 2289 	mov	r6,dpl
   0626 D0 07         [24] 2290 	pop	ar7
                           2291 ;	d:\ztex\include\ztex-eeprom.h:210: eeprom_addr += b;
   0628 7D 00         [12] 2292 	mov	r5,#0x00
   062A 90 3A 42      [24] 2293 	mov	dptr,#_eeprom_addr
   062D E0            [24] 2294 	movx	a,@dptr
   062E FB            [12] 2295 	mov	r3,a
   062F A3            [24] 2296 	inc	dptr
   0630 E0            [24] 2297 	movx	a,@dptr
   0631 FC            [12] 2298 	mov	r4,a
   0632 90 3A 42      [24] 2299 	mov	dptr,#_eeprom_addr
   0635 EF            [12] 2300 	mov	a,r7
   0636 2B            [12] 2301 	add	a,r3
   0637 F0            [24] 2302 	movx	@dptr,a
   0638 ED            [12] 2303 	mov	a,r5
   0639 3C            [12] 2304 	addc	a,r4
   063A A3            [24] 2305 	inc	dptr
   063B F0            [24] 2306 	movx	@dptr,a
                           2307 ;	d:\ztex\include\ztex-eeprom.h:211: return i;
   063C 8E 82         [24] 2308 	mov	dpl,r6
   063E 22            [24] 2309 	ret
                           2310 ;------------------------------------------------------------
                           2311 ;Allocation info for local variables in function 'eeprom_write_ep0'
                           2312 ;------------------------------------------------------------
                           2313 ;length                    Allocated to registers r7 
                           2314 ;------------------------------------------------------------
                           2315 ;	d:\ztex\include\ztex-eeprom.h:227: void eeprom_write_ep0 ( BYTE length ) { 	
                           2316 ;	-----------------------------------------
                           2317 ;	 function eeprom_write_ep0
                           2318 ;	-----------------------------------------
   063F                    2319 _eeprom_write_ep0:
   063F AF 82         [24] 2320 	mov	r7,dpl
                           2321 ;	d:\ztex\include\ztex-eeprom.h:228: eeprom_write(EP0BUF, eeprom_addr, length);
   0641 90 3A 42      [24] 2322 	mov	dptr,#_eeprom_addr
   0644 E0            [24] 2323 	movx	a,@dptr
   0645 F5 0D         [12] 2324 	mov	_eeprom_write_PARM_2,a
   0647 A3            [24] 2325 	inc	dptr
   0648 E0            [24] 2326 	movx	a,@dptr
   0649 F5 0E         [12] 2327 	mov	(_eeprom_write_PARM_2 + 1),a
   064B 8F 0F         [24] 2328 	mov	_eeprom_write_PARM_3,r7
   064D 90 E7 40      [24] 2329 	mov	dptr,#_EP0BUF
   0650 C0 07         [24] 2330 	push	ar7
   0652 12 05 4D      [24] 2331 	lcall	_eeprom_write
   0655 D0 07         [24] 2332 	pop	ar7
                           2333 ;	d:\ztex\include\ztex-eeprom.h:229: eeprom_addr += length;
   0657 7E 00         [12] 2334 	mov	r6,#0x00
   0659 90 3A 42      [24] 2335 	mov	dptr,#_eeprom_addr
   065C E0            [24] 2336 	movx	a,@dptr
   065D FC            [12] 2337 	mov	r4,a
   065E A3            [24] 2338 	inc	dptr
   065F E0            [24] 2339 	movx	a,@dptr
   0660 FD            [12] 2340 	mov	r5,a
   0661 90 3A 42      [24] 2341 	mov	dptr,#_eeprom_addr
   0664 EF            [12] 2342 	mov	a,r7
   0665 2C            [12] 2343 	add	a,r4
   0666 F0            [24] 2344 	movx	@dptr,a
   0667 EE            [12] 2345 	mov	a,r6
   0668 3D            [12] 2346 	addc	a,r5
   0669 A3            [24] 2347 	inc	dptr
   066A F0            [24] 2348 	movx	@dptr,a
   066B 22            [24] 2349 	ret
                           2350 ;------------------------------------------------------------
                           2351 ;Allocation info for local variables in function 'mmc_clocks'
                           2352 ;------------------------------------------------------------
                           2353 ;c                         Allocated to registers 
                           2354 ;------------------------------------------------------------
                           2355 ;	d:\ztex\include\ztex-flash1.h:110: void mmc_clocks (BYTE c) {
                           2356 ;	-----------------------------------------
                           2357 ;	 function mmc_clocks
                           2358 ;	-----------------------------------------
   066C                    2359 _mmc_clocks:
                           2360 ;	d:\ztex\include\ztex-flash1.h:121: mov	_MMC_IO,r4
   066C AA 82         [24] 2361 	mov r2,dpl
                           2362 ;	# 125 "d:\\ztex\\include\\ztex-flash1.h"
   066E                    2363 	010014$:
   066E D2 A6         [12] 2364 	setb _IOC6
   0670 00            [12] 2365 	nop
   0671 C2 A6         [12] 2366 	clr _IOC6
                           2367 ;	# 130 "d:\\ztex\\include\\ztex-flash1.h"
   0673 DA F9         [24] 2368 	djnz r2,010014$
   0675 22            [24] 2369 	ret
                           2370 ;------------------------------------------------------------
                           2371 ;Allocation info for local variables in function 'flash_read_byte'
                           2372 ;------------------------------------------------------------
                           2373 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
                           2374 ;	-----------------------------------------
                           2375 ;	 function flash_read_byte
                           2376 ;	-----------------------------------------
   0676                    2377 _flash_read_byte:
                           2378 ;	d:\ztex\include\ztex-flash1.h:193: mov	a,_MMC_IO	// 2
                           2379 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
                           2380 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   0676 A2 B0         [12] 2381 	mov c,_IOD0
                           2382 ;	# 223 "d:\\ztex\\include\\ztex-flash1.h"
   0678 D2 A6         [12] 2383 	setb _IOC6
   067A 33            [12] 2384 	rlc a
   067B C2 A6         [12] 2385 	clr _IOC6
                           2386 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   067D A2 B0         [12] 2387 	mov c,_IOD0
                           2388 ;	# 228 "d:\\ztex\\include\\ztex-flash1.h"
   067F D2 A6         [12] 2389 	setb _IOC6
   0681 33            [12] 2390 	rlc a
   0682 C2 A6         [12] 2391 	clr _IOC6
                           2392 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   0684 A2 B0         [12] 2393 	mov c,_IOD0
                           2394 ;	# 233 "d:\\ztex\\include\\ztex-flash1.h"
   0686 D2 A6         [12] 2395 	setb _IOC6
   0688 33            [12] 2396 	rlc a
   0689 C2 A6         [12] 2397 	clr _IOC6
                           2398 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   068B A2 B0         [12] 2399 	mov c,_IOD0
                           2400 ;	# 238 "d:\\ztex\\include\\ztex-flash1.h"
   068D D2 A6         [12] 2401 	setb _IOC6
   068F 33            [12] 2402 	rlc a
   0690 C2 A6         [12] 2403 	clr _IOC6
                           2404 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   0692 A2 B0         [12] 2405 	mov c,_IOD0
                           2406 ;	# 243 "d:\\ztex\\include\\ztex-flash1.h"
   0694 D2 A6         [12] 2407 	setb _IOC6
   0696 33            [12] 2408 	rlc a
   0697 C2 A6         [12] 2409 	clr _IOC6
                           2410 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   0699 A2 B0         [12] 2411 	mov c,_IOD0
                           2412 ;	# 248 "d:\\ztex\\include\\ztex-flash1.h"
   069B D2 A6         [12] 2413 	setb _IOC6
   069D 33            [12] 2414 	rlc a
   069E C2 A6         [12] 2415 	clr _IOC6
                           2416 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   06A0 A2 B0         [12] 2417 	mov c,_IOD0
                           2418 ;	# 253 "d:\\ztex\\include\\ztex-flash1.h"
   06A2 D2 A6         [12] 2419 	setb _IOC6
   06A4 33            [12] 2420 	rlc a
   06A5 C2 A6         [12] 2421 	clr _IOC6
                           2422 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   06A7 A2 B0         [12] 2423 	mov c,_IOD0
                           2424 ;	# 258 "d:\\ztex\\include\\ztex-flash1.h"
   06A9 D2 A6         [12] 2425 	setb _IOC6
   06AB 33            [12] 2426 	rlc a
   06AC C2 A6         [12] 2427 	clr _IOC6
                           2428 ;	# 262 "d:\\ztex\\include\\ztex-flash1.h"
   06AE F5 82         [12] 2429 	mov dpl,a
   06B0 22            [24] 2430 	ret
                           2431 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   06B1 75 82 00      [24] 2432 	mov	dpl,#0x00
   06B4 22            [24] 2433 	ret
                           2434 ;------------------------------------------------------------
                           2435 ;Allocation info for local variables in function 'flash_read'
                           2436 ;------------------------------------------------------------
                           2437 ;len                       Allocated with name '_flash_read_PARM_2'
                           2438 ;buf                       Allocated to registers 
                           2439 ;------------------------------------------------------------
                           2440 ;	d:\ztex\include\ztex-flash1.h:272: void flash_read(__xdata BYTE *buf, BYTE len) {
                           2441 ;	-----------------------------------------
                           2442 ;	 function flash_read
                           2443 ;	-----------------------------------------
   06B5                    2444 _flash_read:
                           2445 ;	d:\ztex\include\ztex-conf.h:89: Add a vedor request for endpoint 0, 
                           2446 ;	# 276 "d:\\ztex\\include\\ztex-flash1.h"
   06B5 AA 11         [24] 2447 	mov r2,_flash_read_PARM_2
                           2448 ;	# 357 "d:\\ztex\\include\\ztex-flash1.h"
   06B7                    2449 	010012$:
                           2450 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
                           2451 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   06B7 A2 B0         [12] 2452 	mov c,_IOD0
                           2453 ;	# 360 "d:\\ztex\\include\\ztex-flash1.h"
   06B9 D2 A6         [12] 2454 	setb _IOC6
   06BB 33            [12] 2455 	rlc a
   06BC C2 A6         [12] 2456 	clr _IOC6
                           2457 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   06BE A2 B0         [12] 2458 	mov c,_IOD0
                           2459 ;	# 365 "d:\\ztex\\include\\ztex-flash1.h"
   06C0 D2 A6         [12] 2460 	setb _IOC6
   06C2 33            [12] 2461 	rlc a
   06C3 C2 A6         [12] 2462 	clr _IOC6
                           2463 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   06C5 A2 B0         [12] 2464 	mov c,_IOD0
                           2465 ;	# 370 "d:\\ztex\\include\\ztex-flash1.h"
   06C7 D2 A6         [12] 2466 	setb _IOC6
   06C9 33            [12] 2467 	rlc a
   06CA C2 A6         [12] 2468 	clr _IOC6
                           2469 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   06CC A2 B0         [12] 2470 	mov c,_IOD0
                           2471 ;	# 375 "d:\\ztex\\include\\ztex-flash1.h"
   06CE D2 A6         [12] 2472 	setb _IOC6
   06D0 33            [12] 2473 	rlc a
   06D1 C2 A6         [12] 2474 	clr _IOC6
                           2475 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   06D3 A2 B0         [12] 2476 	mov c,_IOD0
                           2477 ;	# 380 "d:\\ztex\\include\\ztex-flash1.h"
   06D5 D2 A6         [12] 2478 	setb _IOC6
   06D7 33            [12] 2479 	rlc a
   06D8 C2 A6         [12] 2480 	clr _IOC6
                           2481 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   06DA A2 B0         [12] 2482 	mov c,_IOD0
                           2483 ;	# 385 "d:\\ztex\\include\\ztex-flash1.h"
   06DC D2 A6         [12] 2484 	setb _IOC6
   06DE 33            [12] 2485 	rlc a
   06DF C2 A6         [12] 2486 	clr _IOC6
                           2487 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   06E1 A2 B0         [12] 2488 	mov c,_IOD0
                           2489 ;	# 390 "d:\\ztex\\include\\ztex-flash1.h"
   06E3 D2 A6         [12] 2490 	setb _IOC6
   06E5 33            [12] 2491 	rlc a
   06E6 C2 A6         [12] 2492 	clr _IOC6
                           2493 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   06E8 A2 B0         [12] 2494 	mov c,_IOD0
                           2495 ;	# 395 "d:\\ztex\\include\\ztex-flash1.h"
   06EA D2 A6         [12] 2496 	setb _IOC6
   06EC 33            [12] 2497 	rlc a
   06ED C2 A6         [12] 2498 	clr _IOC6
                           2499 ;	# 399 "d:\\ztex\\include\\ztex-flash1.h"
   06EF F0            [24] 2500 	movx @dptr,a
   06F0 A3            [24] 2501 	inc dptr
   06F1 DA C4         [24] 2502 	djnz r2,010012$
   06F3 22            [24] 2503 	ret
                           2504 ;------------------------------------------------------------
                           2505 ;Allocation info for local variables in function 'flash_write_byte'
                           2506 ;------------------------------------------------------------
                           2507 ;b                         Allocated to registers 
                           2508 ;------------------------------------------------------------
                           2509 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
                           2510 ;	-----------------------------------------
                           2511 ;	 function flash_write_byte
                           2512 ;	-----------------------------------------
   06F4                    2513 _flash_write_byte:
                           2514 ;	d:\ztex\include\ztex-flash1.h:473: orl 	_MMC_IO, #(MMC_bmCLK)
                           2515 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
                           2516 ;	# 478 "d:\\ztex\\include\\ztex-flash1.h"
   06F4 E5 82         [12] 2517 	mov a,dpl
                           2518 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   06F6 33            [12] 2519 	rlc a
                           2520 ;	# 480 "d:\\ztex\\include\\ztex-flash1.h"
   06F7 92 A7         [24] 2521 	mov _IOC7,c
   06F9 D2 A6         [12] 2522 	setb _IOC6
                           2523 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   06FB 33            [12] 2524 	rlc a
                           2525 ;	# 484 "d:\\ztex\\include\\ztex-flash1.h"
   06FC C2 A6         [12] 2526 	clr _IOC6
   06FE 92 A7         [24] 2527 	mov _IOC7,c
   0700 D2 A6         [12] 2528 	setb _IOC6
                           2529 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   0702 33            [12] 2530 	rlc a
                           2531 ;	# 489 "d:\\ztex\\include\\ztex-flash1.h"
   0703 C2 A6         [12] 2532 	clr _IOC6
   0705 92 A7         [24] 2533 	mov _IOC7,c
   0707 D2 A6         [12] 2534 	setb _IOC6
                           2535 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   0709 33            [12] 2536 	rlc a
                           2537 ;	# 494 "d:\\ztex\\include\\ztex-flash1.h"
   070A C2 A6         [12] 2538 	clr _IOC6
   070C 92 A7         [24] 2539 	mov _IOC7,c
   070E D2 A6         [12] 2540 	setb _IOC6
                           2541 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   0710 33            [12] 2542 	rlc a
                           2543 ;	# 499 "d:\\ztex\\include\\ztex-flash1.h"
   0711 C2 A6         [12] 2544 	clr _IOC6
   0713 92 A7         [24] 2545 	mov _IOC7,c
   0715 D2 A6         [12] 2546 	setb _IOC6
                           2547 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   0717 33            [12] 2548 	rlc a
                           2549 ;	# 504 "d:\\ztex\\include\\ztex-flash1.h"
   0718 C2 A6         [12] 2550 	clr _IOC6
   071A 92 A7         [24] 2551 	mov _IOC7,c
   071C D2 A6         [12] 2552 	setb _IOC6
                           2553 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   071E 33            [12] 2554 	rlc a
                           2555 ;	# 509 "d:\\ztex\\include\\ztex-flash1.h"
   071F C2 A6         [12] 2556 	clr _IOC6
   0721 92 A7         [24] 2557 	mov _IOC7,c
   0723 D2 A6         [12] 2558 	setb _IOC6
                           2559 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   0725 33            [12] 2560 	rlc a
                           2561 ;	# 514 "d:\\ztex\\include\\ztex-flash1.h"
   0726 C2 A6         [12] 2562 	clr _IOC6
   0728 92 A7         [24] 2563 	mov _IOC7,c
   072A D2 A6         [12] 2564 	setb _IOC6
   072C 00            [12] 2565 	nop
   072D C2 A6         [12] 2566 	clr _IOC6
                           2567 ;	# 521 "d:\\ztex\\include\\ztex-flash1.h"
   072F 22            [24] 2568 	ret
                           2569 ;------------------------------------------------------------
                           2570 ;Allocation info for local variables in function 'flash_write'
                           2571 ;------------------------------------------------------------
                           2572 ;len                       Allocated with name '_flash_write_PARM_2'
                           2573 ;buf                       Allocated to registers 
                           2574 ;------------------------------------------------------------
                           2575 ;	d:\ztex\include\ztex-flash1.h:528: void flash_write(__xdata BYTE *buf, BYTE len) {
                           2576 ;	-----------------------------------------
                           2577 ;	 function flash_write
                           2578 ;	-----------------------------------------
   0730                    2579 _flash_write:
                           2580 ;	d:\ztex\include\ztex-conf.h:99: #define[ADD_EP0_VENDOR_REQUEST((][,,$1,,$2));;][#define[EP0_VENDOR_REQUESTS_SU;][EP0_VENDOR_REQUESTS_SU;
                           2581 ;	# 532 "d:\\ztex\\include\\ztex-flash1.h"
   0730 AA 11         [24] 2582 	mov r2,_flash_read_PARM_2
                           2583 ;	# 602 "d:\\ztex\\include\\ztex-flash1.h"
   0732                    2584 	010013$:
                           2585 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
                           2586 ;	# 604 "d:\\ztex\\include\\ztex-flash1.h"
   0732 E0            [24] 2587 	movx a,@dptr
                           2588 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   0733 33            [12] 2589 	rlc a
                           2590 ;	# 606 "d:\\ztex\\include\\ztex-flash1.h"
   0734 92 A7         [24] 2591 	mov _IOC7,c
   0736 D2 A6         [12] 2592 	setb _IOC6
                           2593 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   0738 33            [12] 2594 	rlc a
                           2595 ;	# 610 "d:\\ztex\\include\\ztex-flash1.h"
   0739 C2 A6         [12] 2596 	clr _IOC6
   073B 92 A7         [24] 2597 	mov _IOC7,c
   073D D2 A6         [12] 2598 	setb _IOC6
                           2599 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   073F 33            [12] 2600 	rlc a
                           2601 ;	# 615 "d:\\ztex\\include\\ztex-flash1.h"
   0740 C2 A6         [12] 2602 	clr _IOC6
   0742 92 A7         [24] 2603 	mov _IOC7,c
   0744 D2 A6         [12] 2604 	setb _IOC6
                           2605 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   0746 33            [12] 2606 	rlc a
                           2607 ;	# 620 "d:\\ztex\\include\\ztex-flash1.h"
   0747 C2 A6         [12] 2608 	clr _IOC6
   0749 92 A7         [24] 2609 	mov _IOC7,c
   074B D2 A6         [12] 2610 	setb _IOC6
                           2611 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   074D 33            [12] 2612 	rlc a
                           2613 ;	# 625 "d:\\ztex\\include\\ztex-flash1.h"
   074E C2 A6         [12] 2614 	clr _IOC6
   0750 92 A7         [24] 2615 	mov _IOC7,c
   0752 D2 A6         [12] 2616 	setb _IOC6
                           2617 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   0754 33            [12] 2618 	rlc a
                           2619 ;	# 630 "d:\\ztex\\include\\ztex-flash1.h"
   0755 C2 A6         [12] 2620 	clr _IOC6
   0757 92 A7         [24] 2621 	mov _IOC7,c
   0759 D2 A6         [12] 2622 	setb _IOC6
                           2623 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   075B 33            [12] 2624 	rlc a
                           2625 ;	# 635 "d:\\ztex\\include\\ztex-flash1.h"
   075C C2 A6         [12] 2626 	clr _IOC6
   075E 92 A7         [24] 2627 	mov _IOC7,c
   0760 D2 A6         [12] 2628 	setb _IOC6
                           2629 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   0762 33            [12] 2630 	rlc a
                           2631 ;	# 640 "d:\\ztex\\include\\ztex-flash1.h"
   0763 C2 A6         [12] 2632 	clr _IOC6
   0765 92 A7         [24] 2633 	mov _IOC7,c
   0767 D2 A6         [12] 2634 	setb _IOC6
   0769 A3            [24] 2635 	inc dptr
   076A C2 A6         [12] 2636 	clr _IOC6
   076C DA C4         [24] 2637 	djnz r2,010013$
                           2638 ;	# 649 "d:\\ztex\\include\\ztex-flash1.h"
   076E 22            [24] 2639 	ret
                           2640 ;------------------------------------------------------------
                           2641 ;Allocation info for local variables in function 'mmc_wait_busy'
                           2642 ;------------------------------------------------------------
                           2643 ;i                         Allocated to registers r6 r7 
                           2644 ;------------------------------------------------------------
                           2645 ;	d:\ztex\include\ztex-conf.h:105: case $0:
                           2646 ;	-----------------------------------------
                           2647 ;	 function mmc_wait_busy
                           2648 ;	-----------------------------------------
   076F                    2649 _mmc_wait_busy:
                           2650 ;	d:\ztex\include\ztex-conf.h:107: break;
   076F 90 3A 4E      [24] 2651 	mov	dptr,#_flash_ec
   0772 74 03         [12] 2652 	mov	a,#0x03
   0774 F0            [24] 2653 	movx	@dptr,a
                           2654 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0775 43 A0 80      [24] 2655 	orl	_IOC,#0x80
                           2656 ;	d:\ztex\include\ztex-flash1.h:659: for (i=0; (flash_read_byte()!=255) && i<65535; i++ ) ;
   0778 7E 00         [12] 2657 	mov	r6,#0x00
   077A 7F 00         [12] 2658 	mov	r7,#0x00
   077C                    2659 00106$:
   077C C0 07         [24] 2660 	push	ar7
   077E C0 06         [24] 2661 	push	ar6
   0780 12 06 76      [24] 2662 	lcall	_flash_read_byte
   0783 AD 82         [24] 2663 	mov	r5,dpl
   0785 D0 06         [24] 2664 	pop	ar6
   0787 D0 07         [24] 2665 	pop	ar7
   0789 BD FF 02      [24] 2666 	cjne	r5,#0xFF,00123$
   078C 80 20         [24] 2667 	sjmp	00101$
   078E                    2668 00123$:
   078E 8E 02         [24] 2669 	mov	ar2,r6
   0790 8F 03         [24] 2670 	mov	ar3,r7
   0792 7C 00         [12] 2671 	mov	r4,#0x00
   0794 7D 00         [12] 2672 	mov	r5,#0x00
   0796 C3            [12] 2673 	clr	c
   0797 EA            [12] 2674 	mov	a,r2
   0798 94 FF         [12] 2675 	subb	a,#0xFF
   079A EB            [12] 2676 	mov	a,r3
   079B 94 FF         [12] 2677 	subb	a,#0xFF
   079D EC            [12] 2678 	mov	a,r4
   079E 94 00         [12] 2679 	subb	a,#0x00
   07A0 ED            [12] 2680 	mov	a,r5
   07A1 64 80         [12] 2681 	xrl	a,#0x80
   07A3 94 80         [12] 2682 	subb	a,#0x80
   07A5 50 07         [24] 2683 	jnc	00101$
   07A7 0E            [12] 2684 	inc	r6
   07A8 BE 00 D1      [24] 2685 	cjne	r6,#0x00,00106$
   07AB 0F            [12] 2686 	inc	r7
   07AC 80 CE         [24] 2687 	sjmp	00106$
   07AE                    2688 00101$:
                           2689 ;	d:\ztex\include\ztex-flash1.h:661: if ( MMC__IO_DO & MMC_bmDO ) {
   07AE E5 B0         [12] 2690 	mov	a,_IOD
   07B0 30 E0 09      [24] 2691 	jnb	acc.0,00103$
                           2692 ;	d:\ztex\include\ztex-flash1.h:662: flash_ec = 0;
   07B3 90 3A 4E      [24] 2693 	mov	dptr,#_flash_ec
   07B6 E4            [12] 2694 	clr	a
   07B7 F0            [24] 2695 	movx	@dptr,a
                           2696 ;	d:\ztex\include\ztex-flash1.h:663: return 0;
   07B8 75 82 00      [24] 2697 	mov	dpl,#0x00
   07BB 22            [24] 2698 	ret
   07BC                    2699 00103$:
                           2700 ;	d:\ztex\include\ztex-flash1.h:665: return 1;
   07BC 75 82 01      [24] 2701 	mov	dpl,#0x01
   07BF 22            [24] 2702 	ret
                           2703 ;------------------------------------------------------------
                           2704 ;Allocation info for local variables in function 'mmc_select'
                           2705 ;------------------------------------------------------------
                           2706 ;	d:\ztex\include\ztex-flash1.h:675: BYTE mmc_select() {
                           2707 ;	-----------------------------------------
                           2708 ;	 function mmc_select
                           2709 ;	-----------------------------------------
   07C0                    2710 _mmc_select:
                           2711 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   07C0 43 A0 20      [24] 2712 	orl	_IOC,#0x20
   07C3 75 82 08      [24] 2713 	mov	dpl,#0x08
   07C6 12 06 6C      [24] 2714 	lcall	_mmc_clocks
   07C9 AF A0         [24] 2715 	mov	r7,_IOC
   07CB 74 DF         [12] 2716 	mov	a,#0xDF
   07CD 5F            [12] 2717 	anl	a,r7
   07CE F5 A0         [12] 2718 	mov	_IOC,a
                           2719 ;	d:\ztex\include\ztex-flash1.h:680: return mmc_wait_busy();
   07D0 02 07 6F      [24] 2720 	ljmp	_mmc_wait_busy
                           2721 ;------------------------------------------------------------
                           2722 ;Allocation info for local variables in function 'mmc_deselect'
                           2723 ;------------------------------------------------------------
                           2724 ;	d:\ztex\include\ztex-flash1.h:687: void mmc_deselect() {
                           2725 ;	-----------------------------------------
                           2726 ;	 function mmc_deselect
                           2727 ;	-----------------------------------------
   07D3                    2728 _mmc_deselect:
                           2729 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   07D3 43 A0 80      [24] 2730 	orl	_IOC,#0x80
   07D6 75 82 08      [24] 2731 	mov	dpl,#0x08
   07D9 12 06 6C      [24] 2732 	lcall	_mmc_clocks
   07DC 43 A0 20      [24] 2733 	orl	_IOC,#0x20
   07DF 75 82 08      [24] 2734 	mov	dpl,#0x08
   07E2 02 06 6C      [24] 2735 	ljmp	_mmc_clocks
                           2736 ;------------------------------------------------------------
                           2737 ;Allocation info for local variables in function 'mmc_read_response'
                           2738 ;------------------------------------------------------------
                           2739 ;	d:\ztex\include\ztex-flash1.h:698: BYTE mmc_read_response() {
                           2740 ;	-----------------------------------------
                           2741 ;	 function mmc_read_response
                           2742 ;	-----------------------------------------
   07E5                    2743 _mmc_read_response:
                           2744 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   07E5 43 A0 80      [24] 2745 	orl	_IOC,#0x80
                           2746 ;	d:\ztex\include\ztex-flash1.h:713: __endasm;    
   07E8 7A 55         [12] 2747 	mov r2,#0x255
   07EA                    2748 	010010$:
   07EA 12 06 76      [24] 2749 	lcall _flash_read_byte
   07ED E5 82         [12] 2750 	mov a,dpl
   07EF 30 E7 02      [24] 2751 	jnb acc.7,010011$
   07F2 DA F6         [24] 2752 	djnz r2, 010010$
   07F4                    2753 	010011$:
   07F4 90 3A 50      [24] 2754 	mov dptr,#_mmc_response
   07F7 F0            [24] 2755 	movx @dptr,a
   07F8 F5 82         [12] 2756 	mov dpl,a
   07FA 22            [24] 2757 	ret
                           2758 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   07FB 75 82 00      [24] 2759 	mov	dpl,#0x00
   07FE 22            [24] 2760 	ret
                           2761 ;------------------------------------------------------------
                           2762 ;Allocation info for local variables in function 'mmc_wait_start'
                           2763 ;------------------------------------------------------------
                           2764 ;to                        Allocated to registers r6 r7 
                           2765 ;------------------------------------------------------------
                           2766 ;	d:\ztex\include\ztex-flash1.h:741: BYTE mmc_wait_start() {
                           2767 ;	-----------------------------------------
                           2768 ;	 function mmc_wait_start
                           2769 ;	-----------------------------------------
   07FF                    2770 _mmc_wait_start:
                           2771 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   07FF 43 A0 80      [24] 2772 	orl	_IOC,#0x80
   0802 7E 00         [12] 2773 	mov	r6,#0x00
   0804 7F 00         [12] 2774 	mov	r7,#0x00
   0806                    2775 00103$:
   0806 C0 07         [24] 2776 	push	ar7
   0808 C0 06         [24] 2777 	push	ar6
   080A 12 06 76      [24] 2778 	lcall	_flash_read_byte
   080D AD 82         [24] 2779 	mov	r5,dpl
   080F D0 06         [24] 2780 	pop	ar6
   0811 D0 07         [24] 2781 	pop	ar7
   0813 BD FE 02      [24] 2782 	cjne	r5,#0xFE,00117$
   0816 80 0D         [24] 2783 	sjmp	00105$
   0818                    2784 00117$:
   0818 0E            [12] 2785 	inc	r6
   0819 BE 00 01      [24] 2786 	cjne	r6,#0x00,00118$
   081C 0F            [12] 2787 	inc	r7
   081D                    2788 00118$:
   081D EE            [12] 2789 	mov	a,r6
   081E 4F            [12] 2790 	orl	a,r7
   081F 70 E5         [24] 2791 	jnz	00103$
                           2792 ;	d:\ztex\include\ztex-flash1.h:747: return 1;
   0821 75 82 01      [24] 2793 	mov	dpl,#0x01
   0824 22            [24] 2794 	ret
   0825                    2795 00105$:
                           2796 ;	d:\ztex\include\ztex-flash1.h:749: return 0;
   0825 75 82 00      [24] 2797 	mov	dpl,#0x00
   0828 22            [24] 2798 	ret
                           2799 ;------------------------------------------------------------
                           2800 ;Allocation info for local variables in function 'flash_read_init'
                           2801 ;------------------------------------------------------------
                           2802 ;s                         Allocated to registers r4 r5 r6 r7 
                           2803 ;------------------------------------------------------------
                           2804 ;	d:\ztex\include\ztex-flash1.h:760: BYTE flash_read_init(DWORD s) {
                           2805 ;	-----------------------------------------
                           2806 ;	 function flash_read_init
                           2807 ;	-----------------------------------------
   0829                    2808 _flash_read_init:
   0829 AC 82         [24] 2809 	mov	r4,dpl
   082B AD 83         [24] 2810 	mov	r5,dph
   082D AE F0         [24] 2811 	mov	r6,b
   082F FF            [12] 2812 	mov	r7,a
                           2813 ;	d:\ztex\include\ztex-flash1.h:761: if ( (MMC_IO & MMC_bmCS) == 0 ) {
   0830 E5 A0         [12] 2814 	mov	a,_IOC
   0832 20 E5 04      [24] 2815 	jb	acc.5,00102$
                           2816 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0835 75 82 04      [24] 2817 	mov	dpl,#0x04
   0838 22            [24] 2818 	ret
   0839                    2819 00102$:
   0839 C0 07         [24] 2820 	push	ar7
   083B C0 06         [24] 2821 	push	ar6
   083D C0 05         [24] 2822 	push	ar5
   083F C0 04         [24] 2823 	push	ar4
   0841 12 07 C0      [24] 2824 	lcall	_mmc_select
   0844 E5 82         [12] 2825 	mov	a,dpl
   0846 D0 04         [24] 2826 	pop	ar4
   0848 D0 05         [24] 2827 	pop	ar5
   084A D0 06         [24] 2828 	pop	ar6
   084C D0 07         [24] 2829 	pop	ar7
   084E 60 07         [24] 2830 	jz	00104$
                           2831 ;	d:\ztex\include\ztex-flash1.h:765: mmc_deselect();
   0850 12 07 D3      [24] 2832 	lcall	_mmc_deselect
                           2833 ;	d:\ztex\include\ztex-flash1.h:766: return FLASH_EC_BUSY;
   0853 75 82 03      [24] 2834 	mov	dpl,#0x03
   0856 22            [24] 2835 	ret
   0857                    2836 00104$:
                           2837 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0857 75 82 08      [24] 2838 	mov	dpl,#0x08
   085A C0 07         [24] 2839 	push	ar7
   085C C0 06         [24] 2840 	push	ar6
   085E C0 05         [24] 2841 	push	ar5
   0860 C0 04         [24] 2842 	push	ar4
   0862 12 06 6C      [24] 2843 	lcall	_mmc_clocks
   0865 D0 04         [24] 2844 	pop	ar4
   0867 D0 05         [24] 2845 	pop	ar5
   0869 D0 06         [24] 2846 	pop	ar6
   086B D0 07         [24] 2847 	pop	ar7
                           2848 ;	d:\ztex\include\ztex-flash1.h:769: mmc_last_cmd = 18;
   086D 90 3A 4F      [24] 2849 	mov	dptr,#_mmc_last_cmd
   0870 74 12         [12] 2850 	mov	a,#0x12
   0872 F0            [24] 2851 	movx	@dptr,a
                           2852 ;	d:\ztex\include\ztex-flash1.h:770: mmc_buffer[0] = 18 | 64;
   0873 90 3A 52      [24] 2853 	mov	dptr,#_mmc_buffer
   0876 74 52         [12] 2854 	mov	a,#0x52
   0878 F0            [24] 2855 	movx	@dptr,a
                           2856 ;	d:\ztex\include\ztex-flash1.h:771: if ( mmc_version == 0 ) {
   0879 90 3A 51      [24] 2857 	mov	dptr,#_mmc_version
   087C E0            [24] 2858 	movx	a,@dptr
   087D FB            [12] 2859 	mov	r3,a
   087E 70 28         [24] 2860 	jnz	00106$
                           2861 ;	d:\ztex\include\ztex-flash1.h:772: s = s << 1;
   0880 EC            [12] 2862 	mov	a,r4
   0881 2C            [12] 2863 	add	a,r4
   0882 FC            [12] 2864 	mov	r4,a
   0883 ED            [12] 2865 	mov	a,r5
   0884 33            [12] 2866 	rlc	a
   0885 FD            [12] 2867 	mov	r5,a
   0886 EE            [12] 2868 	mov	a,r6
   0887 33            [12] 2869 	rlc	a
   0888 FE            [12] 2870 	mov	r6,a
   0889 EF            [12] 2871 	mov	a,r7
   088A 33            [12] 2872 	rlc	a
   088B FF            [12] 2873 	mov	r7,a
                           2874 ;	d:\ztex\include\ztex-flash1.h:773: mmc_buffer[1] = s >> 16;
   088C 8E 03         [24] 2875 	mov	ar3,r6
   088E 90 3A 53      [24] 2876 	mov	dptr,#(_mmc_buffer + 0x0001)
   0891 EB            [12] 2877 	mov	a,r3
   0892 F0            [24] 2878 	movx	@dptr,a
                           2879 ;	d:\ztex\include\ztex-flash1.h:774: mmc_buffer[2] = s >> 8;
   0893 8D 03         [24] 2880 	mov	ar3,r5
   0895 90 3A 54      [24] 2881 	mov	dptr,#(_mmc_buffer + 0x0002)
   0898 EB            [12] 2882 	mov	a,r3
   0899 F0            [24] 2883 	movx	@dptr,a
                           2884 ;	d:\ztex\include\ztex-flash1.h:775: mmc_buffer[3] = s;
   089A 8C 03         [24] 2885 	mov	ar3,r4
   089C 90 3A 55      [24] 2886 	mov	dptr,#(_mmc_buffer + 0x0003)
   089F EB            [12] 2887 	mov	a,r3
   08A0 F0            [24] 2888 	movx	@dptr,a
                           2889 ;	d:\ztex\include\ztex-flash1.h:776: mmc_buffer[4] = 0;
   08A1 90 3A 56      [24] 2890 	mov	dptr,#(_mmc_buffer + 0x0004)
   08A4 E4            [12] 2891 	clr	a
   08A5 F0            [24] 2892 	movx	@dptr,a
   08A6 80 1A         [24] 2893 	sjmp	00107$
   08A8                    2894 00106$:
                           2895 ;	d:\ztex\include\ztex-flash1.h:779: mmc_buffer[1] = s >> 24;
   08A8 8F 03         [24] 2896 	mov	ar3,r7
   08AA 90 3A 53      [24] 2897 	mov	dptr,#(_mmc_buffer + 0x0001)
   08AD EB            [12] 2898 	mov	a,r3
   08AE F0            [24] 2899 	movx	@dptr,a
                           2900 ;	d:\ztex\include\ztex-flash1.h:780: mmc_buffer[2] = s >> 16;
   08AF 8E 03         [24] 2901 	mov	ar3,r6
   08B1 90 3A 54      [24] 2902 	mov	dptr,#(_mmc_buffer + 0x0002)
   08B4 EB            [12] 2903 	mov	a,r3
   08B5 F0            [24] 2904 	movx	@dptr,a
                           2905 ;	d:\ztex\include\ztex-flash1.h:781: mmc_buffer[3] = s >> 8;
   08B6 8D 03         [24] 2906 	mov	ar3,r5
   08B8 90 3A 55      [24] 2907 	mov	dptr,#(_mmc_buffer + 0x0003)
   08BB EB            [12] 2908 	mov	a,r3
   08BC F0            [24] 2909 	movx	@dptr,a
                           2910 ;	d:\ztex\include\ztex-flash1.h:782: mmc_buffer[4] = s;
   08BD 90 3A 56      [24] 2911 	mov	dptr,#(_mmc_buffer + 0x0004)
   08C0 EC            [12] 2912 	mov	a,r4
   08C1 F0            [24] 2913 	movx	@dptr,a
   08C2                    2914 00107$:
                           2915 ;	d:\ztex\include\ztex-flash1.h:784: mmc_buffer[5] = 1;
   08C2 90 3A 57      [24] 2916 	mov	dptr,#(_mmc_buffer + 0x0005)
   08C5 74 01         [12] 2917 	mov	a,#0x01
   08C7 F0            [24] 2918 	movx	@dptr,a
                           2919 ;	d:\ztex\include\ztex-flash1.h:785: flash_write(mmc_buffer,6);
   08C8 75 11 06      [24] 2920 	mov	_flash_write_PARM_2,#0x06
   08CB 90 3A 52      [24] 2921 	mov	dptr,#_mmc_buffer
   08CE 12 07 30      [24] 2922 	lcall	_flash_write
                           2923 ;	d:\ztex\include\ztex-flash1.h:786: mmc_read_response();
   08D1 12 07 E5      [24] 2924 	lcall	_mmc_read_response
                           2925 ;	d:\ztex\include\ztex-flash1.h:787: if ( mmc_response != 0 ) {
   08D4 90 3A 50      [24] 2926 	mov	dptr,#_mmc_response
   08D7 E0            [24] 2927 	movx	a,@dptr
   08D8 FF            [12] 2928 	mov	r7,a
   08D9 60 07         [24] 2929 	jz	00109$
                           2930 ;	d:\ztex\include\ztex-flash1.h:788: mmc_deselect();
   08DB 12 07 D3      [24] 2931 	lcall	_mmc_deselect
                           2932 ;	d:\ztex\include\ztex-flash1.h:789: return FLASH_EC_CMD_ERROR; 
   08DE 75 82 01      [24] 2933 	mov	dpl,#0x01
   08E1 22            [24] 2934 	ret
   08E2                    2935 00109$:
                           2936 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   08E2 12 07 FF      [24] 2937 	lcall	_mmc_wait_start
   08E5 E5 82         [12] 2938 	mov	a,dpl
   08E7 60 07         [24] 2939 	jz	00111$
                           2940 ;	d:\ztex\include\ztex-flash1.h:793: mmc_deselect();
   08E9 12 07 D3      [24] 2941 	lcall	_mmc_deselect
                           2942 ;	d:\ztex\include\ztex-flash1.h:794: return FLASH_EC_TIMEOUT;
   08EC 75 82 02      [24] 2943 	mov	dpl,#0x02
   08EF 22            [24] 2944 	ret
   08F0                    2945 00111$:
                           2946 ;	d:\ztex\include\ztex-flash1.h:796: return 0;
   08F0 75 82 00      [24] 2947 	mov	dpl,#0x00
   08F3 22            [24] 2948 	ret
                           2949 ;------------------------------------------------------------
                           2950 ;Allocation info for local variables in function 'flash_read_next'
                           2951 ;------------------------------------------------------------
                           2952 ;	d:\ztex\include\ztex-flash1.h:807: BYTE flash_read_next() {
                           2953 ;	-----------------------------------------
                           2954 ;	 function flash_read_next
                           2955 ;	-----------------------------------------
   08F4                    2956 _flash_read_next:
                           2957 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   08F4 75 82 10      [24] 2958 	mov	dpl,#0x10
   08F7 12 06 6C      [24] 2959 	lcall	_mmc_clocks
   08FA 12 07 FF      [24] 2960 	lcall	_mmc_wait_start
   08FD E5 82         [12] 2961 	mov	a,dpl
   08FF 60 07         [24] 2962 	jz	00102$
                           2963 ;	d:\ztex\include\ztex-flash1.h:810: mmc_deselect();
   0901 12 07 D3      [24] 2964 	lcall	_mmc_deselect
                           2965 ;	d:\ztex\include\ztex-flash1.h:811: return FLASH_EC_TIMEOUT;
   0904 75 82 02      [24] 2966 	mov	dpl,#0x02
   0907 22            [24] 2967 	ret
   0908                    2968 00102$:
                           2969 ;	d:\ztex\include\ztex-flash1.h:813: return 0;
   0908 75 82 00      [24] 2970 	mov	dpl,#0x00
   090B 22            [24] 2971 	ret
                           2972 ;------------------------------------------------------------
                           2973 ;Allocation info for local variables in function 'flash_read_finish'
                           2974 ;------------------------------------------------------------
                           2975 ;n                         Allocated to registers 
                           2976 ;------------------------------------------------------------
                           2977 ;	d:\ztex\include\ztex-flash1.h:823: void flash_read_finish(WORD n) {
                           2978 ;	-----------------------------------------
                           2979 ;	 function flash_read_finish
                           2980 ;	-----------------------------------------
   090C                    2981 _flash_read_finish:
   090C AE 82         [24] 2982 	mov	r6,dpl
   090E AF 83         [24] 2983 	mov	r7,dph
                           2984 ;	d:\ztex\include\ztex-flash1.h:824: while ( n > 32 ) {
   0910                    2985 00101$:
   0910 C3            [12] 2986 	clr	c
   0911 74 20         [12] 2987 	mov	a,#0x20
   0913 9E            [12] 2988 	subb	a,r6
   0914 E4            [12] 2989 	clr	a
   0915 9F            [12] 2990 	subb	a,r7
   0916 50 18         [24] 2991 	jnc	00103$
                           2992 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0918 75 82 00      [24] 2993 	mov	dpl,#0x00
   091B C0 07         [24] 2994 	push	ar7
   091D C0 06         [24] 2995 	push	ar6
   091F 12 06 6C      [24] 2996 	lcall	_mmc_clocks
   0922 D0 06         [24] 2997 	pop	ar6
   0924 D0 07         [24] 2998 	pop	ar7
                           2999 ;	d:\ztex\include\ztex-flash1.h:826: n-=32;
   0926 EE            [12] 3000 	mov	a,r6
   0927 24 E0         [12] 3001 	add	a,#0xE0
   0929 FE            [12] 3002 	mov	r6,a
   092A EF            [12] 3003 	mov	a,r7
   092B 34 FF         [12] 3004 	addc	a,#0xFF
   092D FF            [12] 3005 	mov	r7,a
   092E 80 E0         [24] 3006 	sjmp	00101$
   0930                    3007 00103$:
                           3008 ;	d:\ztex\include\ztex-flash1.h:828: if ( n>0) mmc_clocks(n << 3);
   0930 EE            [12] 3009 	mov	a,r6
   0931 4F            [12] 3010 	orl	a,r7
   0932 60 0A         [24] 3011 	jz	00105$
   0934 EE            [12] 3012 	mov	a,r6
   0935 C4            [12] 3013 	swap	a
   0936 03            [12] 3014 	rr	a
   0937 54 F8         [12] 3015 	anl	a,#0xF8
   0939 F5 82         [12] 3016 	mov	dpl,a
   093B 12 06 6C      [24] 3017 	lcall	_mmc_clocks
   093E                    3018 00105$:
                           3019 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   093E 75 82 10      [24] 3020 	mov	dpl,#0x10
   0941 12 06 6C      [24] 3021 	lcall	_mmc_clocks
   0944 75 82 08      [24] 3022 	mov	dpl,#0x08
   0947 12 06 6C      [24] 3023 	lcall	_mmc_clocks
                           3024 ;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
   094A 90 3A 4F      [24] 3025 	mov	dptr,#_mmc_last_cmd
   094D 74 0C         [12] 3026 	mov	a,#0x0C
   094F F0            [24] 3027 	movx	@dptr,a
                           3028 ;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
   0950 90 3A 52      [24] 3029 	mov	dptr,#_mmc_buffer
   0953 74 4C         [12] 3030 	mov	a,#0x4C
   0955 F0            [24] 3031 	movx	@dptr,a
                           3032 ;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
   0956 90 3A 53      [24] 3033 	mov	dptr,#(_mmc_buffer + 0x0001)
                           3034 ;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
                           3035 ;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
                           3036 ;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
   0959 E4            [12] 3037 	clr	a
   095A F0            [24] 3038 	movx	@dptr,a
   095B 90 3A 54      [24] 3039 	mov	dptr,#(_mmc_buffer + 0x0002)
   095E F0            [24] 3040 	movx	@dptr,a
   095F 90 3A 55      [24] 3041 	mov	dptr,#(_mmc_buffer + 0x0003)
   0962 F0            [24] 3042 	movx	@dptr,a
   0963 90 3A 56      [24] 3043 	mov	dptr,#(_mmc_buffer + 0x0004)
   0966 F0            [24] 3044 	movx	@dptr,a
                           3045 ;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
   0967 90 3A 57      [24] 3046 	mov	dptr,#(_mmc_buffer + 0x0005)
   096A 74 01         [12] 3047 	mov	a,#0x01
   096C F0            [24] 3048 	movx	@dptr,a
                           3049 ;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
   096D 75 11 06      [24] 3050 	mov	_flash_write_PARM_2,#0x06
   0970 90 3A 52      [24] 3051 	mov	dptr,#_mmc_buffer
   0973 12 07 30      [24] 3052 	lcall	_flash_write
                           3053 ;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
   0976 12 07 E5      [24] 3054 	lcall	_mmc_read_response
                           3055 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0979 75 82 08      [24] 3056 	mov	dpl,#0x08
   097C 12 06 6C      [24] 3057 	lcall	_mmc_clocks
                           3058 ;	d:\ztex\include\ztex-flash1.h:833: mmc_deselect();
   097F 02 07 D3      [24] 3059 	ljmp	_mmc_deselect
                           3060 ;------------------------------------------------------------
                           3061 ;Allocation info for local variables in function 'flash_write_init'
                           3062 ;------------------------------------------------------------
                           3063 ;s                         Allocated to registers r4 r5 r6 r7 
                           3064 ;------------------------------------------------------------
                           3065 ;	d:\ztex\include\ztex-flash1.h:845: BYTE flash_write_init(DWORD s) {
                           3066 ;	-----------------------------------------
                           3067 ;	 function flash_write_init
                           3068 ;	-----------------------------------------
   0982                    3069 _flash_write_init:
   0982 AC 82         [24] 3070 	mov	r4,dpl
   0984 AD 83         [24] 3071 	mov	r5,dph
   0986 AE F0         [24] 3072 	mov	r6,b
   0988 FF            [12] 3073 	mov	r7,a
                           3074 ;	d:\ztex\include\ztex-flash1.h:846: if ( (MMC_IO & MMC_bmCS) == 0 ) {
   0989 E5 A0         [12] 3075 	mov	a,_IOC
   098B 20 E5 04      [24] 3076 	jb	acc.5,00102$
                           3077 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   098E 75 82 04      [24] 3078 	mov	dpl,#0x04
   0991 22            [24] 3079 	ret
   0992                    3080 00102$:
   0992 C0 07         [24] 3081 	push	ar7
   0994 C0 06         [24] 3082 	push	ar6
   0996 C0 05         [24] 3083 	push	ar5
   0998 C0 04         [24] 3084 	push	ar4
   099A 12 07 C0      [24] 3085 	lcall	_mmc_select
   099D E5 82         [12] 3086 	mov	a,dpl
   099F D0 04         [24] 3087 	pop	ar4
   09A1 D0 05         [24] 3088 	pop	ar5
   09A3 D0 06         [24] 3089 	pop	ar6
   09A5 D0 07         [24] 3090 	pop	ar7
   09A7 60 07         [24] 3091 	jz	00104$
                           3092 ;	d:\ztex\include\ztex-flash1.h:850: mmc_deselect();
   09A9 12 07 D3      [24] 3093 	lcall	_mmc_deselect
                           3094 ;	d:\ztex\include\ztex-flash1.h:851: return FLASH_EC_BUSY;
   09AC 75 82 03      [24] 3095 	mov	dpl,#0x03
   09AF 22            [24] 3096 	ret
   09B0                    3097 00104$:
                           3098 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   09B0 75 82 08      [24] 3099 	mov	dpl,#0x08
   09B3 C0 07         [24] 3100 	push	ar7
   09B5 C0 06         [24] 3101 	push	ar6
   09B7 C0 05         [24] 3102 	push	ar5
   09B9 C0 04         [24] 3103 	push	ar4
   09BB 12 06 6C      [24] 3104 	lcall	_mmc_clocks
   09BE D0 04         [24] 3105 	pop	ar4
   09C0 D0 05         [24] 3106 	pop	ar5
   09C2 D0 06         [24] 3107 	pop	ar6
   09C4 D0 07         [24] 3108 	pop	ar7
                           3109 ;	d:\ztex\include\ztex-flash1.h:854: mmc_last_cmd = 25;
   09C6 90 3A 4F      [24] 3110 	mov	dptr,#_mmc_last_cmd
   09C9 74 19         [12] 3111 	mov	a,#0x19
   09CB F0            [24] 3112 	movx	@dptr,a
                           3113 ;	d:\ztex\include\ztex-flash1.h:855: mmc_buffer[0] = 25 | 64;
   09CC 90 3A 52      [24] 3114 	mov	dptr,#_mmc_buffer
   09CF 74 59         [12] 3115 	mov	a,#0x59
   09D1 F0            [24] 3116 	movx	@dptr,a
                           3117 ;	d:\ztex\include\ztex-flash1.h:856: if ( mmc_version == 0 ) {
   09D2 90 3A 51      [24] 3118 	mov	dptr,#_mmc_version
   09D5 E0            [24] 3119 	movx	a,@dptr
   09D6 FB            [12] 3120 	mov	r3,a
   09D7 70 28         [24] 3121 	jnz	00106$
                           3122 ;	d:\ztex\include\ztex-flash1.h:857: s = s << 1;
   09D9 EC            [12] 3123 	mov	a,r4
   09DA 2C            [12] 3124 	add	a,r4
   09DB FC            [12] 3125 	mov	r4,a
   09DC ED            [12] 3126 	mov	a,r5
   09DD 33            [12] 3127 	rlc	a
   09DE FD            [12] 3128 	mov	r5,a
   09DF EE            [12] 3129 	mov	a,r6
   09E0 33            [12] 3130 	rlc	a
   09E1 FE            [12] 3131 	mov	r6,a
   09E2 EF            [12] 3132 	mov	a,r7
   09E3 33            [12] 3133 	rlc	a
   09E4 FF            [12] 3134 	mov	r7,a
                           3135 ;	d:\ztex\include\ztex-flash1.h:858: mmc_buffer[1] = s >> 16;
   09E5 8E 03         [24] 3136 	mov	ar3,r6
   09E7 90 3A 53      [24] 3137 	mov	dptr,#(_mmc_buffer + 0x0001)
   09EA EB            [12] 3138 	mov	a,r3
   09EB F0            [24] 3139 	movx	@dptr,a
                           3140 ;	d:\ztex\include\ztex-flash1.h:859: mmc_buffer[2] = s >> 8;
   09EC 8D 03         [24] 3141 	mov	ar3,r5
   09EE 90 3A 54      [24] 3142 	mov	dptr,#(_mmc_buffer + 0x0002)
   09F1 EB            [12] 3143 	mov	a,r3
   09F2 F0            [24] 3144 	movx	@dptr,a
                           3145 ;	d:\ztex\include\ztex-flash1.h:860: mmc_buffer[3] = s;
   09F3 8C 03         [24] 3146 	mov	ar3,r4
   09F5 90 3A 55      [24] 3147 	mov	dptr,#(_mmc_buffer + 0x0003)
   09F8 EB            [12] 3148 	mov	a,r3
   09F9 F0            [24] 3149 	movx	@dptr,a
                           3150 ;	d:\ztex\include\ztex-flash1.h:861: mmc_buffer[4] = 0;
   09FA 90 3A 56      [24] 3151 	mov	dptr,#(_mmc_buffer + 0x0004)
   09FD E4            [12] 3152 	clr	a
   09FE F0            [24] 3153 	movx	@dptr,a
   09FF 80 1A         [24] 3154 	sjmp	00107$
   0A01                    3155 00106$:
                           3156 ;	d:\ztex\include\ztex-flash1.h:864: mmc_buffer[1] = s >> 24;
   0A01 8F 03         [24] 3157 	mov	ar3,r7
   0A03 90 3A 53      [24] 3158 	mov	dptr,#(_mmc_buffer + 0x0001)
   0A06 EB            [12] 3159 	mov	a,r3
   0A07 F0            [24] 3160 	movx	@dptr,a
                           3161 ;	d:\ztex\include\ztex-flash1.h:865: mmc_buffer[2] = s >> 16;
   0A08 8E 03         [24] 3162 	mov	ar3,r6
   0A0A 90 3A 54      [24] 3163 	mov	dptr,#(_mmc_buffer + 0x0002)
   0A0D EB            [12] 3164 	mov	a,r3
   0A0E F0            [24] 3165 	movx	@dptr,a
                           3166 ;	d:\ztex\include\ztex-flash1.h:866: mmc_buffer[3] = s >> 8;
   0A0F 8D 03         [24] 3167 	mov	ar3,r5
   0A11 90 3A 55      [24] 3168 	mov	dptr,#(_mmc_buffer + 0x0003)
   0A14 EB            [12] 3169 	mov	a,r3
   0A15 F0            [24] 3170 	movx	@dptr,a
                           3171 ;	d:\ztex\include\ztex-flash1.h:867: mmc_buffer[4] = s;
   0A16 90 3A 56      [24] 3172 	mov	dptr,#(_mmc_buffer + 0x0004)
   0A19 EC            [12] 3173 	mov	a,r4
   0A1A F0            [24] 3174 	movx	@dptr,a
   0A1B                    3175 00107$:
                           3176 ;	d:\ztex\include\ztex-flash1.h:869: mmc_buffer[5] = 1;
   0A1B 90 3A 57      [24] 3177 	mov	dptr,#(_mmc_buffer + 0x0005)
   0A1E 74 01         [12] 3178 	mov	a,#0x01
   0A20 F0            [24] 3179 	movx	@dptr,a
                           3180 ;	d:\ztex\include\ztex-flash1.h:870: flash_write(mmc_buffer,6);
   0A21 75 11 06      [24] 3181 	mov	_flash_write_PARM_2,#0x06
   0A24 90 3A 52      [24] 3182 	mov	dptr,#_mmc_buffer
   0A27 12 07 30      [24] 3183 	lcall	_flash_write
                           3184 ;	d:\ztex\include\ztex-flash1.h:871: mmc_read_response();
   0A2A 12 07 E5      [24] 3185 	lcall	_mmc_read_response
                           3186 ;	d:\ztex\include\ztex-flash1.h:872: if ( mmc_response != 0 ) {
   0A2D 90 3A 50      [24] 3187 	mov	dptr,#_mmc_response
   0A30 E0            [24] 3188 	movx	a,@dptr
   0A31 FF            [12] 3189 	mov	r7,a
   0A32 60 07         [24] 3190 	jz	00109$
                           3191 ;	d:\ztex\include\ztex-flash1.h:873: mmc_deselect();
   0A34 12 07 D3      [24] 3192 	lcall	_mmc_deselect
                           3193 ;	d:\ztex\include\ztex-flash1.h:874: return FLASH_EC_CMD_ERROR; 
   0A37 75 82 01      [24] 3194 	mov	dpl,#0x01
   0A3A 22            [24] 3195 	ret
   0A3B                    3196 00109$:
                           3197 ;	d:\ztex\include\ztex-flash1.h:877: MMC_IO |= MMC_bmDI;				
   0A3B 43 A0 80      [24] 3198 	orl	_IOC,#0x80
                           3199 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0A3E 75 82 08      [24] 3200 	mov	dpl,#0x08
   0A41 12 06 6C      [24] 3201 	lcall	_mmc_clocks
   0A44 75 82 FC      [24] 3202 	mov	dpl,#0xFC
   0A47 12 06 F4      [24] 3203 	lcall	_flash_write_byte
                           3204 ;	d:\ztex\include\ztex-flash1.h:880: return 0;
   0A4A 75 82 00      [24] 3205 	mov	dpl,#0x00
   0A4D 22            [24] 3206 	ret
                           3207 ;------------------------------------------------------------
                           3208 ;Allocation info for local variables in function 'flash_write_finish_sector'
                           3209 ;------------------------------------------------------------
                           3210 ;n                         Allocated to registers r6 r7 
                           3211 ;------------------------------------------------------------
                           3212 ;	d:\ztex\include\ztex-flash1.h:897: BYTE flash_write_finish_sector (WORD n) {
                           3213 ;	-----------------------------------------
                           3214 ;	 function flash_write_finish_sector
                           3215 ;	-----------------------------------------
   0A4E                    3216 _flash_write_finish_sector:
   0A4E AE 82         [24] 3217 	mov	r6,dpl
   0A50 AF 83         [24] 3218 	mov	r7,dph
                           3219 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0A52 AD A0         [24] 3220 	mov	r5,_IOC
   0A54 74 7F         [12] 3221 	mov	a,#0x7F
   0A56 5D            [12] 3222 	anl	a,r5
   0A57 F5 A0         [12] 3223 	mov	_IOC,a
                           3224 ;	d:\ztex\include\ztex-flash1.h:899: while ( n > 32 ) {
   0A59                    3225 00101$:
   0A59 C3            [12] 3226 	clr	c
   0A5A 74 20         [12] 3227 	mov	a,#0x20
   0A5C 9E            [12] 3228 	subb	a,r6
   0A5D E4            [12] 3229 	clr	a
   0A5E 9F            [12] 3230 	subb	a,r7
   0A5F 50 18         [24] 3231 	jnc	00103$
                           3232 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0A61 75 82 00      [24] 3233 	mov	dpl,#0x00
   0A64 C0 07         [24] 3234 	push	ar7
   0A66 C0 06         [24] 3235 	push	ar6
   0A68 12 06 6C      [24] 3236 	lcall	_mmc_clocks
   0A6B D0 06         [24] 3237 	pop	ar6
   0A6D D0 07         [24] 3238 	pop	ar7
                           3239 ;	d:\ztex\include\ztex-flash1.h:901: n-=32;
   0A6F EE            [12] 3240 	mov	a,r6
   0A70 24 E0         [12] 3241 	add	a,#0xE0
   0A72 FE            [12] 3242 	mov	r6,a
   0A73 EF            [12] 3243 	mov	a,r7
   0A74 34 FF         [12] 3244 	addc	a,#0xFF
   0A76 FF            [12] 3245 	mov	r7,a
   0A77 80 E0         [24] 3246 	sjmp	00101$
   0A79                    3247 00103$:
                           3248 ;	d:\ztex\include\ztex-flash1.h:903: if ( n>0) mmc_clocks(n << 3);
   0A79 EE            [12] 3249 	mov	a,r6
   0A7A 4F            [12] 3250 	orl	a,r7
   0A7B 60 0A         [24] 3251 	jz	00105$
   0A7D EE            [12] 3252 	mov	a,r6
   0A7E C4            [12] 3253 	swap	a
   0A7F 03            [12] 3254 	rr	a
   0A80 54 F8         [12] 3255 	anl	a,#0xF8
   0A82 F5 82         [12] 3256 	mov	dpl,a
   0A84 12 06 6C      [24] 3257 	lcall	_mmc_clocks
   0A87                    3258 00105$:
                           3259 ;	d:\ztex\include\ztex-flash1.h:905: MMC_IO |= MMC_bmDI;
   0A87 43 A0 80      [24] 3260 	orl	_IOC,#0x80
                           3261 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0A8A 75 82 10      [24] 3262 	mov	dpl,#0x10
   0A8D 12 06 6C      [24] 3263 	lcall	_mmc_clocks
   0A90 12 06 76      [24] 3264 	lcall	_flash_read_byte
   0A93 E5 82         [12] 3265 	mov	a,dpl
   0A95 54 0F         [12] 3266 	anl	a,#0x0F
   0A97 FF            [12] 3267 	mov	r7,a
   0A98 BF 05 02      [24] 3268 	cjne	r7,#0x05,00125$
   0A9B 80 48         [24] 3269 	sjmp	00107$
   0A9D                    3270 00125$:
                           3271 ;	d:\ztex\include\ztex-flash1.h:909: flash_ec = FLASH_EC_WRITE_ERROR; 
   0A9D 90 3A 4E      [24] 3272 	mov	dptr,#_flash_ec
   0AA0 74 06         [12] 3273 	mov	a,#0x06
   0AA2 F0            [24] 3274 	movx	@dptr,a
                           3275 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0AA3 75 82 08      [24] 3276 	mov	dpl,#0x08
   0AA6 12 06 6C      [24] 3277 	lcall	_mmc_clocks
                           3278 ;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
   0AA9 90 3A 4F      [24] 3279 	mov	dptr,#_mmc_last_cmd
   0AAC 74 0C         [12] 3280 	mov	a,#0x0C
   0AAE F0            [24] 3281 	movx	@dptr,a
                           3282 ;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
   0AAF 90 3A 52      [24] 3283 	mov	dptr,#_mmc_buffer
   0AB2 74 4C         [12] 3284 	mov	a,#0x4C
   0AB4 F0            [24] 3285 	movx	@dptr,a
                           3286 ;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
   0AB5 90 3A 53      [24] 3287 	mov	dptr,#(_mmc_buffer + 0x0001)
                           3288 ;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
                           3289 ;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
                           3290 ;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
   0AB8 E4            [12] 3291 	clr	a
   0AB9 F0            [24] 3292 	movx	@dptr,a
   0ABA 90 3A 54      [24] 3293 	mov	dptr,#(_mmc_buffer + 0x0002)
   0ABD F0            [24] 3294 	movx	@dptr,a
   0ABE 90 3A 55      [24] 3295 	mov	dptr,#(_mmc_buffer + 0x0003)
   0AC1 F0            [24] 3296 	movx	@dptr,a
   0AC2 90 3A 56      [24] 3297 	mov	dptr,#(_mmc_buffer + 0x0004)
   0AC5 F0            [24] 3298 	movx	@dptr,a
                           3299 ;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
   0AC6 90 3A 57      [24] 3300 	mov	dptr,#(_mmc_buffer + 0x0005)
   0AC9 74 01         [12] 3301 	mov	a,#0x01
   0ACB F0            [24] 3302 	movx	@dptr,a
                           3303 ;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
   0ACC 75 11 06      [24] 3304 	mov	_flash_write_PARM_2,#0x06
   0ACF 90 3A 52      [24] 3305 	mov	dptr,#_mmc_buffer
   0AD2 12 07 30      [24] 3306 	lcall	_flash_write
                           3307 ;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
   0AD5 12 07 E5      [24] 3308 	lcall	_mmc_read_response
                           3309 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0AD8 75 82 08      [24] 3310 	mov	dpl,#0x08
   0ADB 12 06 6C      [24] 3311 	lcall	_mmc_clocks
                           3312 ;	d:\ztex\include\ztex-flash1.h:912: mmc_deselect();
   0ADE 12 07 D3      [24] 3313 	lcall	_mmc_deselect
                           3314 ;	d:\ztex\include\ztex-flash1.h:913: return FLASH_EC_WRITE_ERROR; 
   0AE1 75 82 06      [24] 3315 	mov	dpl,#0x06
   0AE4 22            [24] 3316 	ret
   0AE5                    3317 00107$:
                           3318 ;	d:\ztex\include\ztex-flash1.h:915: return 0;
   0AE5 75 82 00      [24] 3319 	mov	dpl,#0x00
   0AE8 22            [24] 3320 	ret
                           3321 ;------------------------------------------------------------
                           3322 ;Allocation info for local variables in function 'flash_write_finish'
                           3323 ;------------------------------------------------------------
                           3324 ;	d:\ztex\include\ztex-flash1.h:924: void flash_write_finish () {
                           3325 ;	-----------------------------------------
                           3326 ;	 function flash_write_finish
                           3327 ;	-----------------------------------------
   0AE9                    3328 _flash_write_finish:
                           3329 ;	d:\ztex\include\ztex-flash1.h:925: mmc_wait_busy();			
   0AE9 12 07 6F      [24] 3330 	lcall	_mmc_wait_busy
                           3331 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0AEC 75 82 FD      [24] 3332 	mov	dpl,#0xFD
   0AEF 12 06 F4      [24] 3333 	lcall	_flash_write_byte
   0AF2 75 82 08      [24] 3334 	mov	dpl,#0x08
   0AF5 12 06 6C      [24] 3335 	lcall	_mmc_clocks
                           3336 ;	d:\ztex\include\ztex-flash1.h:928: mmc_deselect();
   0AF8 02 07 D3      [24] 3337 	ljmp	_mmc_deselect
                           3338 ;------------------------------------------------------------
                           3339 ;Allocation info for local variables in function 'flash_write_next'
                           3340 ;------------------------------------------------------------
                           3341 ;	d:\ztex\include\ztex-flash1.h:937: void flash_write_next () {
                           3342 ;	-----------------------------------------
                           3343 ;	 function flash_write_next
                           3344 ;	-----------------------------------------
   0AFB                    3345 _flash_write_next:
                           3346 ;	d:\ztex\include\ztex-flash1.h:938: mmc_wait_busy();			
   0AFB 12 07 6F      [24] 3347 	lcall	_mmc_wait_busy
                           3348 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0AFE 75 82 FC      [24] 3349 	mov	dpl,#0xFC
   0B01 02 06 F4      [24] 3350 	ljmp	_flash_write_byte
                           3351 ;------------------------------------------------------------
                           3352 ;Allocation info for local variables in function 'flash_init'
                           3353 ;------------------------------------------------------------
                           3354 ;i                         Allocated to registers r7 
                           3355 ;j                         Allocated to registers r6 
                           3356 ;k                         Allocated to registers r7 
                           3357 ;------------------------------------------------------------
                           3358 ;	d:\ztex\include\ztex-flash1.h:946: void flash_init() {
                           3359 ;	-----------------------------------------
                           3360 ;	 function flash_init
                           3361 ;	-----------------------------------------
   0B04                    3362 _flash_init:
                           3363 ;	d:\ztex\include\ztex-flash1.h:957: flash_enabled = 1;
   0B04 90 3A 47      [24] 3364 	mov	dptr,#_flash_enabled
   0B07 74 01         [12] 3365 	mov	a,#0x01
   0B09 F0            [24] 3366 	movx	@dptr,a
                           3367 ;	d:\ztex\include\ztex-flash1.h:958: flash_sector_size = 512;
   0B0A 90 3A 48      [24] 3368 	mov	dptr,#_flash_sector_size
   0B0D E4            [12] 3369 	clr	a
   0B0E F0            [24] 3370 	movx	@dptr,a
   0B0F 74 02         [12] 3371 	mov	a,#0x02
   0B11 A3            [24] 3372 	inc	dptr
   0B12 F0            [24] 3373 	movx	@dptr,a
                           3374 ;	d:\ztex\include\ztex-flash1.h:959: mmc_version = 0;
   0B13 90 3A 51      [24] 3375 	mov	dptr,#_mmc_version
   0B16 E4            [12] 3376 	clr	a
   0B17 F0            [24] 3377 	movx	@dptr,a
                           3378 ;	d:\ztex\include\ztex-flash1.h:961: OEMMC_PORT = OEMMC_PORT | ( MMC_bmCS | MMC_bmDI | MMC_bmCLK );
   0B18 43 B4 E0      [24] 3379 	orl	_OEC,#0xE0
                           3380 ;	d:\ztex\include\ztex-flash1.h:962: OEMMC__PORT_DO = OEMMC__PORT_DO & ~MMC_bmDO;
   0B1B AF B5         [24] 3381 	mov	r7,_OED
   0B1D 74 FE         [12] 3382 	mov	a,#0xFE
   0B1F 5F            [12] 3383 	anl	a,r7
   0B20 F5 B5         [12] 3384 	mov	_OED,a
                           3385 ;	d:\ztex\include\ztex-flash1.h:964: MMC_IO |= MMC_bmDI;
   0B22 43 A0 80      [24] 3386 	orl	_IOC,#0x80
                           3387 ;	d:\ztex\include\ztex-flash1.h:965: MMC_IO |= MMC_bmCS;
   0B25 43 A0 20      [24] 3388 	orl	_IOC,#0x20
                           3389 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0B28 75 82 00      [24] 3390 	mov	dpl,#0x00
   0B2B 12 06 6C      [24] 3391 	lcall	_mmc_clocks
   0B2E 12 07 C0      [24] 3392 	lcall	_mmc_select
                           3393 ;	d:\ztex\include\ztex-flash1.h:969: flash_ec = FLASH_EC_BUSY;
   0B31 90 3A 4E      [24] 3394 	mov	dptr,#_flash_ec
   0B34 74 03         [12] 3395 	mov	a,#0x03
   0B36 F0            [24] 3396 	movx	@dptr,a
                           3397 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0B37 75 82 08      [24] 3398 	mov	dpl,#0x08
   0B3A 12 06 6C      [24] 3399 	lcall	_mmc_clocks
                           3400 ;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
   0B3D 90 3A 4F      [24] 3401 	mov	dptr,#_mmc_last_cmd
   0B40 E4            [12] 3402 	clr	a
   0B41 F0            [24] 3403 	movx	@dptr,a
                           3404 ;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
   0B42 90 3A 52      [24] 3405 	mov	dptr,#_mmc_buffer
   0B45 74 40         [12] 3406 	mov	a,#0x40
   0B47 F0            [24] 3407 	movx	@dptr,a
                           3408 ;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
   0B48 90 3A 53      [24] 3409 	mov	dptr,#(_mmc_buffer + 0x0001)
                           3410 ;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
                           3411 ;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
                           3412 ;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
   0B4B E4            [12] 3413 	clr	a
   0B4C F0            [24] 3414 	movx	@dptr,a
   0B4D 90 3A 54      [24] 3415 	mov	dptr,#(_mmc_buffer + 0x0002)
   0B50 F0            [24] 3416 	movx	@dptr,a
   0B51 90 3A 55      [24] 3417 	mov	dptr,#(_mmc_buffer + 0x0003)
   0B54 F0            [24] 3418 	movx	@dptr,a
   0B55 90 3A 56      [24] 3419 	mov	dptr,#(_mmc_buffer + 0x0004)
   0B58 F0            [24] 3420 	movx	@dptr,a
                           3421 ;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
   0B59 90 3A 57      [24] 3422 	mov	dptr,#(_mmc_buffer + 0x0005)
   0B5C 74 95         [12] 3423 	mov	a,#0x95
   0B5E F0            [24] 3424 	movx	@dptr,a
                           3425 ;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
   0B5F 75 11 06      [24] 3426 	mov	_flash_write_PARM_2,#0x06
   0B62 90 3A 52      [24] 3427 	mov	dptr,#_mmc_buffer
   0B65 12 07 30      [24] 3428 	lcall	_flash_write
                           3429 ;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
   0B68 12 07 E5      [24] 3430 	lcall	_mmc_read_response
                           3431 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0B6B 90 3A 50      [24] 3432 	mov	dptr,#_mmc_response
   0B6E E0            [24] 3433 	movx	a,@dptr
   0B6F FF            [12] 3434 	mov	r7,a
   0B70 7E 00         [12] 3435 	mov	r6,#0x00
   0B72 54 FE         [12] 3436 	anl	a,#0xFE
   0B74 70 03         [24] 3437 	jnz	00196$
   0B76 EE            [12] 3438 	mov	a,r6
   0B77 60 4B         [24] 3439 	jz	00104$
   0B79                    3440 00196$:
                           3441 ;	d:\ztex\include\ztex-flash1.h:973: wait(50);				
   0B79 90 00 32      [24] 3442 	mov	dptr,#0x0032
   0B7C 12 02 63      [24] 3443 	lcall	_wait
                           3444 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0B7F 75 82 08      [24] 3445 	mov	dpl,#0x08
   0B82 12 06 6C      [24] 3446 	lcall	_mmc_clocks
                           3447 ;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
   0B85 90 3A 4F      [24] 3448 	mov	dptr,#_mmc_last_cmd
   0B88 E4            [12] 3449 	clr	a
   0B89 F0            [24] 3450 	movx	@dptr,a
                           3451 ;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
   0B8A 90 3A 52      [24] 3452 	mov	dptr,#_mmc_buffer
   0B8D 74 40         [12] 3453 	mov	a,#0x40
   0B8F F0            [24] 3454 	movx	@dptr,a
                           3455 ;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
   0B90 90 3A 53      [24] 3456 	mov	dptr,#(_mmc_buffer + 0x0001)
                           3457 ;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
                           3458 ;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
                           3459 ;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
   0B93 E4            [12] 3460 	clr	a
   0B94 F0            [24] 3461 	movx	@dptr,a
   0B95 90 3A 54      [24] 3462 	mov	dptr,#(_mmc_buffer + 0x0002)
   0B98 F0            [24] 3463 	movx	@dptr,a
   0B99 90 3A 55      [24] 3464 	mov	dptr,#(_mmc_buffer + 0x0003)
   0B9C F0            [24] 3465 	movx	@dptr,a
   0B9D 90 3A 56      [24] 3466 	mov	dptr,#(_mmc_buffer + 0x0004)
   0BA0 F0            [24] 3467 	movx	@dptr,a
                           3468 ;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
   0BA1 90 3A 57      [24] 3469 	mov	dptr,#(_mmc_buffer + 0x0005)
   0BA4 74 95         [12] 3470 	mov	a,#0x95
   0BA6 F0            [24] 3471 	movx	@dptr,a
                           3472 ;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
   0BA7 75 11 06      [24] 3473 	mov	_flash_write_PARM_2,#0x06
   0BAA 90 3A 52      [24] 3474 	mov	dptr,#_mmc_buffer
   0BAD 12 07 30      [24] 3475 	lcall	_flash_write
                           3476 ;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
   0BB0 12 07 E5      [24] 3477 	lcall	_mmc_read_response
                           3478 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0BB3 90 3A 50      [24] 3479 	mov	dptr,#_mmc_response
   0BB6 E0            [24] 3480 	movx	a,@dptr
   0BB7 FF            [12] 3481 	mov	r7,a
   0BB8 7E 00         [12] 3482 	mov	r6,#0x00
   0BBA 54 FE         [12] 3483 	anl	a,#0xFE
   0BBC 70 03         [24] 3484 	jnz	00197$
   0BBE EE            [12] 3485 	mov	a,r6
   0BBF 60 03         [24] 3486 	jz	00198$
   0BC1                    3487 00197$:
   0BC1 02 0F AA      [24] 3488 	ljmp	00134$
   0BC4                    3489 00198$:
                           3490 ;	d:\ztex\include\ztex-conf.h:976: ERROR: no line number 976 in file d:\ztex\include\ztex-conf.h
   0BC4                    3491 00104$:
                           3492 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0BC4 75 82 08      [24] 3493 	mov	dpl,#0x08
   0BC7 12 06 6C      [24] 3494 	lcall	_mmc_clocks
                           3495 ;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
   0BCA 90 3A 4F      [24] 3496 	mov	dptr,#_mmc_last_cmd
   0BCD 74 08         [12] 3497 	mov	a,#0x08
   0BCF F0            [24] 3498 	movx	@dptr,a
                           3499 ;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
   0BD0 90 3A 52      [24] 3500 	mov	dptr,#_mmc_buffer
   0BD3 74 48         [12] 3501 	mov	a,#0x48
   0BD5 F0            [24] 3502 	movx	@dptr,a
                           3503 ;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
   0BD6 90 3A 53      [24] 3504 	mov	dptr,#(_mmc_buffer + 0x0001)
                           3505 ;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
   0BD9 E4            [12] 3506 	clr	a
   0BDA F0            [24] 3507 	movx	@dptr,a
   0BDB 90 3A 54      [24] 3508 	mov	dptr,#(_mmc_buffer + 0x0002)
   0BDE F0            [24] 3509 	movx	@dptr,a
                           3510 ;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
   0BDF 90 3A 55      [24] 3511 	mov	dptr,#(_mmc_buffer + 0x0003)
   0BE2 74 01         [12] 3512 	mov	a,#0x01
   0BE4 F0            [24] 3513 	movx	@dptr,a
                           3514 ;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
   0BE5 90 3A 56      [24] 3515 	mov	dptr,#(_mmc_buffer + 0x0004)
   0BE8 74 AA         [12] 3516 	mov	a,#0xAA
   0BEA F0            [24] 3517 	movx	@dptr,a
                           3518 ;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
   0BEB 90 3A 57      [24] 3519 	mov	dptr,#(_mmc_buffer + 0x0005)
   0BEE 74 87         [12] 3520 	mov	a,#0x87
   0BF0 F0            [24] 3521 	movx	@dptr,a
                           3522 ;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
   0BF1 75 11 06      [24] 3523 	mov	_flash_write_PARM_2,#0x06
   0BF4 90 3A 52      [24] 3524 	mov	dptr,#_mmc_buffer
   0BF7 12 07 30      [24] 3525 	lcall	_flash_write
                           3526 ;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
   0BFA 12 07 E5      [24] 3527 	lcall	_mmc_read_response
                           3528 ;	d:\ztex\include\ztex-flash1.h:981: if ( ( mmc_response & bmBIT2) == 0 ) {
   0BFD 90 3A 50      [24] 3529 	mov	dptr,#_mmc_response
   0C00 E0            [24] 3530 	movx	a,@dptr
   0C01 FF            [12] 3531 	mov	r7,a
   0C02 20 E2 35      [24] 3532 	jb	acc.2,00111$
                           3533 ;	d:\ztex\include\ztex-flash1.h:982: if ( (mmc_response & 0xfe) != 0 )  
   0C05 EF            [12] 3534 	mov	a,r7
   0C06 54 FE         [12] 3535 	anl	a,#0xFE
   0C08 60 03         [24] 3536 	jz	00201$
   0C0A 02 0F AA      [24] 3537 	ljmp	00134$
   0C0D                    3538 00201$:
                           3539 ;	d:\ztex\include\ztex-flash1.h:984: flash_read(mmc_buffer,4);
   0C0D 75 11 04      [24] 3540 	mov	_flash_read_PARM_2,#0x04
   0C10 90 3A 52      [24] 3541 	mov	dptr,#_mmc_buffer
   0C13 12 06 B5      [24] 3542 	lcall	_flash_read
                           3543 ;	d:\ztex\include\ztex-flash1.h:985: if ( ( (mmc_buffer[2] & 15) != 1) || (mmc_buffer[3] != 0xaa ) ) {
   0C16 90 3A 54      [24] 3544 	mov	dptr,#(_mmc_buffer + 0x0002)
   0C19 E0            [24] 3545 	movx	a,@dptr
   0C1A FF            [12] 3546 	mov	r7,a
   0C1B 53 07 0F      [24] 3547 	anl	ar7,#0x0F
   0C1E BF 01 0A      [24] 3548 	cjne	r7,#0x01,00107$
   0C21 90 3A 55      [24] 3549 	mov	dptr,#(_mmc_buffer + 0x0003)
   0C24 E0            [24] 3550 	movx	a,@dptr
   0C25 FF            [12] 3551 	mov	r7,a
   0C26 BF AA 02      [24] 3552 	cjne	r7,#0xAA,00204$
   0C29 80 09         [24] 3553 	sjmp	00108$
   0C2B                    3554 00204$:
   0C2B                    3555 00107$:
                           3556 ;	d:\ztex\include\ztex-flash1.h:986: flash_ec = FLASH_EC_NOTSUPPORTED;
   0C2B 90 3A 4E      [24] 3557 	mov	dptr,#_flash_ec
   0C2E 74 07         [12] 3558 	mov	a,#0x07
   0C30 F0            [24] 3559 	movx	@dptr,a
                           3560 ;	d:\ztex\include\ztex-flash1.h:987: goto mmc_init_err;
   0C31 02 0F B0      [24] 3561 	ljmp	00135$
   0C34                    3562 00108$:
                           3563 ;	d:\ztex\include\ztex-flash1.h:989: mmc_version=1;
   0C34 90 3A 51      [24] 3564 	mov	dptr,#_mmc_version
   0C37 74 01         [12] 3565 	mov	a,#0x01
   0C39 F0            [24] 3566 	movx	@dptr,a
   0C3A                    3567 00111$:
                           3568 ;	d:\ztex\include\ztex-flash1.h:993: k=mmc_version ? 64 : 0;
   0C3A 90 3A 51      [24] 3569 	mov	dptr,#_mmc_version
   0C3D E0            [24] 3570 	movx	a,@dptr
   0C3E FF            [12] 3571 	mov	r7,a
   0C3F 60 02         [24] 3572 	jz	00142$
   0C41 74 40         [12] 3573 	mov	a,#0x40
   0C43                    3574 00142$:
   0C43 FF            [12] 3575 	mov	r7,a
                           3576 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0C44 75 82 08      [24] 3577 	mov	dpl,#0x08
   0C47 C0 07         [24] 3578 	push	ar7
   0C49 12 06 6C      [24] 3579 	lcall	_mmc_clocks
                           3580 ;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
   0C4C 90 3A 4F      [24] 3581 	mov	dptr,#_mmc_last_cmd
   0C4F 74 37         [12] 3582 	mov	a,#0x37
   0C51 F0            [24] 3583 	movx	@dptr,a
                           3584 ;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
   0C52 90 3A 52      [24] 3585 	mov	dptr,#_mmc_buffer
   0C55 74 77         [12] 3586 	mov	a,#0x77
   0C57 F0            [24] 3587 	movx	@dptr,a
                           3588 ;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
   0C58 90 3A 53      [24] 3589 	mov	dptr,#(_mmc_buffer + 0x0001)
                           3590 ;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
                           3591 ;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
                           3592 ;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
   0C5B E4            [12] 3593 	clr	a
   0C5C F0            [24] 3594 	movx	@dptr,a
   0C5D 90 3A 54      [24] 3595 	mov	dptr,#(_mmc_buffer + 0x0002)
   0C60 F0            [24] 3596 	movx	@dptr,a
   0C61 90 3A 55      [24] 3597 	mov	dptr,#(_mmc_buffer + 0x0003)
   0C64 F0            [24] 3598 	movx	@dptr,a
   0C65 90 3A 56      [24] 3599 	mov	dptr,#(_mmc_buffer + 0x0004)
   0C68 F0            [24] 3600 	movx	@dptr,a
                           3601 ;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
   0C69 90 3A 57      [24] 3602 	mov	dptr,#(_mmc_buffer + 0x0005)
   0C6C 74 01         [12] 3603 	mov	a,#0x01
   0C6E F0            [24] 3604 	movx	@dptr,a
                           3605 ;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
   0C6F 75 11 06      [24] 3606 	mov	_flash_write_PARM_2,#0x06
   0C72 90 3A 52      [24] 3607 	mov	dptr,#_mmc_buffer
   0C75 12 07 30      [24] 3608 	lcall	_flash_write
                           3609 ;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
   0C78 12 07 E5      [24] 3610 	lcall	_mmc_read_response
   0C7B D0 07         [24] 3611 	pop	ar7
                           3612 ;	d:\ztex\include\ztex-flash1.h:995: if ( (mmc_response & 0xfe) == 0 )
   0C7D 90 3A 50      [24] 3613 	mov	dptr,#_mmc_response
   0C80 E0            [24] 3614 	movx	a,@dptr
   0C81 FE            [12] 3615 	mov	r6,a
   0C82 54 FE         [12] 3616 	anl	a,#0xFE
   0C84 70 3E         [24] 3617 	jnz	00113$
                           3618 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0C86 75 82 08      [24] 3619 	mov	dpl,#0x08
   0C89 C0 07         [24] 3620 	push	ar7
   0C8B 12 06 6C      [24] 3621 	lcall	_mmc_clocks
   0C8E D0 07         [24] 3622 	pop	ar7
                           3623 ;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
   0C90 90 3A 4F      [24] 3624 	mov	dptr,#_mmc_last_cmd
   0C93 74 29         [12] 3625 	mov	a,#0x29
   0C95 F0            [24] 3626 	movx	@dptr,a
                           3627 ;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
   0C96 90 3A 52      [24] 3628 	mov	dptr,#_mmc_buffer
   0C99 74 69         [12] 3629 	mov	a,#0x69
   0C9B F0            [24] 3630 	movx	@dptr,a
                           3631 ;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
   0C9C 90 3A 53      [24] 3632 	mov	dptr,#(_mmc_buffer + 0x0001)
   0C9F EF            [12] 3633 	mov	a,r7
   0CA0 F0            [24] 3634 	movx	@dptr,a
                           3635 ;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
   0CA1 90 3A 54      [24] 3636 	mov	dptr,#(_mmc_buffer + 0x0002)
                           3637 ;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
                           3638 ;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
   0CA4 E4            [12] 3639 	clr	a
   0CA5 F0            [24] 3640 	movx	@dptr,a
   0CA6 90 3A 55      [24] 3641 	mov	dptr,#(_mmc_buffer + 0x0003)
   0CA9 F0            [24] 3642 	movx	@dptr,a
   0CAA 90 3A 56      [24] 3643 	mov	dptr,#(_mmc_buffer + 0x0004)
   0CAD F0            [24] 3644 	movx	@dptr,a
                           3645 ;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
   0CAE 90 3A 57      [24] 3646 	mov	dptr,#(_mmc_buffer + 0x0005)
   0CB1 74 01         [12] 3647 	mov	a,#0x01
   0CB3 F0            [24] 3648 	movx	@dptr,a
                           3649 ;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
   0CB4 75 11 06      [24] 3650 	mov	_flash_write_PARM_2,#0x06
   0CB7 90 3A 52      [24] 3651 	mov	dptr,#_mmc_buffer
   0CBA C0 07         [24] 3652 	push	ar7
   0CBC 12 07 30      [24] 3653 	lcall	_flash_write
                           3654 ;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
   0CBF 12 07 E5      [24] 3655 	lcall	_mmc_read_response
   0CC2 D0 07         [24] 3656 	pop	ar7
   0CC4                    3657 00113$:
                           3658 ;	d:\ztex\include\ztex-flash1.h:997: j = mmc_response & 0xfe;
   0CC4 90 3A 50      [24] 3659 	mov	dptr,#_mmc_response
   0CC7 E0            [24] 3660 	movx	a,@dptr
   0CC8 FE            [12] 3661 	mov	r6,a
   0CC9 53 06 FE      [24] 3662 	anl	ar6,#0xFE
                           3663 ;	d:\ztex\include\ztex-flash1.h:31: #endif
   0CCC 7D 00         [12] 3664 	mov	r5,#0x00
   0CCE                    3665 00138$:
   0CCE 90 3A 50      [24] 3666 	mov	dptr,#_mmc_response
   0CD1 E0            [24] 3667 	movx	a,@dptr
   0CD2 FC            [12] 3668 	mov	r4,a
   0CD3 BC 00 03      [24] 3669 	cjne	r4,#0x00,00208$
   0CD6 02 0D CE      [24] 3670 	ljmp	00117$
   0CD9                    3671 00208$:
   0CD9 BD FF 00      [24] 3672 	cjne	r5,#0xFF,00209$
   0CDC                    3673 00209$:
   0CDC 40 03         [24] 3674 	jc	00210$
   0CDE 02 0D CE      [24] 3675 	ljmp	00117$
   0CE1                    3676 00210$:
                           3677 ;	d:\ztex\include\ztex-flash1.h:1000: wait(4);
   0CE1 90 00 04      [24] 3678 	mov	dptr,#0x0004
   0CE4 C0 07         [24] 3679 	push	ar7
   0CE6 C0 06         [24] 3680 	push	ar6
   0CE8 C0 05         [24] 3681 	push	ar5
   0CEA 12 02 63      [24] 3682 	lcall	_wait
   0CED D0 05         [24] 3683 	pop	ar5
   0CEF D0 06         [24] 3684 	pop	ar6
   0CF1 D0 07         [24] 3685 	pop	ar7
                           3686 ;	d:\ztex\include\ztex-flash1.h:1001: if ( j ) {
   0CF3 EE            [12] 3687 	mov	a,r6
   0CF4 60 51         [24] 3688 	jz	00115$
                           3689 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0CF6 75 82 08      [24] 3690 	mov	dpl,#0x08
   0CF9 C0 07         [24] 3691 	push	ar7
   0CFB C0 06         [24] 3692 	push	ar6
   0CFD C0 05         [24] 3693 	push	ar5
   0CFF 12 06 6C      [24] 3694 	lcall	_mmc_clocks
   0D02 D0 05         [24] 3695 	pop	ar5
   0D04 D0 06         [24] 3696 	pop	ar6
   0D06 D0 07         [24] 3697 	pop	ar7
                           3698 ;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
   0D08 90 3A 4F      [24] 3699 	mov	dptr,#_mmc_last_cmd
   0D0B 74 01         [12] 3700 	mov	a,#0x01
   0D0D F0            [24] 3701 	movx	@dptr,a
                           3702 ;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
   0D0E 90 3A 52      [24] 3703 	mov	dptr,#_mmc_buffer
   0D11 74 41         [12] 3704 	mov	a,#0x41
   0D13 F0            [24] 3705 	movx	@dptr,a
                           3706 ;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
   0D14 90 3A 53      [24] 3707 	mov	dptr,#(_mmc_buffer + 0x0001)
   0D17 EF            [12] 3708 	mov	a,r7
   0D18 F0            [24] 3709 	movx	@dptr,a
                           3710 ;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
   0D19 90 3A 54      [24] 3711 	mov	dptr,#(_mmc_buffer + 0x0002)
                           3712 ;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
                           3713 ;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
   0D1C E4            [12] 3714 	clr	a
   0D1D F0            [24] 3715 	movx	@dptr,a
   0D1E 90 3A 55      [24] 3716 	mov	dptr,#(_mmc_buffer + 0x0003)
   0D21 F0            [24] 3717 	movx	@dptr,a
   0D22 90 3A 56      [24] 3718 	mov	dptr,#(_mmc_buffer + 0x0004)
   0D25 F0            [24] 3719 	movx	@dptr,a
                           3720 ;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
   0D26 90 3A 57      [24] 3721 	mov	dptr,#(_mmc_buffer + 0x0005)
   0D29 74 FF         [12] 3722 	mov	a,#0xFF
   0D2B F0            [24] 3723 	movx	@dptr,a
                           3724 ;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
   0D2C 75 11 06      [24] 3725 	mov	_flash_write_PARM_2,#0x06
   0D2F 90 3A 52      [24] 3726 	mov	dptr,#_mmc_buffer
   0D32 C0 07         [24] 3727 	push	ar7
   0D34 C0 06         [24] 3728 	push	ar6
   0D36 C0 05         [24] 3729 	push	ar5
   0D38 12 07 30      [24] 3730 	lcall	_flash_write
                           3731 ;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
   0D3B 12 07 E5      [24] 3732 	lcall	_mmc_read_response
   0D3E D0 05         [24] 3733 	pop	ar5
   0D40 D0 06         [24] 3734 	pop	ar6
   0D42 D0 07         [24] 3735 	pop	ar7
   0D44 02 0D CA      [24] 3736 	ljmp	00139$
   0D47                    3737 00115$:
                           3738 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0D47 75 82 08      [24] 3739 	mov	dpl,#0x08
   0D4A C0 07         [24] 3740 	push	ar7
   0D4C C0 06         [24] 3741 	push	ar6
   0D4E C0 05         [24] 3742 	push	ar5
   0D50 12 06 6C      [24] 3743 	lcall	_mmc_clocks
                           3744 ;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
   0D53 90 3A 4F      [24] 3745 	mov	dptr,#_mmc_last_cmd
   0D56 74 37         [12] 3746 	mov	a,#0x37
   0D58 F0            [24] 3747 	movx	@dptr,a
                           3748 ;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
   0D59 90 3A 52      [24] 3749 	mov	dptr,#_mmc_buffer
   0D5C 74 77         [12] 3750 	mov	a,#0x77
   0D5E F0            [24] 3751 	movx	@dptr,a
                           3752 ;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
   0D5F 90 3A 53      [24] 3753 	mov	dptr,#(_mmc_buffer + 0x0001)
                           3754 ;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
                           3755 ;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
                           3756 ;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
   0D62 E4            [12] 3757 	clr	a
   0D63 F0            [24] 3758 	movx	@dptr,a
   0D64 90 3A 54      [24] 3759 	mov	dptr,#(_mmc_buffer + 0x0002)
   0D67 F0            [24] 3760 	movx	@dptr,a
   0D68 90 3A 55      [24] 3761 	mov	dptr,#(_mmc_buffer + 0x0003)
   0D6B F0            [24] 3762 	movx	@dptr,a
   0D6C 90 3A 56      [24] 3763 	mov	dptr,#(_mmc_buffer + 0x0004)
   0D6F F0            [24] 3764 	movx	@dptr,a
                           3765 ;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
   0D70 90 3A 57      [24] 3766 	mov	dptr,#(_mmc_buffer + 0x0005)
   0D73 74 01         [12] 3767 	mov	a,#0x01
   0D75 F0            [24] 3768 	movx	@dptr,a
                           3769 ;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
   0D76 75 11 06      [24] 3770 	mov	_flash_write_PARM_2,#0x06
   0D79 90 3A 52      [24] 3771 	mov	dptr,#_mmc_buffer
   0D7C 12 07 30      [24] 3772 	lcall	_flash_write
                           3773 ;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
   0D7F 12 07 E5      [24] 3774 	lcall	_mmc_read_response
                           3775 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0D82 75 82 08      [24] 3776 	mov	dpl,#0x08
   0D85 12 06 6C      [24] 3777 	lcall	_mmc_clocks
   0D88 D0 05         [24] 3778 	pop	ar5
   0D8A D0 06         [24] 3779 	pop	ar6
   0D8C D0 07         [24] 3780 	pop	ar7
                           3781 ;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
   0D8E 90 3A 4F      [24] 3782 	mov	dptr,#_mmc_last_cmd
   0D91 74 29         [12] 3783 	mov	a,#0x29
   0D93 F0            [24] 3784 	movx	@dptr,a
                           3785 ;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
   0D94 90 3A 52      [24] 3786 	mov	dptr,#_mmc_buffer
   0D97 74 69         [12] 3787 	mov	a,#0x69
   0D99 F0            [24] 3788 	movx	@dptr,a
                           3789 ;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
   0D9A 90 3A 53      [24] 3790 	mov	dptr,#(_mmc_buffer + 0x0001)
   0D9D EF            [12] 3791 	mov	a,r7
   0D9E F0            [24] 3792 	movx	@dptr,a
                           3793 ;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
   0D9F 90 3A 54      [24] 3794 	mov	dptr,#(_mmc_buffer + 0x0002)
                           3795 ;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
                           3796 ;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
   0DA2 E4            [12] 3797 	clr	a
   0DA3 F0            [24] 3798 	movx	@dptr,a
   0DA4 90 3A 55      [24] 3799 	mov	dptr,#(_mmc_buffer + 0x0003)
   0DA7 F0            [24] 3800 	movx	@dptr,a
   0DA8 90 3A 56      [24] 3801 	mov	dptr,#(_mmc_buffer + 0x0004)
   0DAB F0            [24] 3802 	movx	@dptr,a
                           3803 ;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
   0DAC 90 3A 57      [24] 3804 	mov	dptr,#(_mmc_buffer + 0x0005)
   0DAF 74 01         [12] 3805 	mov	a,#0x01
   0DB1 F0            [24] 3806 	movx	@dptr,a
                           3807 ;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
   0DB2 75 11 06      [24] 3808 	mov	_flash_write_PARM_2,#0x06
   0DB5 90 3A 52      [24] 3809 	mov	dptr,#_mmc_buffer
   0DB8 C0 07         [24] 3810 	push	ar7
   0DBA C0 06         [24] 3811 	push	ar6
   0DBC C0 05         [24] 3812 	push	ar5
   0DBE 12 07 30      [24] 3813 	lcall	_flash_write
                           3814 ;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
   0DC1 12 07 E5      [24] 3815 	lcall	_mmc_read_response
   0DC4 D0 05         [24] 3816 	pop	ar5
   0DC6 D0 06         [24] 3817 	pop	ar6
   0DC8 D0 07         [24] 3818 	pop	ar7
   0DCA                    3819 00139$:
                           3820 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0DCA 0D            [12] 3821 	inc	r5
   0DCB 02 0C CE      [24] 3822 	ljmp	00138$
   0DCE                    3823 00117$:
   0DCE 90 3A 50      [24] 3824 	mov	dptr,#_mmc_response
   0DD1 E0            [24] 3825 	movx	a,@dptr
   0DD2 FF            [12] 3826 	mov	r7,a
   0DD3 60 03         [24] 3827 	jz	00212$
   0DD5 02 0F AA      [24] 3828 	ljmp	00134$
   0DD8                    3829 00212$:
                           3830 ;	d:\ztex\include\ztex-flash1.h:1013: if ( mmc_version ) {
   0DD8 90 3A 51      [24] 3831 	mov	dptr,#_mmc_version
   0DDB E0            [24] 3832 	movx	a,@dptr
   0DDC FF            [12] 3833 	mov	r7,a
   0DDD 60 55         [24] 3834 	jz	00125$
                           3835 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0DDF 75 82 08      [24] 3836 	mov	dpl,#0x08
   0DE2 12 06 6C      [24] 3837 	lcall	_mmc_clocks
                           3838 ;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
   0DE5 90 3A 4F      [24] 3839 	mov	dptr,#_mmc_last_cmd
   0DE8 74 3A         [12] 3840 	mov	a,#0x3A
   0DEA F0            [24] 3841 	movx	@dptr,a
                           3842 ;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
   0DEB 90 3A 52      [24] 3843 	mov	dptr,#_mmc_buffer
   0DEE 74 7A         [12] 3844 	mov	a,#0x7A
   0DF0 F0            [24] 3845 	movx	@dptr,a
                           3846 ;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
   0DF1 90 3A 53      [24] 3847 	mov	dptr,#(_mmc_buffer + 0x0001)
                           3848 ;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
                           3849 ;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
                           3850 ;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
   0DF4 E4            [12] 3851 	clr	a
   0DF5 F0            [24] 3852 	movx	@dptr,a
   0DF6 90 3A 54      [24] 3853 	mov	dptr,#(_mmc_buffer + 0x0002)
   0DF9 F0            [24] 3854 	movx	@dptr,a
   0DFA 90 3A 55      [24] 3855 	mov	dptr,#(_mmc_buffer + 0x0003)
   0DFD F0            [24] 3856 	movx	@dptr,a
   0DFE 90 3A 56      [24] 3857 	mov	dptr,#(_mmc_buffer + 0x0004)
   0E01 F0            [24] 3858 	movx	@dptr,a
                           3859 ;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
   0E02 90 3A 57      [24] 3860 	mov	dptr,#(_mmc_buffer + 0x0005)
   0E05 74 01         [12] 3861 	mov	a,#0x01
   0E07 F0            [24] 3862 	movx	@dptr,a
                           3863 ;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
   0E08 75 11 06      [24] 3864 	mov	_flash_write_PARM_2,#0x06
   0E0B 90 3A 52      [24] 3865 	mov	dptr,#_mmc_buffer
   0E0E 12 07 30      [24] 3866 	lcall	_flash_write
                           3867 ;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
   0E11 12 07 E5      [24] 3868 	lcall	_mmc_read_response
                           3869 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0E14 90 3A 50      [24] 3870 	mov	dptr,#_mmc_response
   0E17 E0            [24] 3871 	movx	a,@dptr
   0E18 FF            [12] 3872 	mov	r7,a
   0E19 60 03         [24] 3873 	jz	00214$
   0E1B 02 0F AA      [24] 3874 	ljmp	00134$
   0E1E                    3875 00214$:
                           3876 ;	d:\ztex\include\ztex-flash1.h:1017: flash_read(mmc_buffer,4);
   0E1E 75 11 04      [24] 3877 	mov	_flash_read_PARM_2,#0x04
   0E21 90 3A 52      [24] 3878 	mov	dptr,#_mmc_buffer
   0E24 12 06 B5      [24] 3879 	lcall	_flash_read
                           3880 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0E27 90 3A 52      [24] 3881 	mov	dptr,#_mmc_buffer
   0E2A E0            [24] 3882 	movx	a,@dptr
   0E2B FF            [12] 3883 	mov	r7,a
   0E2C 20 E6 05      [24] 3884 	jb	acc.6,00125$
                           3885 ;	d:\ztex\include\ztex-flash1.h:1019: mmc_version = 0;
   0E2F 90 3A 51      [24] 3886 	mov	dptr,#_mmc_version
   0E32 E4            [12] 3887 	clr	a
   0E33 F0            [24] 3888 	movx	@dptr,a
   0E34                    3889 00125$:
                           3890 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0E34 75 82 08      [24] 3891 	mov	dpl,#0x08
   0E37 12 06 6C      [24] 3892 	lcall	_mmc_clocks
                           3893 ;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
   0E3A 90 3A 4F      [24] 3894 	mov	dptr,#_mmc_last_cmd
   0E3D 74 09         [12] 3895 	mov	a,#0x09
   0E3F F0            [24] 3896 	movx	@dptr,a
                           3897 ;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
   0E40 90 3A 52      [24] 3898 	mov	dptr,#_mmc_buffer
   0E43 74 49         [12] 3899 	mov	a,#0x49
   0E45 F0            [24] 3900 	movx	@dptr,a
                           3901 ;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
   0E46 90 3A 53      [24] 3902 	mov	dptr,#(_mmc_buffer + 0x0001)
                           3903 ;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
                           3904 ;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
                           3905 ;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
   0E49 E4            [12] 3906 	clr	a
   0E4A F0            [24] 3907 	movx	@dptr,a
   0E4B 90 3A 54      [24] 3908 	mov	dptr,#(_mmc_buffer + 0x0002)
   0E4E F0            [24] 3909 	movx	@dptr,a
   0E4F 90 3A 55      [24] 3910 	mov	dptr,#(_mmc_buffer + 0x0003)
   0E52 F0            [24] 3911 	movx	@dptr,a
   0E53 90 3A 56      [24] 3912 	mov	dptr,#(_mmc_buffer + 0x0004)
   0E56 F0            [24] 3913 	movx	@dptr,a
                           3914 ;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
   0E57 90 3A 57      [24] 3915 	mov	dptr,#(_mmc_buffer + 0x0005)
   0E5A 74 01         [12] 3916 	mov	a,#0x01
   0E5C F0            [24] 3917 	movx	@dptr,a
                           3918 ;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
   0E5D 75 11 06      [24] 3919 	mov	_flash_write_PARM_2,#0x06
   0E60 90 3A 52      [24] 3920 	mov	dptr,#_mmc_buffer
   0E63 12 07 30      [24] 3921 	lcall	_flash_write
                           3922 ;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
   0E66 12 07 E5      [24] 3923 	lcall	_mmc_read_response
                           3924 ;	d:\ztex\include\ztex-flash1.h:1023: if ( mmc_wait_start() ) {
   0E69 12 07 FF      [24] 3925 	lcall	_mmc_wait_start
   0E6C E5 82         [12] 3926 	mov	a,dpl
   0E6E 60 09         [24] 3927 	jz	00127$
                           3928 ;	d:\ztex\include\ztex-flash1.h:1024: flash_ec = FLASH_EC_TIMEOUT;
   0E70 90 3A 4E      [24] 3929 	mov	dptr,#_flash_ec
   0E73 74 02         [12] 3930 	mov	a,#0x02
   0E75 F0            [24] 3931 	movx	@dptr,a
                           3932 ;	d:\ztex\include\ztex-flash1.h:1025: goto mmc_init_err;
   0E76 02 0F B0      [24] 3933 	ljmp	00135$
   0E79                    3934 00127$:
                           3935 ;	d:\ztex\include\ztex-flash1.h:1027: flash_read(mmc_buffer,16);
   0E79 75 11 10      [24] 3936 	mov	_flash_read_PARM_2,#0x10
   0E7C 90 3A 52      [24] 3937 	mov	dptr,#_mmc_buffer
   0E7F 12 06 B5      [24] 3938 	lcall	_flash_read
                           3939 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0E82 75 82 10      [24] 3940 	mov	dpl,#0x10
   0E85 12 06 6C      [24] 3941 	lcall	_mmc_clocks
                           3942 ;	d:\ztex\include\ztex-flash1.h:1030: mmc_buffer[0] &= 192;
                           3943 ;	d:\ztex\include\ztex-flash1.h:1031: if ( (mmc_buffer[0] & 192) == 0  ) {
   0E88 90 3A 52      [24] 3944 	mov	dptr,#_mmc_buffer
   0E8B E0            [24] 3945 	movx	a,@dptr
   0E8C 54 C0         [12] 3946 	anl	a,#0xC0
   0E8E FF            [12] 3947 	mov	r7,a
   0E8F F0            [24] 3948 	movx	@dptr,a
   0E90 E0            [24] 3949 	movx	a,@dptr
   0E91 FE            [12] 3950 	mov	r6,a
   0E92 EF            [12] 3951 	mov	a,r7
   0E93 54 C0         [12] 3952 	anl	a,#0xC0
   0E95 60 03         [24] 3953 	jz	00218$
   0E97 02 0F 1C      [24] 3954 	ljmp	00132$
   0E9A                    3955 00218$:
                           3956 ;	d:\ztex\include\ztex-flash1.h:1032: i = (mmc_buffer[5] & 15) + ((mmc_buffer[10] >> 7) | ((mmc_buffer[9] & 3) << 1)) - 7;
   0E9A 90 3A 57      [24] 3957 	mov	dptr,#(_mmc_buffer + 0x0005)
   0E9D E0            [24] 3958 	movx	a,@dptr
   0E9E FF            [12] 3959 	mov	r7,a
   0E9F 53 07 0F      [24] 3960 	anl	ar7,#0x0F
   0EA2 90 3A 5C      [24] 3961 	mov	dptr,#(_mmc_buffer + 0x000a)
   0EA5 E0            [24] 3962 	movx	a,@dptr
   0EA6 23            [12] 3963 	rl	a
   0EA7 54 01         [12] 3964 	anl	a,#0x01
   0EA9 FD            [12] 3965 	mov	r5,a
   0EAA 90 3A 5B      [24] 3966 	mov	dptr,#(_mmc_buffer + 0x0009)
   0EAD E0            [24] 3967 	movx	a,@dptr
   0EAE 54 03         [12] 3968 	anl	a,#0x03
   0EB0 25 E0         [12] 3969 	add	a,acc
   0EB2 4D            [12] 3970 	orl	a,r5
   0EB3 2F            [12] 3971 	add	a,r7
   0EB4 24 F9         [12] 3972 	add	a,#0xF9
   0EB6 FF            [12] 3973 	mov	r7,a
                           3974 ;	d:\ztex\include\ztex-flash1.h:1033: flash_sectors = ((mmc_buffer[8] >> 6) | (mmc_buffer[7] << 2) | ((mmc_buffer[6] & 3) << 10)) + 1;
   0EB7 90 3A 5A      [24] 3975 	mov	dptr,#(_mmc_buffer + 0x0008)
   0EBA E0            [24] 3976 	movx	a,@dptr
   0EBB 23            [12] 3977 	rl	a
   0EBC 23            [12] 3978 	rl	a
   0EBD 54 03         [12] 3979 	anl	a,#0x03
   0EBF FD            [12] 3980 	mov	r5,a
   0EC0 90 3A 59      [24] 3981 	mov	dptr,#(_mmc_buffer + 0x0007)
   0EC3 E0            [24] 3982 	movx	a,@dptr
   0EC4 FC            [12] 3983 	mov	r4,a
   0EC5 E4            [12] 3984 	clr	a
   0EC6 CC            [12] 3985 	xch	a,r4
   0EC7 25 E0         [12] 3986 	add	a,acc
   0EC9 CC            [12] 3987 	xch	a,r4
   0ECA 33            [12] 3988 	rlc	a
   0ECB CC            [12] 3989 	xch	a,r4
   0ECC 25 E0         [12] 3990 	add	a,acc
   0ECE CC            [12] 3991 	xch	a,r4
   0ECF 33            [12] 3992 	rlc	a
   0ED0 FB            [12] 3993 	mov	r3,a
   0ED1 7A 00         [12] 3994 	mov	r2,#0x00
   0ED3 ED            [12] 3995 	mov	a,r5
   0ED4 42 04         [12] 3996 	orl	ar4,a
   0ED6 EA            [12] 3997 	mov	a,r2
   0ED7 42 03         [12] 3998 	orl	ar3,a
   0ED9 90 3A 58      [24] 3999 	mov	dptr,#(_mmc_buffer + 0x0006)
   0EDC E0            [24] 4000 	movx	a,@dptr
   0EDD 54 03         [12] 4001 	anl	a,#0x03
   0EDF FD            [12] 4002 	mov	r5,a
   0EE0 2D            [12] 4003 	add	a,r5
   0EE1 25 E0         [12] 4004 	add	a,acc
   0EE3 FA            [12] 4005 	mov	r2,a
   0EE4 E4            [12] 4006 	clr	a
   0EE5 FD            [12] 4007 	mov	r5,a
   0EE6 42 04         [12] 4008 	orl	ar4,a
   0EE8 EA            [12] 4009 	mov	a,r2
   0EE9 42 03         [12] 4010 	orl	ar3,a
   0EEB 0C            [12] 4011 	inc	r4
   0EEC BC 00 01      [24] 4012 	cjne	r4,#0x00,00219$
   0EEF 0B            [12] 4013 	inc	r3
   0EF0                    4014 00219$:
   0EF0 EB            [12] 4015 	mov	a,r3
   0EF1 33            [12] 4016 	rlc	a
   0EF2 95 E0         [12] 4017 	subb	a,acc
   0EF4 FD            [12] 4018 	mov	r5,a
   0EF5 FA            [12] 4019 	mov	r2,a
                           4020 ;	d:\ztex\include\ztex-flash1.h:1034: flash_sectors = flash_sectors << i;
   0EF6 8F F0         [24] 4021 	mov	b,r7
   0EF8 05 F0         [12] 4022 	inc	b
   0EFA 80 0C         [24] 4023 	sjmp	00221$
   0EFC                    4024 00220$:
   0EFC EC            [12] 4025 	mov	a,r4
   0EFD 2C            [12] 4026 	add	a,r4
   0EFE FC            [12] 4027 	mov	r4,a
   0EFF EB            [12] 4028 	mov	a,r3
   0F00 33            [12] 4029 	rlc	a
   0F01 FB            [12] 4030 	mov	r3,a
   0F02 ED            [12] 4031 	mov	a,r5
   0F03 33            [12] 4032 	rlc	a
   0F04 FD            [12] 4033 	mov	r5,a
   0F05 EA            [12] 4034 	mov	a,r2
   0F06 33            [12] 4035 	rlc	a
   0F07 FA            [12] 4036 	mov	r2,a
   0F08                    4037 00221$:
   0F08 D5 F0 F1      [24] 4038 	djnz	b,00220$
   0F0B 90 3A 4A      [24] 4039 	mov	dptr,#_flash_sectors
   0F0E EC            [12] 4040 	mov	a,r4
   0F0F F0            [24] 4041 	movx	@dptr,a
   0F10 EB            [12] 4042 	mov	a,r3
   0F11 A3            [24] 4043 	inc	dptr
   0F12 F0            [24] 4044 	movx	@dptr,a
   0F13 ED            [12] 4045 	mov	a,r5
   0F14 A3            [24] 4046 	inc	dptr
   0F15 F0            [24] 4047 	movx	@dptr,a
   0F16 EA            [12] 4048 	mov	a,r2
   0F17 A3            [24] 4049 	inc	dptr
   0F18 F0            [24] 4050 	movx	@dptr,a
   0F19 02 0F A2      [24] 4051 	ljmp	00133$
   0F1C                    4052 00132$:
                           4053 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0F1C 53 06 C0      [24] 4054 	anl	ar6,#0xC0
   0F1F BE 40 78      [24] 4055 	cjne	r6,#0x40,00129$
                           4056 ;	d:\ztex\include\ztex-flash1.h:1037: flash_sectors = ( ( ((DWORD)(mmc_buffer[7] & 63) << 16) | (mmc_buffer[8] << 8) | mmc_buffer[9]  ) +1 ) << 10;
   0F22 90 3A 59      [24] 4057 	mov	dptr,#(_mmc_buffer + 0x0007)
   0F25 E0            [24] 4058 	movx	a,@dptr
   0F26 FF            [12] 4059 	mov	r7,a
   0F27 53 07 3F      [24] 4060 	anl	ar7,#0x3F
   0F2A 7E 00         [12] 4061 	mov	r6,#0x00
   0F2C 8E 04         [24] 4062 	mov	ar4,r6
   0F2E 8F 05         [24] 4063 	mov	ar5,r7
   0F30 7E 00         [12] 4064 	mov	r6,#0x00
   0F32 7F 00         [12] 4065 	mov	r7,#0x00
   0F34 90 3A 5A      [24] 4066 	mov	dptr,#(_mmc_buffer + 0x0008)
   0F37 E0            [24] 4067 	movx	a,@dptr
   0F38 FA            [12] 4068 	mov	r2,a
   0F39 7B 00         [12] 4069 	mov	r3,#0x00
   0F3B 8B 00         [24] 4070 	mov	ar0,r3
   0F3D EA            [12] 4071 	mov	a,r2
   0F3E F9            [12] 4072 	mov	r1,a
   0F3F 33            [12] 4073 	rlc	a
   0F40 95 E0         [12] 4074 	subb	a,acc
   0F42 FA            [12] 4075 	mov	r2,a
   0F43 FB            [12] 4076 	mov	r3,a
   0F44 E8            [12] 4077 	mov	a,r0
   0F45 42 07         [12] 4078 	orl	ar7,a
   0F47 E9            [12] 4079 	mov	a,r1
   0F48 42 06         [12] 4080 	orl	ar6,a
   0F4A EA            [12] 4081 	mov	a,r2
   0F4B 42 05         [12] 4082 	orl	ar5,a
   0F4D EB            [12] 4083 	mov	a,r3
   0F4E 42 04         [12] 4084 	orl	ar4,a
   0F50 90 3A 5B      [24] 4085 	mov	dptr,#(_mmc_buffer + 0x0009)
   0F53 E0            [24] 4086 	movx	a,@dptr
   0F54 F8            [12] 4087 	mov	r0,a
   0F55 E4            [12] 4088 	clr	a
   0F56 F9            [12] 4089 	mov	r1,a
   0F57 FA            [12] 4090 	mov	r2,a
   0F58 FB            [12] 4091 	mov	r3,a
   0F59 E8            [12] 4092 	mov	a,r0
   0F5A 42 07         [12] 4093 	orl	ar7,a
   0F5C E9            [12] 4094 	mov	a,r1
   0F5D 42 06         [12] 4095 	orl	ar6,a
   0F5F EA            [12] 4096 	mov	a,r2
   0F60 42 05         [12] 4097 	orl	ar5,a
   0F62 EB            [12] 4098 	mov	a,r3
   0F63 42 04         [12] 4099 	orl	ar4,a
   0F65 0F            [12] 4100 	inc	r7
   0F66 BF 00 09      [24] 4101 	cjne	r7,#0x00,00224$
   0F69 0E            [12] 4102 	inc	r6
   0F6A BE 00 05      [24] 4103 	cjne	r6,#0x00,00224$
   0F6D 0D            [12] 4104 	inc	r5
   0F6E BD 00 01      [24] 4105 	cjne	r5,#0x00,00224$
   0F71 0C            [12] 4106 	inc	r4
   0F72                    4107 00224$:
   0F72 EE            [12] 4108 	mov	a,r6
   0F73 2E            [12] 4109 	add	a,r6
   0F74 CD            [12] 4110 	xch	a,r5
   0F75 33            [12] 4111 	rlc	a
   0F76 CD            [12] 4112 	xch	a,r5
   0F77 25 E0         [12] 4113 	add	a,acc
   0F79 CD            [12] 4114 	xch	a,r5
   0F7A 33            [12] 4115 	rlc	a
   0F7B FC            [12] 4116 	mov	r4,a
   0F7C EF            [12] 4117 	mov	a,r7
   0F7D 2F            [12] 4118 	add	a,r7
   0F7E 25 E0         [12] 4119 	add	a,acc
   0F80 FE            [12] 4120 	mov	r6,a
   0F81 EF            [12] 4121 	mov	a,r7
   0F82 23            [12] 4122 	rl	a
   0F83 23            [12] 4123 	rl	a
   0F84 54 03         [12] 4124 	anl	a,#0x03
   0F86 4D            [12] 4125 	orl	a,r5
   0F87 FD            [12] 4126 	mov	r5,a
   0F88 7F 00         [12] 4127 	mov	r7,#0x00
   0F8A 90 3A 4A      [24] 4128 	mov	dptr,#_flash_sectors
   0F8D EF            [12] 4129 	mov	a,r7
   0F8E F0            [24] 4130 	movx	@dptr,a
   0F8F EE            [12] 4131 	mov	a,r6
   0F90 A3            [24] 4132 	inc	dptr
   0F91 F0            [24] 4133 	movx	@dptr,a
   0F92 ED            [12] 4134 	mov	a,r5
   0F93 A3            [24] 4135 	inc	dptr
   0F94 F0            [24] 4136 	movx	@dptr,a
   0F95 EC            [12] 4137 	mov	a,r4
   0F96 A3            [24] 4138 	inc	dptr
   0F97 F0            [24] 4139 	movx	@dptr,a
   0F98 80 08         [24] 4140 	sjmp	00133$
   0F9A                    4141 00129$:
                           4142 ;	d:\ztex\include\ztex-flash1.h:1040: flash_ec = FLASH_EC_NOTSUPPORTED;
   0F9A 90 3A 4E      [24] 4143 	mov	dptr,#_flash_ec
   0F9D 74 07         [12] 4144 	mov	a,#0x07
   0F9F F0            [24] 4145 	movx	@dptr,a
                           4146 ;	d:\ztex\include\ztex-flash1.h:1041: goto mmc_init_err;
   0FA0 80 0E         [24] 4147 	sjmp	00135$
   0FA2                    4148 00133$:
                           4149 ;	d:\ztex\include\ztex-flash1.h:1044: flash_ec = 0;
   0FA2 90 3A 4E      [24] 4150 	mov	dptr,#_flash_ec
   0FA5 E4            [12] 4151 	clr	a
   0FA6 F0            [24] 4152 	movx	@dptr,a
                           4153 ;	d:\ztex\include\ztex-flash1.h:1045: mmc_deselect();
                           4154 ;	d:\ztex\include\ztex-flash1.h:1047: return;
                           4155 ;	d:\ztex\include\ztex-flash1.h:1049: mmc_init_cmd_err:
   0FA7 02 07 D3      [24] 4156 	ljmp	_mmc_deselect
   0FAA                    4157 00134$:
                           4158 ;	d:\ztex\include\ztex-flash1.h:1050: flash_ec = FLASH_EC_CMD_ERROR;
   0FAA 90 3A 4E      [24] 4159 	mov	dptr,#_flash_ec
   0FAD 74 01         [12] 4160 	mov	a,#0x01
   0FAF F0            [24] 4161 	movx	@dptr,a
                           4162 ;	d:\ztex\include\ztex-flash1.h:1051: mmc_init_err:
   0FB0                    4163 00135$:
                           4164 ;	d:\ztex\include\ztex-flash1.h:1052: flash_enabled = 0;
   0FB0 90 3A 47      [24] 4165 	mov	dptr,#_flash_enabled
   0FB3 E4            [12] 4166 	clr	a
   0FB4 F0            [24] 4167 	movx	@dptr,a
                           4168 ;	d:\ztex\include\ztex-flash1.h:1053: mmc_deselect();
   0FB5 02 07 D3      [24] 4169 	ljmp	_mmc_deselect
                           4170 ;------------------------------------------------------------
                           4171 ;Allocation info for local variables in function 'mmc_read_ep0'
                           4172 ;------------------------------------------------------------
                           4173 ;	d:\ztex\include\ztex-flash1.h:1071: void mmc_read_ep0 () { 
                           4174 ;	-----------------------------------------
                           4175 ;	 function mmc_read_ep0
                           4176 ;	-----------------------------------------
   0FB8                    4177 _mmc_read_ep0:
                           4178 ;	d:\ztex\include\ztex-flash1.h:1072: if ( mmc_ep0_wait ) {
   0FB8 90 3A 62      [24] 4179 	mov	dptr,#_mmc_ep0_wait
   0FBB E0            [24] 4180 	movx	a,@dptr
   0FBC FF            [12] 4181 	mov	r7,a
   0FBD 60 50         [24] 4182 	jz	00104$
                           4183 ;	d:\ztex\include\ztex-flash1.h:1073: mmc_ep0_wait = 0;
   0FBF 90 3A 62      [24] 4184 	mov	dptr,#_mmc_ep0_wait
   0FC2 E4            [12] 4185 	clr	a
   0FC3 F0            [24] 4186 	movx	@dptr,a
                           4187 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0FC4 12 07 FF      [24] 4188 	lcall	_mmc_wait_start
   0FC7 E5 82         [12] 4189 	mov	a,dpl
   0FC9 60 44         [24] 4190 	jz	00104$
                           4191 ;	d:\ztex\include\ztex-flash1.h:1075: flash_ec = FLASH_EC_TIMEOUT;
   0FCB 90 3A 4E      [24] 4192 	mov	dptr,#_flash_ec
   0FCE 74 02         [12] 4193 	mov	a,#0x02
   0FD0 F0            [24] 4194 	movx	@dptr,a
                           4195 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   0FD1 75 82 08      [24] 4196 	mov	dpl,#0x08
   0FD4 12 06 6C      [24] 4197 	lcall	_mmc_clocks
                           4198 ;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
   0FD7 90 3A 4F      [24] 4199 	mov	dptr,#_mmc_last_cmd
   0FDA 74 0C         [12] 4200 	mov	a,#0x0C
   0FDC F0            [24] 4201 	movx	@dptr,a
                           4202 ;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
   0FDD 90 3A 52      [24] 4203 	mov	dptr,#_mmc_buffer
   0FE0 74 4C         [12] 4204 	mov	a,#0x4C
   0FE2 F0            [24] 4205 	movx	@dptr,a
                           4206 ;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
   0FE3 90 3A 53      [24] 4207 	mov	dptr,#(_mmc_buffer + 0x0001)
                           4208 ;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
                           4209 ;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
                           4210 ;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
   0FE6 E4            [12] 4211 	clr	a
   0FE7 F0            [24] 4212 	movx	@dptr,a
   0FE8 90 3A 54      [24] 4213 	mov	dptr,#(_mmc_buffer + 0x0002)
   0FEB F0            [24] 4214 	movx	@dptr,a
   0FEC 90 3A 55      [24] 4215 	mov	dptr,#(_mmc_buffer + 0x0003)
   0FEF F0            [24] 4216 	movx	@dptr,a
   0FF0 90 3A 56      [24] 4217 	mov	dptr,#(_mmc_buffer + 0x0004)
   0FF3 F0            [24] 4218 	movx	@dptr,a
                           4219 ;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
   0FF4 90 3A 57      [24] 4220 	mov	dptr,#(_mmc_buffer + 0x0005)
   0FF7 74 01         [12] 4221 	mov	a,#0x01
   0FF9 F0            [24] 4222 	movx	@dptr,a
                           4223 ;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
   0FFA 75 11 06      [24] 4224 	mov	_flash_write_PARM_2,#0x06
   0FFD 90 3A 52      [24] 4225 	mov	dptr,#_mmc_buffer
   1000 12 07 30      [24] 4226 	lcall	_flash_write
                           4227 ;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
   1003 12 07 E5      [24] 4228 	lcall	_mmc_read_response
                           4229 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1006 75 82 08      [24] 4230 	mov	dpl,#0x08
   1009 12 06 6C      [24] 4231 	lcall	_mmc_clocks
                           4232 ;	d:\ztex\include\ztex-flash1.h:1078: mmc_deselect();
                           4233 ;	d:\ztex\include\ztex-flash1.h:1079: return;
   100C 02 07 D3      [24] 4234 	ljmp	_mmc_deselect
   100F                    4235 00104$:
                           4236 ;	d:\ztex\include\ztex-flash1.h:1083: flash_read(EP0BUF, ep0_payload_transfer);
   100F 90 3A 6C      [24] 4237 	mov	dptr,#_ep0_payload_transfer
   1012 E0            [24] 4238 	movx	a,@dptr
   1013 F5 11         [12] 4239 	mov	_flash_read_PARM_2,a
   1015 90 E7 40      [24] 4240 	mov	dptr,#_EP0BUF
   1018 12 06 B5      [24] 4241 	lcall	_flash_read
                           4242 ;	d:\ztex\include\ztex-flash1.h:1084: if ( ep0_payload_remaining == 0 ) {
   101B 90 3A 6A      [24] 4243 	mov	dptr,#_ep0_payload_remaining
   101E E0            [24] 4244 	movx	a,@dptr
   101F FE            [12] 4245 	mov	r6,a
   1020 A3            [24] 4246 	inc	dptr
   1021 E0            [24] 4247 	movx	a,@dptr
   1022 FF            [12] 4248 	mov	r7,a
   1023 4E            [12] 4249 	orl	a,r6
   1024 70 44         [24] 4250 	jnz	00108$
                           4251 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1026 75 82 10      [24] 4252 	mov	dpl,#0x10
   1029 12 06 6C      [24] 4253 	lcall	_mmc_clocks
   102C 75 82 08      [24] 4254 	mov	dpl,#0x08
   102F 12 06 6C      [24] 4255 	lcall	_mmc_clocks
                           4256 ;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
   1032 90 3A 4F      [24] 4257 	mov	dptr,#_mmc_last_cmd
   1035 74 0C         [12] 4258 	mov	a,#0x0C
   1037 F0            [24] 4259 	movx	@dptr,a
                           4260 ;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
   1038 90 3A 52      [24] 4261 	mov	dptr,#_mmc_buffer
   103B 74 4C         [12] 4262 	mov	a,#0x4C
   103D F0            [24] 4263 	movx	@dptr,a
                           4264 ;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
   103E 90 3A 53      [24] 4265 	mov	dptr,#(_mmc_buffer + 0x0001)
                           4266 ;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
                           4267 ;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
                           4268 ;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
   1041 E4            [12] 4269 	clr	a
   1042 F0            [24] 4270 	movx	@dptr,a
   1043 90 3A 54      [24] 4271 	mov	dptr,#(_mmc_buffer + 0x0002)
   1046 F0            [24] 4272 	movx	@dptr,a
   1047 90 3A 55      [24] 4273 	mov	dptr,#(_mmc_buffer + 0x0003)
   104A F0            [24] 4274 	movx	@dptr,a
   104B 90 3A 56      [24] 4275 	mov	dptr,#(_mmc_buffer + 0x0004)
   104E F0            [24] 4276 	movx	@dptr,a
                           4277 ;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
   104F 90 3A 57      [24] 4278 	mov	dptr,#(_mmc_buffer + 0x0005)
   1052 74 01         [12] 4279 	mov	a,#0x01
   1054 F0            [24] 4280 	movx	@dptr,a
                           4281 ;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
   1055 75 11 06      [24] 4282 	mov	_flash_write_PARM_2,#0x06
   1058 90 3A 52      [24] 4283 	mov	dptr,#_mmc_buffer
   105B 12 07 30      [24] 4284 	lcall	_flash_write
                           4285 ;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
   105E 12 07 E5      [24] 4286 	lcall	_mmc_read_response
                           4287 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1061 75 82 08      [24] 4288 	mov	dpl,#0x08
   1064 12 06 6C      [24] 4289 	lcall	_mmc_clocks
                           4290 ;	d:\ztex\include\ztex-flash1.h:1089: mmc_deselect();
   1067 02 07 D3      [24] 4291 	ljmp	_mmc_deselect
   106A                    4292 00108$:
                           4293 ;	d:\ztex\include\ztex-flash1.h:1091: else if ( (ep0_payload_remaining & 511) == 0 ) {
   106A EE            [12] 4294 	mov	a,r6
   106B 70 04         [24] 4295 	jnz	00127$
   106D EF            [12] 4296 	mov	a,r7
   106E 30 E0 01      [24] 4297 	jnb	acc.0,00128$
   1071                    4298 00127$:
   1071 22            [24] 4299 	ret
   1072                    4300 00128$:
                           4301 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1072 75 82 10      [24] 4302 	mov	dpl,#0x10
   1075 12 06 6C      [24] 4303 	lcall	_mmc_clocks
                           4304 ;	d:\ztex\include\ztex-flash1.h:1093: mmc_ep0_wait = 1;
   1078 90 3A 62      [24] 4305 	mov	dptr,#_mmc_ep0_wait
   107B 74 01         [12] 4306 	mov	a,#0x01
   107D F0            [24] 4307 	movx	@dptr,a
   107E 22            [24] 4308 	ret
                           4309 ;------------------------------------------------------------
                           4310 ;Allocation info for local variables in function 'mmc_send_ep0'
                           4311 ;------------------------------------------------------------
                           4312 ;	d:\ztex\include\ztex-flash1.h:1169: void mmc_send_ep0 () { 
                           4313 ;	-----------------------------------------
                           4314 ;	 function mmc_send_ep0
                           4315 ;	-----------------------------------------
   107F                    4316 _mmc_send_ep0:
                           4317 ;	d:\ztex\include\ztex-flash1.h:1170: if ( mmc_ep0_wait ) {
   107F 90 3A 62      [24] 4318 	mov	dptr,#_mmc_ep0_wait
   1082 E0            [24] 4319 	movx	a,@dptr
   1083 FF            [12] 4320 	mov	r7,a
   1084 60 0E         [24] 4321 	jz	00102$
                           4322 ;	d:\ztex\include\ztex-flash1.h:1171: mmc_ep0_wait = 0;
   1086 90 3A 62      [24] 4323 	mov	dptr,#_mmc_ep0_wait
   1089 E4            [12] 4324 	clr	a
   108A F0            [24] 4325 	movx	@dptr,a
                           4326 ;	d:\ztex\include\ztex-flash1.h:1172: mmc_wait_busy();			
   108B 12 07 6F      [24] 4327 	lcall	_mmc_wait_busy
                           4328 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   108E 75 82 FC      [24] 4329 	mov	dpl,#0xFC
   1091 12 06 F4      [24] 4330 	lcall	_flash_write_byte
   1094                    4331 00102$:
                           4332 ;	d:\ztex\include\ztex-flash1.h:1176: flash_write(EP0BUF, ep0_payload_transfer);
   1094 90 3A 6C      [24] 4333 	mov	dptr,#_ep0_payload_transfer
   1097 E0            [24] 4334 	movx	a,@dptr
   1098 F5 11         [12] 4335 	mov	_flash_write_PARM_2,a
   109A 90 E7 40      [24] 4336 	mov	dptr,#_EP0BUF
   109D 12 07 30      [24] 4337 	lcall	_flash_write
                           4338 ;	d:\ztex\include\ztex-flash1.h:1177: if ( (ep0_payload_remaining & 511) == 0 ) {
   10A0 90 3A 6A      [24] 4339 	mov	dptr,#_ep0_payload_remaining
   10A3 E0            [24] 4340 	movx	a,@dptr
   10A4 FE            [12] 4341 	mov	r6,a
   10A5 A3            [24] 4342 	inc	dptr
   10A6 E0            [24] 4343 	movx	a,@dptr
   10A7 FF            [12] 4344 	mov	r7,a
   10A8 EE            [12] 4345 	mov	a,r6
   10A9 70 04         [24] 4346 	jnz	00125$
   10AB EF            [12] 4347 	mov	a,r7
   10AC 30 E0 01      [24] 4348 	jnb	acc.0,00126$
   10AF                    4349 00125$:
   10AF 22            [24] 4350 	ret
   10B0                    4351 00126$:
                           4352 ;	d:\ztex\include\ztex-flash1.h:1178: MMC_IO |= MMC_bmDI;
   10B0 43 A0 80      [24] 4353 	orl	_IOC,#0x80
                           4354 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   10B3 75 82 10      [24] 4355 	mov	dpl,#0x10
   10B6 12 06 6C      [24] 4356 	lcall	_mmc_clocks
   10B9 12 06 76      [24] 4357 	lcall	_flash_read_byte
   10BC E5 82         [12] 4358 	mov	a,dpl
   10BE 54 0F         [12] 4359 	anl	a,#0x0F
   10C0 FF            [12] 4360 	mov	r7,a
   10C1 BF 05 02      [24] 4361 	cjne	r7,#0x05,00127$
   10C4 80 44         [24] 4362 	sjmp	00104$
   10C6                    4363 00127$:
                           4364 ;	d:\ztex\include\ztex-flash1.h:1182: flash_ec = FLASH_EC_WRITE_ERROR; 
   10C6 90 3A 4E      [24] 4365 	mov	dptr,#_flash_ec
   10C9 74 06         [12] 4366 	mov	a,#0x06
   10CB F0            [24] 4367 	movx	@dptr,a
                           4368 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   10CC 75 82 08      [24] 4369 	mov	dpl,#0x08
   10CF 12 06 6C      [24] 4370 	lcall	_mmc_clocks
                           4371 ;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
   10D2 90 3A 4F      [24] 4372 	mov	dptr,#_mmc_last_cmd
   10D5 74 0C         [12] 4373 	mov	a,#0x0C
   10D7 F0            [24] 4374 	movx	@dptr,a
                           4375 ;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
   10D8 90 3A 52      [24] 4376 	mov	dptr,#_mmc_buffer
   10DB 74 4C         [12] 4377 	mov	a,#0x4C
   10DD F0            [24] 4378 	movx	@dptr,a
                           4379 ;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
   10DE 90 3A 53      [24] 4380 	mov	dptr,#(_mmc_buffer + 0x0001)
                           4381 ;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
                           4382 ;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
                           4383 ;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
   10E1 E4            [12] 4384 	clr	a
   10E2 F0            [24] 4385 	movx	@dptr,a
   10E3 90 3A 54      [24] 4386 	mov	dptr,#(_mmc_buffer + 0x0002)
   10E6 F0            [24] 4387 	movx	@dptr,a
   10E7 90 3A 55      [24] 4388 	mov	dptr,#(_mmc_buffer + 0x0003)
   10EA F0            [24] 4389 	movx	@dptr,a
   10EB 90 3A 56      [24] 4390 	mov	dptr,#(_mmc_buffer + 0x0004)
   10EE F0            [24] 4391 	movx	@dptr,a
                           4392 ;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
   10EF 90 3A 57      [24] 4393 	mov	dptr,#(_mmc_buffer + 0x0005)
   10F2 74 01         [12] 4394 	mov	a,#0x01
   10F4 F0            [24] 4395 	movx	@dptr,a
                           4396 ;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
   10F5 75 11 06      [24] 4397 	mov	_flash_write_PARM_2,#0x06
   10F8 90 3A 52      [24] 4398 	mov	dptr,#_mmc_buffer
   10FB 12 07 30      [24] 4399 	lcall	_flash_write
                           4400 ;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
   10FE 12 07 E5      [24] 4401 	lcall	_mmc_read_response
                           4402 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1101 75 82 08      [24] 4403 	mov	dpl,#0x08
   1104 12 06 6C      [24] 4404 	lcall	_mmc_clocks
                           4405 ;	d:\ztex\include\ztex-flash1.h:1185: mmc_deselect();
   1107 12 07 D3      [24] 4406 	lcall	_mmc_deselect
   110A                    4407 00104$:
                           4408 ;	d:\ztex\include\ztex-flash1.h:1188: if ( ep0_payload_remaining != 0 ) {
   110A 90 3A 6A      [24] 4409 	mov	dptr,#_ep0_payload_remaining
   110D E0            [24] 4410 	movx	a,@dptr
   110E FE            [12] 4411 	mov	r6,a
   110F A3            [24] 4412 	inc	dptr
   1110 E0            [24] 4413 	movx	a,@dptr
   1111 FF            [12] 4414 	mov	r7,a
   1112 4E            [12] 4415 	orl	a,r6
   1113 60 07         [24] 4416 	jz	00106$
                           4417 ;	d:\ztex\include\ztex-flash1.h:1189: mmc_ep0_wait = 1;
   1115 90 3A 62      [24] 4418 	mov	dptr,#_mmc_ep0_wait
   1118 74 01         [12] 4419 	mov	a,#0x01
   111A F0            [24] 4420 	movx	@dptr,a
   111B 22            [24] 4421 	ret
   111C                    4422 00106$:
                           4423 ;	d:\ztex\include\ztex-flash1.h:1192: mmc_wait_busy();			
   111C 12 07 6F      [24] 4424 	lcall	_mmc_wait_busy
                           4425 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   111F 75 82 FD      [24] 4426 	mov	dpl,#0xFD
   1122 12 06 F4      [24] 4427 	lcall	_flash_write_byte
   1125 75 82 08      [24] 4428 	mov	dpl,#0x08
   1128 12 06 6C      [24] 4429 	lcall	_mmc_clocks
                           4430 ;	d:\ztex\include\ztex-flash1.h:1195: mmc_deselect();
   112B 02 07 D3      [24] 4431 	ljmp	_mmc_deselect
                           4432 ;------------------------------------------------------------
                           4433 ;Allocation info for local variables in function 'reset_fpga_int'
                           4434 ;------------------------------------------------------------
                           4435 ;mode                      Allocated to registers r7 
                           4436 ;k                         Allocated to registers r6 r7 
                           4437 ;------------------------------------------------------------
                           4438 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
                           4439 ;	-----------------------------------------
                           4440 ;	 function reset_fpga_int
                           4441 ;	-----------------------------------------
   112E                    4442 _reset_fpga_int:
   112E AF 82         [24] 4443 	mov	r7,dpl
                           4444 ;	d:\ztex\include\ztex-fpga3.h:38: IFCONFIG = bmBIT7;
   1130 90 E6 01      [24] 4445 	mov	dptr,#_IFCONFIG
   1133 74 80         [12] 4446 	mov	a,#0x80
   1135 F0            [24] 4447 	movx	@dptr,a
                           4448 ;	d:\ztex\include\ezregs.h:46: __endasm;
   1136 00            [12] 4449 	nop
   1137 00            [12] 4450 	nop
   1138 00            [12] 4451 	nop
   1139 00            [12] 4452 	nop
                           4453 ;	d:\ztex\include\ztex-fpga3.h:40: PORTACFG = 0;
   113A 90 E6 70      [24] 4454 	mov	dptr,#_PORTACFG
                           4455 ;	d:\ztex\include\ztex-fpga3.h:41: PORTCCFG = 0;
   113D E4            [12] 4456 	clr	a
   113E F0            [24] 4457 	movx	@dptr,a
   113F 90 E6 71      [24] 4458 	mov	dptr,#_PORTCCFG
   1142 F0            [24] 4459 	movx	@dptr,a
                           4460 ;	d:\ztex\include\ztex-fpga3.h:43: OEA = bmBIT1 | bmBIT3 | bmBIT4 | bmBIT5 | bmBIT6 | bmBIT7;
   1143 75 B2 FA      [24] 4461 	mov	_OEA,#0xFA
                           4462 ;	d:\ztex\include\ztex-fpga3.h:44: IOA = bmBIT7 | mode;
   1146 74 80         [12] 4463 	mov	a,#0x80
   1148 4F            [12] 4464 	orl	a,r7
   1149 F5 80         [12] 4465 	mov	_IOA,a
                           4466 ;	d:\ztex\include\ztex-fpga3.h:45: wait(10);
   114B 90 00 0A      [24] 4467 	mov	dptr,#0x000A
   114E C0 07         [24] 4468 	push	ar7
   1150 12 02 63      [24] 4469 	lcall	_wait
   1153 D0 07         [24] 4470 	pop	ar7
                           4471 ;	d:\ztex\include\ztex-fpga3.h:47: OEC &= ~bmBIT3;
   1155 AE B4         [24] 4472 	mov	r6,_OEC
   1157 74 F7         [12] 4473 	mov	a,#0xF7
   1159 5E            [12] 4474 	anl	a,r6
   115A F5 B4         [12] 4475 	mov	_OEC,a
                           4476 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   115C 74 02         [12] 4477 	mov	a,#0x02
   115E 4F            [12] 4478 	orl	a,r7
   115F F5 80         [12] 4479 	mov	_IOA,a
                           4480 ;	d:\ztex\include\ztex-fpga3.h:51: while (!IOA0 && k<65535)
   1161 7E 00         [12] 4481 	mov	r6,#0x00
   1163 7F 00         [12] 4482 	mov	r7,#0x00
   1165                    4483 00102$:
   1165 20 80 20      [24] 4484 	jb	_IOA0,00104$
   1168 8E 02         [24] 4485 	mov	ar2,r6
   116A 8F 03         [24] 4486 	mov	ar3,r7
   116C 7C 00         [12] 4487 	mov	r4,#0x00
   116E 7D 00         [12] 4488 	mov	r5,#0x00
   1170 C3            [12] 4489 	clr	c
   1171 EA            [12] 4490 	mov	a,r2
   1172 94 FF         [12] 4491 	subb	a,#0xFF
   1174 EB            [12] 4492 	mov	a,r3
   1175 94 FF         [12] 4493 	subb	a,#0xFF
   1177 EC            [12] 4494 	mov	a,r4
   1178 94 00         [12] 4495 	subb	a,#0x00
   117A ED            [12] 4496 	mov	a,r5
   117B 64 80         [12] 4497 	xrl	a,#0x80
   117D 94 80         [12] 4498 	subb	a,#0x80
   117F 50 07         [24] 4499 	jnc	00104$
                           4500 ;	d:\ztex\include\ztex-fpga3.h:52: k++;
   1181 0E            [12] 4501 	inc	r6
   1182 BE 00 E0      [24] 4502 	cjne	r6,#0x00,00102$
   1185 0F            [12] 4503 	inc	r7
   1186 80 DD         [24] 4504 	sjmp	00102$
   1188                    4505 00104$:
                           4506 ;	d:\ztex\include\ztex-fpga3.h:54: fpga_init_b = IOA0 ? 200 : 100;
   1188 30 80 04      [24] 4507 	jnb	_IOA0,00107$
   118B 7F C8         [12] 4508 	mov	r7,#0xC8
   118D 80 02         [24] 4509 	sjmp	00108$
   118F                    4510 00107$:
   118F 7F 64         [12] 4511 	mov	r7,#0x64
   1191                    4512 00108$:
   1191 90 3A 68      [24] 4513 	mov	dptr,#_fpga_init_b
   1194 EF            [12] 4514 	mov	a,r7
   1195 F0            [24] 4515 	movx	@dptr,a
                           4516 ;	d:\ztex\include\ztex-fpga3.h:55: fpga_bytes = 0;
   1196 90 3A 64      [24] 4517 	mov	dptr,#_fpga_bytes
   1199 E4            [12] 4518 	clr	a
   119A F0            [24] 4519 	movx	@dptr,a
   119B E4            [12] 4520 	clr	a
   119C A3            [24] 4521 	inc	dptr
   119D F0            [24] 4522 	movx	@dptr,a
   119E E4            [12] 4523 	clr	a
   119F A3            [24] 4524 	inc	dptr
   11A0 F0            [24] 4525 	movx	@dptr,a
   11A1 E4            [12] 4526 	clr	a
   11A2 A3            [24] 4527 	inc	dptr
   11A3 F0            [24] 4528 	movx	@dptr,a
                           4529 ;	d:\ztex\include\ztex-fpga3.h:56: fpga_checksum = 0;
   11A4 90 3A 63      [24] 4530 	mov	dptr,#_fpga_checksum
   11A7 E4            [12] 4531 	clr	a
   11A8 F0            [24] 4532 	movx	@dptr,a
   11A9 22            [24] 4533 	ret
                           4534 ;------------------------------------------------------------
                           4535 ;Allocation info for local variables in function 'reset_fpga'
                           4536 ;------------------------------------------------------------
                           4537 ;	d:\ztex\include\ztex-fpga3.h:59: static void reset_fpga () {
                           4538 ;	-----------------------------------------
                           4539 ;	 function reset_fpga
                           4540 ;	-----------------------------------------
   11AA                    4541 _reset_fpga:
                           4542 ;	d:\ztex\include\ztex-fpga3.h:60: reset_fpga_int(bmBIT5);
   11AA 75 82 20      [24] 4543 	mov	dpl,#0x20
   11AD 02 11 2E      [24] 4544 	ljmp	_reset_fpga_int
                           4545 ;------------------------------------------------------------
                           4546 ;Allocation info for local variables in function 'reset_fpga_flash'
                           4547 ;------------------------------------------------------------
                           4548 ;	d:\ztex\include\ztex-fpga3.h:63: static void reset_fpga_flash () {
                           4549 ;	-----------------------------------------
                           4550 ;	 function reset_fpga_flash
                           4551 ;	-----------------------------------------
   11B0                    4552 _reset_fpga_flash:
                           4553 ;	d:\ztex\include\ztex-fpga3.h:64: reset_fpga_int(bmBIT5 | bmBIT6);
   11B0 75 82 60      [24] 4554 	mov	dpl,#0x60
   11B3 02 11 2E      [24] 4555 	ljmp	_reset_fpga_int
                           4556 ;------------------------------------------------------------
                           4557 ;Allocation info for local variables in function 'init_fpga_configuration'
                           4558 ;------------------------------------------------------------
                           4559 ;	d:\ztex\include\ztex-fpga3.h:70: static void init_fpga_configuration () {
                           4560 ;	-----------------------------------------
                           4561 ;	 function init_fpga_configuration
                           4562 ;	-----------------------------------------
   11B6                    4563 _init_fpga_configuration:
                           4564 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   11B6 02 11 AA      [24] 4565 	ljmp	_reset_fpga
                           4566 ;------------------------------------------------------------
                           4567 ;Allocation info for local variables in function 'post_fpga_config'
                           4568 ;------------------------------------------------------------
                           4569 ;	d:\ztex\include\ztex-fpga3.h:80: static void post_fpga_config () {
                           4570 ;	-----------------------------------------
                           4571 ;	 function post_fpga_config
                           4572 ;	-----------------------------------------
   11B9                    4573 _post_fpga_config:
                           4574 ;	usb-test.c:38: pwdStatusSector = FLASH_FIRST_FREE_SECTOR;
   11B9 90 3A 00      [24] 4575 	mov	dptr,#_pwdStatusSector
   11BC E4            [12] 4576 	clr	a
   11BD F0            [24] 4577 	movx	@dptr,a
   11BE E4            [12] 4578 	clr	a
   11BF A3            [24] 4579 	inc	dptr
   11C0 F0            [24] 4580 	movx	@dptr,a
                           4581 ;	usb-test.c:41: OEB = 0xFF;
   11C1 75 B3 FF      [24] 4582 	mov	_OEB,#0xFF
                           4583 ;	usb-test.c:42: OEA = bmBIT2 | bmBIT3 | bmBIT4 | bmBIT5 | bmBIT6 | bmBIT7;
   11C4 75 B2 FC      [24] 4584 	mov	_OEA,#0xFC
                           4585 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   11C7 E5 B2         [12] 4586 	mov	a,_OEA
   11C9 F4            [12] 4587 	cpl	a
   11CA FF            [12] 4588 	mov	r7,a
   11CB 52 80         [12] 4589 	anl	_IOA,a
                           4590 ;	usb-test.c:53: FPGA_RST = 1;
   11CD D2 85         [12] 4591 	setb	_IOA5
                           4592 ;	d:\ztex\include\ztex-utils.h:37: __endasm;
   11CF 00            [12] 4593 	nop
                           4594 ;	usb-test.c:55: FPGA_RST = 0;
   11D0 C2 85         [12] 4595 	clr	_IOA5
   11D2 22            [24] 4596 	ret
                           4597 ;------------------------------------------------------------
                           4598 ;Allocation info for local variables in function 'finish_fpga_configuration'
                           4599 ;------------------------------------------------------------
                           4600 ;w                         Allocated to registers r7 
                           4601 ;------------------------------------------------------------
                           4602 ;	d:\ztex\include\ztex-fpga3.h:87: static void finish_fpga_configuration () {
                           4603 ;	-----------------------------------------
                           4604 ;	 function finish_fpga_configuration
                           4605 ;	-----------------------------------------
   11D3                    4606 _finish_fpga_configuration:
                           4607 ;	d:\ztex\include\ztex-fpga3.h:89: fpga_init_b += IOA0 ? 20 : 10;
   11D3 30 80 04      [24] 4608 	jnb	_IOA0,00108$
   11D6 7F 14         [12] 4609 	mov	r7,#0x14
   11D8 80 02         [24] 4610 	sjmp	00109$
   11DA                    4611 00108$:
   11DA 7F 0A         [12] 4612 	mov	r7,#0x0A
   11DC                    4613 00109$:
   11DC 90 3A 68      [24] 4614 	mov	dptr,#_fpga_init_b
   11DF E0            [24] 4615 	movx	a,@dptr
   11E0 FE            [12] 4616 	mov	r6,a
   11E1 EF            [12] 4617 	mov	a,r7
   11E2 2E            [12] 4618 	add	a,r6
   11E3 F0            [24] 4619 	movx	@dptr,a
                           4620 ;	d:\ztex\include\ztex-fpga3.h:91: for ( w=0; w<64; w++ ) {
   11E4 7F 00         [12] 4621 	mov	r7,#0x00
   11E6                    4622 00104$:
                           4623 ;	d:\ztex\include\ztex-fpga3.h:92: IOA3 = 1; IOA3 = 0; 
   11E6 D2 83         [12] 4624 	setb	_IOA3
   11E8 C2 83         [12] 4625 	clr	_IOA3
                           4626 ;	d:\ztex\include\ztex-fpga3.h:91: for ( w=0; w<64; w++ ) {
   11EA 0F            [12] 4627 	inc	r7
   11EB BF 40 00      [24] 4628 	cjne	r7,#0x40,00129$
   11EE                    4629 00129$:
   11EE 40 F6         [24] 4630 	jc	00104$
                           4631 ;	d:\ztex\include\ztex-fpga3.h:94: IOA7 = 1;
   11F0 D2 87         [12] 4632 	setb	_IOA7
                           4633 ;	d:\ztex\include\ztex-fpga3.h:95: IOA3 = 1; IOA3 = 0;
   11F2 D2 83         [12] 4634 	setb	_IOA3
   11F4 C2 83         [12] 4635 	clr	_IOA3
                           4636 ;	d:\ztex\include\ztex-fpga3.h:96: IOA3 = 1; IOA3 = 0;
   11F6 D2 83         [12] 4637 	setb	_IOA3
   11F8 C2 83         [12] 4638 	clr	_IOA3
                           4639 ;	d:\ztex\include\ztex-fpga3.h:97: IOA3 = 1; IOA3 = 0;
   11FA D2 83         [12] 4640 	setb	_IOA3
   11FC C2 83         [12] 4641 	clr	_IOA3
                           4642 ;	d:\ztex\include\ztex-fpga3.h:98: IOA3 = 1; IOA3 = 0;
   11FE D2 83         [12] 4643 	setb	_IOA3
   1200 C2 83         [12] 4644 	clr	_IOA3
                           4645 ;	d:\ztex\include\ztex-fpga3.h:100: OEA = OEA & 5;
   1202 53 B2 05      [24] 4646 	anl	_OEA,#0x05
                           4647 ;	d:\ztex\include\ztex-fpga3.h:101: fpga_init_b += IOA0 ? 2 : 1;
   1205 30 80 04      [24] 4648 	jnb	_IOA0,00110$
   1208 7F 02         [12] 4649 	mov	r7,#0x02
   120A 80 02         [24] 4650 	sjmp	00111$
   120C                    4651 00110$:
   120C 7F 01         [12] 4652 	mov	r7,#0x01
   120E                    4653 00111$:
   120E 90 3A 68      [24] 4654 	mov	dptr,#_fpga_init_b
   1211 E0            [24] 4655 	movx	a,@dptr
   1212 FE            [12] 4656 	mov	r6,a
   1213 EF            [12] 4657 	mov	a,r7
   1214 2E            [12] 4658 	add	a,r6
   1215 F0            [24] 4659 	movx	@dptr,a
                           4660 ;	d:\ztex\include\ztex-fpga3.h:102: if ( IOA1 )  {
   1216 30 81 05      [24] 4661 	jnb	_IOA1,00103$
                           4662 ;	d:\ztex\include\ztex-fpga3.h:103: IOA1 = 1;		
   1219 D2 81         [12] 4663 	setb	_IOA1
                           4664 ;	d:\ztex\include\ztex-fpga3.h:104: post_fpga_config();
   121B 12 11 B9      [24] 4665 	lcall	_post_fpga_config
   121E                    4666 00103$:
                           4667 ;	d:\ztex\include\ztex-fpga3.h:107: IOA1 = 1;		
   121E D2 81         [12] 4668 	setb	_IOA1
                           4669 ;	d:\ztex\include\ztex-fpga3.h:108: OEA |= bmBIT1; 
   1220 43 B2 02      [24] 4670 	orl	_OEA,#0x02
   1223 22            [24] 4671 	ret
                           4672 ;------------------------------------------------------------
                           4673 ;Allocation info for local variables in function 'fpga_send_ep0'
                           4674 ;------------------------------------------------------------
                           4675 ;oOED                      Allocated with name '_fpga_send_ep0_oOED_1_131'
                           4676 ;------------------------------------------------------------
                           4677 ;	d:\ztex\include\ztex-fpga3.h:143: void fpga_send_ep0() {
                           4678 ;	-----------------------------------------
                           4679 ;	 function fpga_send_ep0
                           4680 ;	-----------------------------------------
   1224                    4681 _fpga_send_ep0:
                           4682 ;	d:\ztex\include\ztex-fpga3.h:145: oOED = OED;
   1224 85 B5 10      [24] 4683 	mov	_fpga_send_ep0_oOED_1_131,_OED
                           4684 ;	d:\ztex\include\ztex-fpga3.h:146: OED = 255;
   1227 75 B5 FF      [24] 4685 	mov	_OED,#0xFF
                           4686 ;	d:\ztex\include\ztex-fpga3.h:147: fpga_bytes += ep0_payload_transfer;
   122A 90 3A 6C      [24] 4687 	mov	dptr,#_ep0_payload_transfer
   122D E0            [24] 4688 	movx	a,@dptr
   122E FE            [12] 4689 	mov	r6,a
   122F 90 3A 64      [24] 4690 	mov	dptr,#_fpga_bytes
   1232 E0            [24] 4691 	movx	a,@dptr
   1233 FA            [12] 4692 	mov	r2,a
   1234 A3            [24] 4693 	inc	dptr
   1235 E0            [24] 4694 	movx	a,@dptr
   1236 FB            [12] 4695 	mov	r3,a
   1237 A3            [24] 4696 	inc	dptr
   1238 E0            [24] 4697 	movx	a,@dptr
   1239 FC            [12] 4698 	mov	r4,a
   123A A3            [24] 4699 	inc	dptr
   123B E0            [24] 4700 	movx	a,@dptr
   123C FD            [12] 4701 	mov	r5,a
   123D 8E 00         [24] 4702 	mov	ar0,r6
   123F 79 00         [12] 4703 	mov	r1,#0x00
   1241 7E 00         [12] 4704 	mov	r6,#0x00
   1243 7F 00         [12] 4705 	mov	r7,#0x00
   1245 90 3A 64      [24] 4706 	mov	dptr,#_fpga_bytes
   1248 E8            [12] 4707 	mov	a,r0
   1249 2A            [12] 4708 	add	a,r2
   124A F0            [24] 4709 	movx	@dptr,a
   124B E9            [12] 4710 	mov	a,r1
   124C 3B            [12] 4711 	addc	a,r3
   124D A3            [24] 4712 	inc	dptr
   124E F0            [24] 4713 	movx	@dptr,a
   124F EE            [12] 4714 	mov	a,r6
   1250 3C            [12] 4715 	addc	a,r4
   1251 A3            [24] 4716 	inc	dptr
   1252 F0            [24] 4717 	movx	@dptr,a
   1253 EF            [12] 4718 	mov	a,r7
   1254 3D            [12] 4719 	addc	a,r5
   1255 A3            [24] 4720 	inc	dptr
   1256 F0            [24] 4721 	movx	@dptr,a
                           4722 ;	d:\ztex\include\ztex-fpga3.h:182: ,,
   1257 90 E6 8B      [24] 4723 	mov dptr,#_EP0BCL
   125A E0            [24] 4724 	movx a,@dptr
   125B 60 22         [24] 4725 	jz 010000$
   125D FA            [12] 4726 	mov r2,a
   125E 75 9B 40      [24] 4727 	mov _AUTOPTRL1,#(_EP0BUF)
   1261 75 9A E7      [24] 4728 	mov _AUTOPTRH1,#(_EP0BUF >> 8)
   1264 75 AF 07      [24] 4729 	mov _AUTOPTRSETUP,#0x07
   1267 90 3A 63      [24] 4730 	mov dptr,#_fpga_checksum
   126A E0            [24] 4731 	movx a,@dptr
   126B F9            [12] 4732 	mov r1,a
   126C 90 E6 7B      [24] 4733 	mov dptr,#_XAUTODAT1
   126F                    4734 	010001$:
                           4735 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   126F E0            [24] 4736 	movx a,@dptr
                           4737 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   1270 F5 B0         [12] 4738 	mov _IOD,a
                           4739 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   1272 D2 83         [12] 4740 	setb _IOA3
                           4741 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   1274 29            [12] 4742 	add a,r1
                           4743 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   1275 F9            [12] 4744 	mov r1,a
                           4745 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   1276 C2 83         [12] 4746 	clr _IOA3
                           4747 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   1278 DA F5         [24] 4748 	djnz r2, 010001$
                           4749 ;	# 168 "d:\\ztex\\include\\ztex-fpga3.h"
   127A 90 3A 63      [24] 4750 	mov dptr,#_fpga_checksum
   127D E9            [12] 4751 	mov a,r1
   127E F0            [24] 4752 	movx @dptr,a
   127F                    4753 	010000$:
                           4754 ;	d:\ztex\include\ztex-fpga3.h:183: fpga_send_ep0();
   127F 85 10 B5      [24] 4755 	mov	_OED,_fpga_send_ep0_oOED_1_131
                           4756 ;	d:\ztex\include\ztex-fpga3.h:184: ));;
   1282 90 E6 8B      [24] 4757 	mov	dptr,#_EP0BCL
   1285 E0            [24] 4758 	movx	a,@dptr
   1286 FF            [12] 4759 	mov	r7,a
   1287 BF 40 00      [24] 4760 	cjne	r7,#0x40,00108$
   128A                    4761 00108$:
   128A 50 03         [24] 4762 	jnc	00103$
                           4763 ;	d:\ztex\include\ztex-fpga3.h:185: 
   128C 02 11 D3      [24] 4764 	ljmp	_finish_fpga_configuration
   128F                    4765 00103$:
   128F 22            [24] 4766 	ret
                           4767 ;------------------------------------------------------------
                           4768 ;Allocation info for local variables in function 'fpga_send_bitstream_from_flash'
                           4769 ;------------------------------------------------------------
                           4770 ;size                      Allocated to registers 
                           4771 ;------------------------------------------------------------
                           4772 ;	d:\ztex\include\ztex-fpga3.h:193: void fpga_send_bitstream_from_flash (WORD size) {
                           4773 ;	-----------------------------------------
                           4774 ;	 function fpga_send_bitstream_from_flash
                           4775 ;	-----------------------------------------
   1290                    4776 _fpga_send_bitstream_from_flash:
                           4777 ;	d:\ztex\include\ztex-fpga3.h:294: #endif  /*ZTEX_FPGA_H*/
   1290 C0 B5         [24] 4778 	push _OED
   1292 75 B5 00      [24] 4779 	mov _OED,#0
                           4780 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   1295 AD 82         [24] 4781 	mov r5,dpl
                           4782 ;	# 200 "d:\\ztex\\include\\ztex-fpga3.h"
   1297 AE 83         [24] 4783 	mov r6,dph
                           4784 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
                           4785 ;	# 203 "d:\\ztex\\include\\ztex-fpga3.h"
   1299 90 3A 64      [24] 4786 	mov dptr,#_fpga_bytes
   129C E0            [24] 4787 	movx a,@dptr
   129D F9            [12] 4788 	mov r1,a
   129E A3            [24] 4789 	inc dptr
   129F E0            [24] 4790 	movx a,@dptr
   12A0 FA            [12] 4791 	mov r2,a
   12A1 A3            [24] 4792 	inc dptr
   12A2 E0            [24] 4793 	movx a,@dptr
   12A3 FB            [12] 4794 	mov r3,a
   12A4 A3            [24] 4795 	inc dptr
   12A5 E0            [24] 4796 	movx a,@dptr
   12A6 FC            [12] 4797 	mov r4,a
   12A7 90 3A 64      [24] 4798 	mov dptr,#_fpga_bytes
   12AA ED            [12] 4799 	mov a,r5
   12AB 29            [12] 4800 	add a,r1
   12AC F0            [24] 4801 	movx @dptr,a
   12AD EE            [12] 4802 	mov a,r6
   12AE 3A            [12] 4803 	addc a,r2
   12AF A3            [24] 4804 	inc dptr
   12B0 F0            [24] 4805 	movx @dptr,a
   12B1 74 00         [12] 4806 	mov a,#0
   12B3 3B            [12] 4807 	addc a,r3
   12B4 A3            [24] 4808 	inc dptr
   12B5 F0            [24] 4809 	movx @dptr,a
   12B6 74 00         [12] 4810 	mov a,#0
   12B8 3C            [12] 4811 	addc a,r4
   12B9 A3            [24] 4812 	inc dptr
   12BA F0            [24] 4813 	movx @dptr,a
   12BB                    4814 	010003$:
                           4815 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   12BB BD 00 06      [24] 4816 	cjne r5,#0x00,010002$
                           4817 ;	# 235 "d:\\ztex\\include\\ztex-fpga3.h"
   12BE BE 00 03      [24] 4818 	cjne r6,#0x00,010002$
   12C1 D0 B5         [24] 4819 	pop _OED
   12C3 22            [24] 4820 	ret
                           4821 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   12C4                    4822 	010002$:
                           4823 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   12C4 D2 83         [12] 4824 	setb _IOA3
                           4825 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   12C6 D2 A6         [12] 4826 	setb _IOC6
                           4827 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   12C8 C2 83         [12] 4828 	clr _IOA3
                           4829 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   12CA C2 A6         [12] 4830 	clr _IOC6
                           4831 ;	# 243 "d:\\ztex\\include\\ztex-fpga3.h"
   12CC D2 83         [12] 4832 	setb _IOA3
   12CE D2 A6         [12] 4833 	setb _IOC6
   12D0 C2 83         [12] 4834 	clr _IOA3
   12D2 C2 A6         [12] 4835 	clr _IOC6
   12D4 D2 83         [12] 4836 	setb _IOA3
   12D6 D2 A6         [12] 4837 	setb _IOC6
   12D8 C2 83         [12] 4838 	clr _IOA3
   12DA C2 A6         [12] 4839 	clr _IOC6
   12DC D2 83         [12] 4840 	setb _IOA3
   12DE D2 A6         [12] 4841 	setb _IOC6
   12E0 C2 83         [12] 4842 	clr _IOA3
   12E2 C2 A6         [12] 4843 	clr _IOC6
   12E4 D2 83         [12] 4844 	setb _IOA3
   12E6 D2 A6         [12] 4845 	setb _IOC6
   12E8 C2 83         [12] 4846 	clr _IOA3
   12EA C2 A6         [12] 4847 	clr _IOC6
   12EC D2 83         [12] 4848 	setb _IOA3
   12EE D2 A6         [12] 4849 	setb _IOC6
   12F0 C2 83         [12] 4850 	clr _IOA3
   12F2 C2 A6         [12] 4851 	clr _IOC6
   12F4 D2 83         [12] 4852 	setb _IOA3
   12F6 D2 A6         [12] 4853 	setb _IOC6
   12F8 C2 83         [12] 4854 	clr _IOA3
   12FA C2 A6         [12] 4855 	clr _IOC6
   12FC D2 83         [12] 4856 	setb _IOA3
   12FE D2 A6         [12] 4857 	setb _IOC6
   1300 C2 83         [12] 4858 	clr _IOA3
   1302 C2 A6         [12] 4859 	clr _IOC6
                           4860 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   1304 1D            [12] 4861 	dec r5
                           4862 ;	# 31 "d:\\ztex\\include\\ztex-conf.h"
   1305 BD FF B3      [24] 4863 	cjne r5,#0xff,010003$
                           4864 ;	# 281 "d:\\ztex\\include\\ztex-fpga3.h"
   1308 1E            [12] 4865 	dec r6
   1309 80 B0         [24] 4866 	sjmp 010003$
   130B 22            [24] 4867 	ret
                           4868 ;------------------------------------------------------------
                           4869 ;Allocation info for local variables in function 'fpga_configure_from_flash'
                           4870 ;------------------------------------------------------------
                           4871 ;force                     Allocated to registers r7 
                           4872 ;i                         Allocated to registers r6 r7 
                           4873 ;j                         Allocated to registers r4 r5 
                           4874 ;k                         Allocated to registers r2 r3 
                           4875 ;------------------------------------------------------------
                           4876 ;	d:\ztex\include\ztex-fpga-flash.h:46: BYTE fpga_configure_from_flash( BYTE force) {
                           4877 ;	-----------------------------------------
                           4878 ;	 function fpga_configure_from_flash
                           4879 ;	-----------------------------------------
   130C                    4880 _fpga_configure_from_flash:
                           4881 ;	d:\ztex\include\ztex-fpga-flash.h:48: if ( force == 0 ) {
   130C E5 82         [12] 4882 	mov	a,dpl
   130E FF            [12] 4883 	mov	r7,a
   130F 70 13         [24] 4884 	jnz	00104$
                           4885 ;	d:\ztex\include\ztex-fpga-flash.h:49: OEA &= ~bmBIT1;
   1311 AF B2         [24] 4886 	mov	r7,_OEA
   1313 74 FD         [12] 4887 	mov	a,#0xFD
   1315 5F            [12] 4888 	anl	a,r7
   1316 F5 B2         [12] 4889 	mov	_OEA,a
                           4890 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1318 30 81 09      [24] 4891 	jnb	_IOA1,00104$
                           4892 ;	d:\ztex\include\ztex-fpga-flash.h:51: IOA1 = 1;		
   131B D2 81         [12] 4893 	setb	_IOA1
                           4894 ;	d:\ztex\include\ztex-fpga-flash.h:52: OEA |= bmBIT1;
   131D 43 B2 02      [24] 4895 	orl	_OEA,#0x02
                           4896 ;	d:\ztex\include\ztex-fpga-flash.h:53: return 1;
   1320 75 82 01      [24] 4897 	mov	dpl,#0x01
   1323 22            [24] 4898 	ret
   1324                    4899 00104$:
                           4900 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1324 12 11 B0      [24] 4901 	lcall	_reset_fpga_flash
   1327 90 00 00      [24] 4902 	mov	dptr,#(0x00&0x00ff)
   132A E4            [12] 4903 	clr	a
   132B F5 F0         [12] 4904 	mov	b,a
   132D 12 08 29      [24] 4905 	lcall	_flash_read_init
   1330 E5 82         [12] 4906 	mov	a,dpl
   1332 60 04         [24] 4907 	jz	00133$
                           4908 ;	d:\ztex\include\ztex-fpga-flash.h:63: return 2;
   1334 75 82 02      [24] 4909 	mov	dpl,#0x02
   1337 22            [24] 4910 	ret
                           4911 ;	d:\ztex\include\ztex-fpga-flash.h:64: for ( i=0; i<8 && flash_read_byte()==fpga_flash_boot_id[i]; i++ );
   1338                    4912 00133$:
   1338 7E 00         [12] 4913 	mov	r6,#0x00
   133A 7F 00         [12] 4914 	mov	r7,#0x00
   133C                    4915 00121$:
   133C C3            [12] 4916 	clr	c
   133D EE            [12] 4917 	mov	a,r6
   133E 94 08         [12] 4918 	subb	a,#0x08
   1340 EF            [12] 4919 	mov	a,r7
   1341 94 00         [12] 4920 	subb	a,#0x00
   1343 50 25         [24] 4921 	jnc	00107$
   1345 C0 07         [24] 4922 	push	ar7
   1347 C0 06         [24] 4923 	push	ar6
   1349 12 06 76      [24] 4924 	lcall	_flash_read_byte
   134C AD 82         [24] 4925 	mov	r5,dpl
   134E D0 06         [24] 4926 	pop	ar6
   1350 D0 07         [24] 4927 	pop	ar7
   1352 EE            [12] 4928 	mov	a,r6
   1353 24 0E         [12] 4929 	add	a,#_fpga_flash_boot_id
   1355 F5 82         [12] 4930 	mov	dpl,a
   1357 EF            [12] 4931 	mov	a,r7
   1358 34 24         [12] 4932 	addc	a,#(_fpga_flash_boot_id >> 8)
   135A F5 83         [12] 4933 	mov	dph,a
   135C E4            [12] 4934 	clr	a
   135D 93            [24] 4935 	movc	a,@a+dptr
   135E FC            [12] 4936 	mov	r4,a
   135F ED            [12] 4937 	mov	a,r5
   1360 B5 04 07      [24] 4938 	cjne	a,ar4,00107$
   1363 0E            [12] 4939 	inc	r6
   1364 BE 00 D5      [24] 4940 	cjne	r6,#0x00,00121$
   1367 0F            [12] 4941 	inc	r7
   1368 80 D2         [24] 4942 	sjmp	00121$
   136A                    4943 00107$:
                           4944 ;	d:\ztex\include\ztex-fpga-flash.h:65: if ( i != 8 ) {
   136A BE 08 05      [24] 4945 	cjne	r6,#0x08,00175$
   136D BF 00 02      [24] 4946 	cjne	r7,#0x00,00175$
   1370 80 18         [24] 4947 	sjmp	00109$
   1372                    4948 00175$:
                           4949 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1372 90 3A 48      [24] 4950 	mov	dptr,#_flash_sector_size
   1375 E0            [24] 4951 	movx	a,@dptr
   1376 FC            [12] 4952 	mov	r4,a
   1377 A3            [24] 4953 	inc	dptr
   1378 E0            [24] 4954 	movx	a,@dptr
   1379 FD            [12] 4955 	mov	r5,a
   137A EC            [12] 4956 	mov	a,r4
   137B C3            [12] 4957 	clr	c
   137C 9E            [12] 4958 	subb	a,r6
   137D F5 82         [12] 4959 	mov	dpl,a
   137F ED            [12] 4960 	mov	a,r5
   1380 9F            [12] 4961 	subb	a,r7
   1381 F5 83         [12] 4962 	mov	dph,a
   1383 12 09 0C      [24] 4963 	lcall	_flash_read_finish
                           4964 ;	d:\ztex\include\ztex-fpga-flash.h:67: return 3;
   1386 75 82 03      [24] 4965 	mov	dpl,#0x03
   1389 22            [24] 4966 	ret
   138A                    4967 00109$:
                           4968 ;	d:\ztex\include\ztex-fpga-flash.h:69: i = flash_read_byte();
   138A 12 06 76      [24] 4969 	lcall	_flash_read_byte
   138D AE 82         [24] 4970 	mov	r6,dpl
   138F 7F 00         [12] 4971 	mov	r7,#0x00
                           4972 ;	d:\ztex\include\ztex-fpga-flash.h:70: i |= flash_read_byte() << 8;
   1391 C0 07         [24] 4973 	push	ar7
   1393 C0 06         [24] 4974 	push	ar6
   1395 12 06 76      [24] 4975 	lcall	_flash_read_byte
   1398 AD 82         [24] 4976 	mov	r5,dpl
   139A D0 06         [24] 4977 	pop	ar6
   139C D0 07         [24] 4978 	pop	ar7
   139E 8D 04         [24] 4979 	mov	ar4,r5
   13A0 E4            [12] 4980 	clr	a
   13A1 42 06         [12] 4981 	orl	ar6,a
   13A3 EC            [12] 4982 	mov	a,r4
   13A4 42 07         [12] 4983 	orl	ar7,a
                           4984 ;	d:\ztex\include\ztex-fpga-flash.h:71: j = flash_read_byte();
   13A6 C0 07         [24] 4985 	push	ar7
   13A8 C0 06         [24] 4986 	push	ar6
   13AA 12 06 76      [24] 4987 	lcall	_flash_read_byte
   13AD AC 82         [24] 4988 	mov	r4,dpl
   13AF 7D 00         [12] 4989 	mov	r5,#0x00
                           4990 ;	d:\ztex\include\ztex-fpga-flash.h:72: j |= flash_read_byte() << 8;
   13B1 C0 05         [24] 4991 	push	ar5
   13B3 C0 04         [24] 4992 	push	ar4
   13B5 12 06 76      [24] 4993 	lcall	_flash_read_byte
   13B8 AB 82         [24] 4994 	mov	r3,dpl
   13BA D0 04         [24] 4995 	pop	ar4
   13BC D0 05         [24] 4996 	pop	ar5
   13BE 8B 02         [24] 4997 	mov	ar2,r3
   13C0 E4            [12] 4998 	clr	a
   13C1 42 04         [12] 4999 	orl	ar4,a
   13C3 EA            [12] 5000 	mov	a,r2
   13C4 42 05         [12] 5001 	orl	ar5,a
                           5002 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   13C6 90 3A 48      [24] 5003 	mov	dptr,#_flash_sector_size
   13C9 E0            [24] 5004 	movx	a,@dptr
   13CA FA            [12] 5005 	mov	r2,a
   13CB A3            [24] 5006 	inc	dptr
   13CC E0            [24] 5007 	movx	a,@dptr
   13CD FB            [12] 5008 	mov	r3,a
   13CE EA            [12] 5009 	mov	a,r2
   13CF 24 F4         [12] 5010 	add	a,#0xF4
   13D1 F5 82         [12] 5011 	mov	dpl,a
   13D3 EB            [12] 5012 	mov	a,r3
   13D4 34 FF         [12] 5013 	addc	a,#0xFF
   13D6 F5 83         [12] 5014 	mov	dph,a
   13D8 C0 05         [24] 5015 	push	ar5
   13DA C0 04         [24] 5016 	push	ar4
   13DC 12 09 0C      [24] 5017 	lcall	_flash_read_finish
   13DF D0 04         [24] 5018 	pop	ar4
   13E1 D0 05         [24] 5019 	pop	ar5
   13E3 D0 06         [24] 5020 	pop	ar6
   13E5 D0 07         [24] 5021 	pop	ar7
                           5022 ;	d:\ztex\include\ztex-fpga-flash.h:74: if ( i==0 )
   13E7 EE            [12] 5023 	mov	a,r6
   13E8 4F            [12] 5024 	orl	a,r7
   13E9 70 04         [24] 5025 	jnz	00111$
                           5026 ;	d:\ztex\include\ztex-fpga-flash.h:75: return 3;
   13EB 75 82 03      [24] 5027 	mov	dpl,#0x03
   13EE 22            [24] 5028 	ret
   13EF                    5029 00111$:
                           5030 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   13EF 90 00 01      [24] 5031 	mov	dptr,#(0x01&0x00ff)
   13F2 E4            [12] 5032 	clr	a
   13F3 F5 F0         [12] 5033 	mov	b,a
   13F5 C0 07         [24] 5034 	push	ar7
   13F7 C0 06         [24] 5035 	push	ar6
   13F9 C0 05         [24] 5036 	push	ar5
   13FB C0 04         [24] 5037 	push	ar4
   13FD 12 08 29      [24] 5038 	lcall	_flash_read_init
   1400 E5 82         [12] 5039 	mov	a,dpl
   1402 D0 04         [24] 5040 	pop	ar4
   1404 D0 05         [24] 5041 	pop	ar5
   1406 D0 06         [24] 5042 	pop	ar6
   1408 D0 07         [24] 5043 	pop	ar7
   140A 60 04         [24] 5044 	jz	00139$
                           5045 ;	d:\ztex\include\ztex-fpga-flash.h:79: return 2;
   140C 75 82 02      [24] 5046 	mov	dpl,#0x02
   140F 22            [24] 5047 	ret
                           5048 ;	d:\ztex\include\ztex-fpga-flash.h:80: for ( k=1; k<i; k++ ) {
   1410                    5049 00139$:
   1410 7A 01         [12] 5050 	mov	r2,#0x01
   1412 7B 00         [12] 5051 	mov	r3,#0x00
   1414                    5052 00124$:
   1414 C3            [12] 5053 	clr	c
   1415 EA            [12] 5054 	mov	a,r2
   1416 9E            [12] 5055 	subb	a,r6
   1417 EB            [12] 5056 	mov	a,r3
   1418 9F            [12] 5057 	subb	a,r7
   1419 50 39         [24] 5058 	jnc	00116$
                           5059 ;	d:\ztex\include\ztex-fpga-flash.h:81: fpga_send_bitstream_from_flash( flash_sector_size );
   141B 90 3A 48      [24] 5060 	mov	dptr,#_flash_sector_size
   141E E0            [24] 5061 	movx	a,@dptr
   141F F8            [12] 5062 	mov	r0,a
   1420 A3            [24] 5063 	inc	dptr
   1421 E0            [24] 5064 	movx	a,@dptr
   1422 F9            [12] 5065 	mov	r1,a
   1423 88 82         [24] 5066 	mov	dpl,r0
   1425 89 83         [24] 5067 	mov	dph,r1
   1427 C0 07         [24] 5068 	push	ar7
   1429 C0 06         [24] 5069 	push	ar6
   142B C0 05         [24] 5070 	push	ar5
   142D C0 04         [24] 5071 	push	ar4
   142F C0 03         [24] 5072 	push	ar3
   1431 C0 02         [24] 5073 	push	ar2
   1433 12 12 90      [24] 5074 	lcall	_fpga_send_bitstream_from_flash
                           5075 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1436 12 08 F4      [24] 5076 	lcall	_flash_read_next
   1439 E5 82         [12] 5077 	mov	a,dpl
   143B D0 02         [24] 5078 	pop	ar2
   143D D0 03         [24] 5079 	pop	ar3
   143F D0 04         [24] 5080 	pop	ar4
   1441 D0 05         [24] 5081 	pop	ar5
   1443 D0 06         [24] 5082 	pop	ar6
   1445 D0 07         [24] 5083 	pop	ar7
   1447 60 04         [24] 5084 	jz	00125$
                           5085 ;	d:\ztex\include\ztex-fpga-flash.h:83: return 2;
   1449 75 82 02      [24] 5086 	mov	dpl,#0x02
   144C 22            [24] 5087 	ret
   144D                    5088 00125$:
                           5089 ;	d:\ztex\include\ztex-fpga-flash.h:80: for ( k=1; k<i; k++ ) {
   144D 0A            [12] 5090 	inc	r2
   144E BA 00 C3      [24] 5091 	cjne	r2,#0x00,00124$
   1451 0B            [12] 5092 	inc	r3
   1452 80 C0         [24] 5093 	sjmp	00124$
   1454                    5094 00116$:
                           5095 ;	d:\ztex\include\ztex-fpga-flash.h:85: fpga_send_bitstream_from_flash( j );
   1454 8C 82         [24] 5096 	mov	dpl,r4
   1456 8D 83         [24] 5097 	mov	dph,r5
   1458 C0 05         [24] 5098 	push	ar5
   145A C0 04         [24] 5099 	push	ar4
   145C 12 12 90      [24] 5100 	lcall	_fpga_send_bitstream_from_flash
   145F D0 04         [24] 5101 	pop	ar4
   1461 D0 05         [24] 5102 	pop	ar5
                           5103 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1463 90 3A 48      [24] 5104 	mov	dptr,#_flash_sector_size
   1466 E0            [24] 5105 	movx	a,@dptr
   1467 FE            [12] 5106 	mov	r6,a
   1468 A3            [24] 5107 	inc	dptr
   1469 E0            [24] 5108 	movx	a,@dptr
   146A FF            [12] 5109 	mov	r7,a
   146B EE            [12] 5110 	mov	a,r6
   146C C3            [12] 5111 	clr	c
   146D 9C            [12] 5112 	subb	a,r4
   146E F5 82         [12] 5113 	mov	dpl,a
   1470 EF            [12] 5114 	mov	a,r7
   1471 9D            [12] 5115 	subb	a,r5
   1472 F5 83         [12] 5116 	mov	dph,a
   1474 12 09 0C      [24] 5117 	lcall	_flash_read_finish
   1477 12 11 D3      [24] 5118 	lcall	_finish_fpga_configuration
                           5119 ;	d:\ztex\include\ztex-fpga-flash.h:90: OEA &= ~bmBIT1;
   147A AF B2         [24] 5120 	mov	r7,_OEA
   147C 74 FD         [12] 5121 	mov	a,#0xFD
   147E 5F            [12] 5122 	anl	a,r7
   147F F5 B2         [12] 5123 	mov	_OEA,a
                           5124 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1481 30 81 09      [24] 5125 	jnb	_IOA1,00118$
                           5126 ;	d:\ztex\include\ztex-fpga-flash.h:92: IOA1 = 1;		
   1484 D2 81         [12] 5127 	setb	_IOA1
                           5128 ;	d:\ztex\include\ztex-fpga-flash.h:93: OEA |= bmBIT1;
   1486 43 B2 02      [24] 5129 	orl	_OEA,#0x02
                           5130 ;	d:\ztex\include\ztex-fpga-flash.h:94: return 0;
   1489 75 82 00      [24] 5131 	mov	dpl,#0x00
   148C 22            [24] 5132 	ret
   148D                    5133 00118$:
                           5134 ;	d:\ztex\include\ztex-fpga-flash.h:97: IOA1 = 1;		
   148D D2 81         [12] 5135 	setb	_IOA1
                           5136 ;	d:\ztex\include\ztex-fpga-flash.h:98: OEA |= bmBIT1;
   148F 43 B2 02      [24] 5137 	orl	_OEA,#0x02
                           5138 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1492 75 82 04      [24] 5139 	mov	dpl,#0x04
   1495 22            [24] 5140 	ret
                           5141 ;------------------------------------------------------------
                           5142 ;Allocation info for local variables in function 'fpga_first_free_sector'
                           5143 ;------------------------------------------------------------
                           5144 ;i                         Allocated to registers r7 
                           5145 ;j                         Allocated to registers r6 
                           5146 ;------------------------------------------------------------
                           5147 ;	d:\ztex\include\ztex-fpga-flash.h:108: WORD fpga_first_free_sector() {
                           5148 ;	-----------------------------------------
                           5149 ;	 function fpga_first_free_sector
                           5150 ;	-----------------------------------------
   1496                    5151 _fpga_first_free_sector:
                           5152 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1496 90 00 00      [24] 5153 	mov	dptr,#(0x00&0x00ff)
   1499 E4            [12] 5154 	clr	a
   149A F5 F0         [12] 5155 	mov	b,a
   149C 12 08 29      [24] 5156 	lcall	_flash_read_init
                           5157 ;	d:\ztex\include\ztex-fpga-flash.h:111: for ( i=0; i<8 && flash_read_byte()==fpga_flash_boot_id[i]; i++ );
   149F 7F 00         [12] 5158 	mov	r7,#0x00
   14A1                    5159 00106$:
   14A1 BF 08 00      [24] 5160 	cjne	r7,#0x08,00123$
   14A4                    5161 00123$:
   14A4 50 16         [24] 5162 	jnc	00101$
   14A6 C0 07         [24] 5163 	push	ar7
   14A8 12 06 76      [24] 5164 	lcall	_flash_read_byte
   14AB AE 82         [24] 5165 	mov	r6,dpl
   14AD D0 07         [24] 5166 	pop	ar7
   14AF EF            [12] 5167 	mov	a,r7
   14B0 90 24 0E      [24] 5168 	mov	dptr,#_fpga_flash_boot_id
   14B3 93            [24] 5169 	movc	a,@a+dptr
   14B4 FD            [12] 5170 	mov	r5,a
   14B5 EE            [12] 5171 	mov	a,r6
   14B6 B5 05 03      [24] 5172 	cjne	a,ar5,00101$
   14B9 0F            [12] 5173 	inc	r7
   14BA 80 E5         [24] 5174 	sjmp	00106$
   14BC                    5175 00101$:
                           5176 ;	d:\ztex\include\ztex-fpga-flash.h:112: if ( i != 8 ) {
   14BC BF 08 02      [24] 5177 	cjne	r7,#0x08,00127$
   14BF 80 1A         [24] 5178 	sjmp	00103$
   14C1                    5179 00127$:
                           5180 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   14C1 7E 00         [12] 5181 	mov	r6,#0x00
   14C3 90 3A 48      [24] 5182 	mov	dptr,#_flash_sector_size
   14C6 E0            [24] 5183 	movx	a,@dptr
   14C7 FC            [12] 5184 	mov	r4,a
   14C8 A3            [24] 5185 	inc	dptr
   14C9 E0            [24] 5186 	movx	a,@dptr
   14CA FD            [12] 5187 	mov	r5,a
   14CB EC            [12] 5188 	mov	a,r4
   14CC C3            [12] 5189 	clr	c
   14CD 9F            [12] 5190 	subb	a,r7
   14CE F5 82         [12] 5191 	mov	dpl,a
   14D0 ED            [12] 5192 	mov	a,r5
   14D1 9E            [12] 5193 	subb	a,r6
   14D2 F5 83         [12] 5194 	mov	dph,a
   14D4 12 09 0C      [24] 5195 	lcall	_flash_read_finish
                           5196 ;	d:\ztex\include\ztex-fpga-flash.h:114: return 0;
   14D7 90 00 00      [24] 5197 	mov	dptr,#0x0000
   14DA 22            [24] 5198 	ret
   14DB                    5199 00103$:
                           5200 ;	d:\ztex\include\ztex-fpga-flash.h:116: i=flash_read_byte();
   14DB 12 06 76      [24] 5201 	lcall	_flash_read_byte
   14DE AF 82         [24] 5202 	mov	r7,dpl
                           5203 ;	d:\ztex\include\ztex-fpga-flash.h:117: j=flash_read_byte();
   14E0 C0 07         [24] 5204 	push	ar7
   14E2 12 06 76      [24] 5205 	lcall	_flash_read_byte
   14E5 AE 82         [24] 5206 	mov	r6,dpl
                           5207 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   14E7 90 3A 48      [24] 5208 	mov	dptr,#_flash_sector_size
   14EA E0            [24] 5209 	movx	a,@dptr
   14EB FC            [12] 5210 	mov	r4,a
   14EC A3            [24] 5211 	inc	dptr
   14ED E0            [24] 5212 	movx	a,@dptr
   14EE FD            [12] 5213 	mov	r5,a
   14EF EC            [12] 5214 	mov	a,r4
   14F0 24 F6         [12] 5215 	add	a,#0xF6
   14F2 F5 82         [12] 5216 	mov	dpl,a
   14F4 ED            [12] 5217 	mov	a,r5
   14F5 34 FF         [12] 5218 	addc	a,#0xFF
   14F7 F5 83         [12] 5219 	mov	dph,a
   14F9 C0 06         [24] 5220 	push	ar6
   14FB 12 09 0C      [24] 5221 	lcall	_flash_read_finish
   14FE D0 06         [24] 5222 	pop	ar6
   1500 D0 07         [24] 5223 	pop	ar7
                           5224 ;	d:\ztex\include\ztex-fpga-flash.h:120: return (i | (j<<8))+1;
   1502 8E 05         [24] 5225 	mov	ar5,r6
   1504 E4            [12] 5226 	clr	a
   1505 FE            [12] 5227 	mov	r6,a
   1506 FC            [12] 5228 	mov	r4,a
   1507 EF            [12] 5229 	mov	a,r7
   1508 42 06         [12] 5230 	orl	ar6,a
   150A EC            [12] 5231 	mov	a,r4
   150B 42 05         [12] 5232 	orl	ar5,a
   150D 8E 82         [24] 5233 	mov	dpl,r6
   150F 8D 83         [24] 5234 	mov	dph,r5
   1511 A3            [24] 5235 	inc	dptr
   1512 22            [24] 5236 	ret
                           5237 ;------------------------------------------------------------
                           5238 ;Allocation info for local variables in function 'fpga_configure_from_flash_init'
                           5239 ;------------------------------------------------------------
                           5240 ;	d:\ztex\include\ztex-fpga-flash.h:128: void fpga_configure_from_flash_init() {
                           5241 ;	-----------------------------------------
                           5242 ;	 function fpga_configure_from_flash_init
                           5243 ;	-----------------------------------------
   1513                    5244 _fpga_configure_from_flash_init:
                           5245 ;	d:\ztex\include\ztex-fpga-flash.h:129: if ( ! flash_enabled ) {
   1513 90 3A 47      [24] 5246 	mov	dptr,#_flash_enabled
   1516 E0            [24] 5247 	movx	a,@dptr
   1517 FF            [12] 5248 	mov	r7,a
   1518 70 07         [24] 5249 	jnz	00102$
                           5250 ;	d:\ztex\include\ztex-fpga-flash.h:130: fpga_flash_result = 2;
   151A 90 3A 69      [24] 5251 	mov	dptr,#_fpga_flash_result
   151D 74 02         [12] 5252 	mov	a,#0x02
   151F F0            [24] 5253 	movx	@dptr,a
                           5254 ;	d:\ztex\include\ztex-fpga-flash.h:131: return;
   1520 22            [24] 5255 	ret
   1521                    5256 00102$:
                           5257 ;	d:\ztex\include\ztex-fpga-flash.h:134: fpga_flash_result = fpga_configure_from_flash(0);
   1521 75 82 00      [24] 5258 	mov	dpl,#0x00
   1524 12 13 0C      [24] 5259 	lcall	_fpga_configure_from_flash
   1527 AF 82         [24] 5260 	mov	r7,dpl
   1529 90 3A 69      [24] 5261 	mov	dptr,#_fpga_flash_result
   152C EF            [12] 5262 	mov	a,r7
   152D F0            [24] 5263 	movx	@dptr,a
                           5264 ;	d:\ztex\include\ztex-fpga-flash.h:135: if ( fpga_flash_result == 1 ) {
   152E BF 01 03      [24] 5265 	cjne	r7,#0x01,00106$
                           5266 ;	d:\ztex\include\ztex-fpga-flash.h:136: post_fpga_config();
   1531 02 11 B9      [24] 5267 	ljmp	_post_fpga_config
   1534                    5268 00106$:
                           5269 ;	d:\ztex\include\ztex-fpga-flash.h:138: else if ( fpga_flash_result == 4 ) {
   1534 BF 04 0C      [24] 5270 	cjne	r7,#0x04,00108$
                           5271 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1537 75 82 00      [24] 5272 	mov	dpl,#0x00
   153A 12 13 0C      [24] 5273 	lcall	_fpga_configure_from_flash
   153D E5 82         [12] 5274 	mov	a,dpl
   153F 90 3A 69      [24] 5275 	mov	dptr,#_fpga_flash_result
   1542 F0            [24] 5276 	movx	@dptr,a
   1543                    5277 00108$:
   1543 22            [24] 5278 	ret
                           5279 ;------------------------------------------------------------
                           5280 ;Allocation info for local variables in function 'abscode_identity'
                           5281 ;------------------------------------------------------------
                           5282 ;	d:\ztex\include\ztex-conf.h:31: ]
                           5283 ;	-----------------------------------------
                           5284 ;	 function abscode_identity
                           5285 ;	-----------------------------------------
   1544                    5286 _abscode_identity:
                           5287 ;	d:\ztex\include\ztex-descriptors.h:181: + 64
                           5288 	.area ABSCODE (ABS,CODE)
   006C                    5289 	.org 0x06c
   006C 28                 5290 	.db 40
   006D                    5291 	.org _ZTEX_DESCRIPTOR_VERSION
   006D 01                 5292 	.db 1
   006E                    5293 	.org _ZTEXID
   006E 5A 54 45 58        5294 	.ascii "ZTEX"
   0072                    5295 	.org _PRODUCT_ID
   0072 0A                 5296 	.db 10
   0073 0C                 5297 	.db 12
   0074 00                 5298 	.db 0
   0075 00                 5299 	.db 0
   0076                    5300 	.org _FW_VERSION
   0076 00                 5301 	.db 0
   0077                    5302 	.org _INTERFACE_VERSION
   0077 01                 5303 	.db 1
   0078                    5304 	.org _INTERFACE_CAPABILITIES
                           5305 ;	# 165 "d:\\ztex\\include\\ztex-descriptors.h"
   0078 07                 5306 	.db 0 + 1 + 2 + 4
                           5307 ;	# 187 "d:\\ztex\\include\\ztex-descriptors.h"
   0079 00                 5308 	.db 0
   007A 00                 5309 	.db 0
   007B 00                 5310 	.db 0
   007C 00                 5311 	.db 0
   007D 00                 5312 	.db 0
   007E                    5313 	.org _MODULE_RESERVED
   007E 00                 5314 	.db 0
   007F 00                 5315 	.db 0
   0080 00                 5316 	.db 0
   0081 00                 5317 	.db 0
   0082 00                 5318 	.db 0
   0083 00                 5319 	.db 0
   0084 00                 5320 	.db 0
   0085 00                 5321 	.db 0
   0086 00                 5322 	.db 0
   0087 00                 5323 	.db 0
   0088 00                 5324 	.db 0
   0089 00                 5325 	.db 0
   008A                    5326 	.org _SN_STRING
   008A 30 30 30 30 30 30  5327 	.ascii "0000000000"
        30 30 30 30
                           5328 	.area CSEG (CODE)
   1544 22            [24] 5329 	ret
                           5330 ;------------------------------------------------------------
                           5331 ;Allocation info for local variables in function 'resetToggleData'
                           5332 ;------------------------------------------------------------
                           5333 ;	d:\ztex\include\ztex-isr.h:34: static void resetToggleData () {
                           5334 ;	-----------------------------------------
                           5335 ;	 function resetToggleData
                           5336 ;	-----------------------------------------
   1545                    5337 _resetToggleData:
                           5338 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1545 90 E6 83      [24] 5339 	mov	dptr,#_TOGCTL
   1548 E4            [12] 5340 	clr	a
   1549 F0            [24] 5341 	movx	@dptr,a
                           5342 ;	d:\ztex\include\ztex-isr.h:46: TOGCTL = 0 | bmBIT5;
                           5343 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
                           5344 ;	d:\ztex\include\ztex-isr.h:48: TOGCTL = 0x10 | bmBIT5;
                           5345 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   154A 90 E6 83      [24] 5346 	mov	dptr,#_TOGCTL
   154D 74 20         [12] 5347 	mov	a,#0x20
   154F F0            [24] 5348 	movx	@dptr,a
   1550 74 10         [12] 5349 	mov	a,#0x10
   1552 F0            [24] 5350 	movx	@dptr,a
   1553 74 30         [12] 5351 	mov	a,#0x30
   1555 F0            [24] 5352 	movx	@dptr,a
   1556 74 01         [12] 5353 	mov	a,#0x01
   1558 F0            [24] 5354 	movx	@dptr,a
                           5355 ;	d:\ztex\include\ztex-isr.h:51: TOGCTL = 1 | bmBIT5;
                           5356 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
                           5357 ;	d:\ztex\include\ztex-isr.h:55: TOGCTL = 0x11 | bmBIT5;
   1559 90 E6 83      [24] 5358 	mov	dptr,#_TOGCTL
   155C 74 21         [12] 5359 	mov	a,#0x21
   155E F0            [24] 5360 	movx	@dptr,a
   155F 74 11         [12] 5361 	mov	a,#0x11
   1561 F0            [24] 5362 	movx	@dptr,a
   1562 74 31         [12] 5363 	mov	a,#0x31
   1564 F0            [24] 5364 	movx	@dptr,a
   1565 22            [24] 5365 	ret
                           5366 ;------------------------------------------------------------
                           5367 ;Allocation info for local variables in function 'sendStringDescriptor'
                           5368 ;------------------------------------------------------------
                           5369 ;hiAddr                    Allocated with name '_sendStringDescriptor_PARM_2'
                           5370 ;size                      Allocated with name '_sendStringDescriptor_PARM_3'
                           5371 ;loAddr                    Allocated to registers r7 
                           5372 ;i                         Allocated to registers r7 
                           5373 ;------------------------------------------------------------
                           5374 ;	d:\ztex\include\ztex-isr.h:68: static void sendStringDescriptor (BYTE loAddr, BYTE hiAddr, BYTE size)
                           5375 ;	-----------------------------------------
                           5376 ;	 function sendStringDescriptor
                           5377 ;	-----------------------------------------
   1566                    5378 _sendStringDescriptor:
   1566 AF 82         [24] 5379 	mov	r7,dpl
                           5380 ;	d:\ztex\include\ztex-isr.h:71: if ( size > 31) size = 31;
   1568 E5 12         [12] 5381 	mov	a,_sendStringDescriptor_PARM_3
   156A 24 E0         [12] 5382 	add	a,#0xff - 0x1F
   156C 50 03         [24] 5383 	jnc	00102$
   156E 75 12 1F      [24] 5384 	mov	_sendStringDescriptor_PARM_3,#0x1F
   1571                    5385 00102$:
                           5386 ;	d:\ztex\include\ztex-isr.h:72: if (SETUPDAT[7] == 0 && SETUPDAT[6]<size ) size = SETUPDAT[6];
   1571 90 E6 BF      [24] 5387 	mov	dptr,#(_SETUPDAT + 0x0007)
   1574 E0            [24] 5388 	movx	a,@dptr
   1575 70 10         [24] 5389 	jnz	00104$
   1577 90 E6 BE      [24] 5390 	mov	dptr,#(_SETUPDAT + 0x0006)
   157A E0            [24] 5391 	movx	a,@dptr
   157B FE            [12] 5392 	mov	r6,a
   157C C3            [12] 5393 	clr	c
   157D 95 12         [12] 5394 	subb	a,_sendStringDescriptor_PARM_3
   157F 50 06         [24] 5395 	jnc	00104$
   1581 90 E6 BE      [24] 5396 	mov	dptr,#(_SETUPDAT + 0x0006)
   1584 E0            [24] 5397 	movx	a,@dptr
   1585 F5 12         [12] 5398 	mov	_sendStringDescriptor_PARM_3,a
   1587                    5399 00104$:
                           5400 ;	d:\ztex\include\ztex-isr.h:73: AUTOPTRSETUP = 7;
   1587 75 AF 07      [24] 5401 	mov	_AUTOPTRSETUP,#0x07
                           5402 ;	d:\ztex\include\ztex-isr.h:74: AUTOPTRL1 = loAddr;
   158A 8F 9B         [24] 5403 	mov	_AUTOPTRL1,r7
                           5404 ;	d:\ztex\include\ztex-isr.h:75: AUTOPTRH1 = hiAddr;
   158C 85 11 9A      [24] 5405 	mov	_AUTOPTRH1,_sendStringDescriptor_PARM_2
                           5406 ;	d:\ztex\include\ztex-isr.h:76: AUTOPTRL2 = (BYTE)(((unsigned short)(&EP0BUF))+1);
   158F 7E 40         [12] 5407 	mov	r6,#_EP0BUF
   1591 7F E7         [12] 5408 	mov	r7,#(_EP0BUF >> 8)
   1593 EE            [12] 5409 	mov	a,r6
   1594 04            [12] 5410 	inc	a
   1595 F5 9E         [12] 5411 	mov	_AUTOPTRL2,a
                           5412 ;	d:\ztex\include\ztex-isr.h:77: AUTOPTRH2 = (BYTE)((((unsigned short)(&EP0BUF))+1) >> 8);
   1597 7E 40         [12] 5413 	mov	r6,#_EP0BUF
   1599 7F E7         [12] 5414 	mov	r7,#(_EP0BUF >> 8)
   159B 0E            [12] 5415 	inc	r6
   159C BE 00 01      [24] 5416 	cjne	r6,#0x00,00131$
   159F 0F            [12] 5417 	inc	r7
   15A0                    5418 00131$:
   15A0 8F 9D         [24] 5419 	mov	_AUTOPTRH2,r7
                           5420 ;	d:\ztex\include\ztex-isr.h:78: XAUTODAT2 = 3;
   15A2 90 E6 7C      [24] 5421 	mov	dptr,#_XAUTODAT2
   15A5 74 03         [12] 5422 	mov	a,#0x03
   15A7 F0            [24] 5423 	movx	@dptr,a
                           5424 ;	d:\ztex\include\ztex-isr.h:79: for (i=0; i<size; i++) {
   15A8 7F 00         [12] 5425 	mov	r7,#0x00
   15AA                    5426 00108$:
   15AA C3            [12] 5427 	clr	c
   15AB EF            [12] 5428 	mov	a,r7
   15AC 95 12         [12] 5429 	subb	a,_sendStringDescriptor_PARM_3
   15AE 50 11         [24] 5430 	jnc	00106$
                           5431 ;	d:\ztex\include\ztex-isr.h:80: XAUTODAT2 = XAUTODAT1;
   15B0 90 E6 7B      [24] 5432 	mov	dptr,#_XAUTODAT1
   15B3 E0            [24] 5433 	movx	a,@dptr
   15B4 FE            [12] 5434 	mov	r6,a
   15B5 90 E6 7C      [24] 5435 	mov	dptr,#_XAUTODAT2
   15B8 F0            [24] 5436 	movx	@dptr,a
                           5437 ;	d:\ztex\include\ztex-isr.h:81: XAUTODAT2 = 0;
   15B9 90 E6 7C      [24] 5438 	mov	dptr,#_XAUTODAT2
   15BC E4            [12] 5439 	clr	a
   15BD F0            [24] 5440 	movx	@dptr,a
                           5441 ;	d:\ztex\include\ztex-isr.h:79: for (i=0; i<size; i++) {
   15BE 0F            [12] 5442 	inc	r7
   15BF 80 E9         [24] 5443 	sjmp	00108$
   15C1                    5444 00106$:
                           5445 ;	d:\ztex\include\ztex-isr.h:83: i = (size+1) << 1;
   15C1 E5 12         [12] 5446 	mov	a,_sendStringDescriptor_PARM_3
   15C3 04            [12] 5447 	inc	a
                           5448 ;	d:\ztex\include\ztex-isr.h:84: EP0BUF[0] = i;
   15C4 25 E0         [12] 5449 	add	a,acc
   15C6 FF            [12] 5450 	mov	r7,a
   15C7 90 E7 40      [24] 5451 	mov	dptr,#_EP0BUF
   15CA F0            [24] 5452 	movx	@dptr,a
                           5453 ;	d:\ztex\include\ztex-isr.h:85: EP0BUF[1] = 3;
   15CB 90 E7 41      [24] 5454 	mov	dptr,#(_EP0BUF + 0x0001)
   15CE 74 03         [12] 5455 	mov	a,#0x03
   15D0 F0            [24] 5456 	movx	@dptr,a
                           5457 ;	d:\ztex\include\ztex-isr.h:86: EP0BCH = 0;
   15D1 90 E6 8A      [24] 5458 	mov	dptr,#_EP0BCH
   15D4 E4            [12] 5459 	clr	a
   15D5 F0            [24] 5460 	movx	@dptr,a
                           5461 ;	d:\ztex\include\ztex-isr.h:87: EP0BCL = i;
   15D6 90 E6 8B      [24] 5462 	mov	dptr,#_EP0BCL
   15D9 EF            [12] 5463 	mov	a,r7
   15DA F0            [24] 5464 	movx	@dptr,a
   15DB 22            [24] 5465 	ret
                           5466 ;------------------------------------------------------------
                           5467 ;Allocation info for local variables in function 'ep0_payload_update'
                           5468 ;------------------------------------------------------------
                           5469 ;	d:\ztex\include\ztex-isr.h:93: static void ep0_payload_update() {
                           5470 ;	-----------------------------------------
                           5471 ;	 function ep0_payload_update
                           5472 ;	-----------------------------------------
   15DC                    5473 _ep0_payload_update:
                           5474 ;	d:\ztex\include\ztex-isr.h:94: ep0_payload_transfer = ( ep0_payload_remaining > 64 ) ? 64 : ep0_payload_remaining;
   15DC 90 3A 6A      [24] 5475 	mov	dptr,#_ep0_payload_remaining
   15DF E0            [24] 5476 	movx	a,@dptr
   15E0 FE            [12] 5477 	mov	r6,a
   15E1 A3            [24] 5478 	inc	dptr
   15E2 E0            [24] 5479 	movx	a,@dptr
   15E3 FF            [12] 5480 	mov	r7,a
   15E4 C3            [12] 5481 	clr	c
   15E5 74 40         [12] 5482 	mov	a,#0x40
   15E7 9E            [12] 5483 	subb	a,r6
   15E8 E4            [12] 5484 	clr	a
   15E9 9F            [12] 5485 	subb	a,r7
   15EA 50 06         [24] 5486 	jnc	00103$
   15EC 7C 40         [12] 5487 	mov	r4,#0x40
   15EE 7D 00         [12] 5488 	mov	r5,#0x00
   15F0 80 04         [24] 5489 	sjmp	00104$
   15F2                    5490 00103$:
   15F2 8E 04         [24] 5491 	mov	ar4,r6
   15F4 8F 05         [24] 5492 	mov	ar5,r7
   15F6                    5493 00104$:
   15F6 90 3A 6C      [24] 5494 	mov	dptr,#_ep0_payload_transfer
   15F9 EC            [12] 5495 	mov	a,r4
   15FA F0            [24] 5496 	movx	@dptr,a
                           5497 ;	d:\ztex\include\ztex-isr.h:95: ep0_payload_remaining -= ep0_payload_transfer;
   15FB 7D 00         [12] 5498 	mov	r5,#0x00
   15FD 90 3A 6A      [24] 5499 	mov	dptr,#_ep0_payload_remaining
   1600 EE            [12] 5500 	mov	a,r6
   1601 C3            [12] 5501 	clr	c
   1602 9C            [12] 5502 	subb	a,r4
   1603 F0            [24] 5503 	movx	@dptr,a
   1604 EF            [12] 5504 	mov	a,r7
   1605 9D            [12] 5505 	subb	a,r5
   1606 A3            [24] 5506 	inc	dptr
   1607 F0            [24] 5507 	movx	@dptr,a
   1608 22            [24] 5508 	ret
                           5509 ;------------------------------------------------------------
                           5510 ;Allocation info for local variables in function 'ep0_vendor_cmd_su'
                           5511 ;------------------------------------------------------------
                           5512 ;	d:\ztex\include\ztex-isr.h:102: static void ep0_vendor_cmd_su() {
                           5513 ;	-----------------------------------------
                           5514 ;	 function ep0_vendor_cmd_su
                           5515 ;	-----------------------------------------
   1609                    5516 _ep0_vendor_cmd_su:
                           5517 ;	d:\ztex\include\ztex-isr.h:103: switch ( ep0_prev_setup_request ) {
   1609 90 3A 6F      [24] 5518 	mov	dptr,#_ep0_prev_setup_request
   160C E0            [24] 5519 	movx	a,@dptr
   160D FF            [12] 5520 	mov	r7,a
   160E 60 21         [24] 5521 	jz	00102$
   1610 BF 02 02      [24] 5522 	cjne	r7,#0x02,00164$
   1613 80 22         [24] 5523 	sjmp	00105$
   1615                    5524 00164$:
   1615 BF 04 02      [24] 5525 	cjne	r7,#0x04,00165$
   1618 80 20         [24] 5526 	sjmp	00106$
   161A                    5527 00165$:
   161A BF 31 03      [24] 5528 	cjne	r7,#0x31,00166$
   161D 02 17 3B      [24] 5529 	ljmp	00118$
   1620                    5530 00166$:
   1620 BF 32 01      [24] 5531 	cjne	r7,#0x32,00167$
   1623 22            [24] 5532 	ret
   1624                    5533 00167$:
   1624 BF 39 02      [24] 5534 	cjne	r7,#0x39,00168$
   1627 80 14         [24] 5535 	sjmp	00107$
   1629                    5536 00168$:
   1629 BF 42 02      [24] 5537 	cjne	r7,#0x42,00169$
   162C 80 34         [24] 5538 	sjmp	00108$
   162E                    5539 00169$:
   162E 02 17 3E      [24] 5540 	ljmp	00120$
                           5541 ;	usb-test.c:130: while (READY == 0);
   1631                    5542 00102$:
   1631 30 A1 FD      [24] 5543 	jnb	_IOC1,00102$
                           5544 ;	usb-test.c:131: receiveLen();
                           5545 ;	d:\ztex\include\ztex-conf.h:125: break;
   1634 02 02 BA      [24] 5546 	ljmp	_receiveLen
                           5547 ;	d:\ztex\include\ztex-conf.h:123: case $0:			
   1637                    5548 00105$:
                           5549 ;	usb-test.c:148: receiveLen();
                           5550 ;	d:\ztex\include\ztex-conf.h:125: break;
   1637 02 02 BA      [24] 5551 	ljmp	_receiveLen
                           5552 ;	d:\ztex\include\ztex-conf.h:123: case $0:			
   163A                    5553 00106$:
                           5554 ;	usb-test.c:165: receiveLen();
                           5555 ;	d:\ztex\include\ztex-conf.h:125: break;
   163A 02 02 BA      [24] 5556 	ljmp	_receiveLen
                           5557 ;	d:\ztex\include\ztex-conf.h:123: case $0:			
   163D                    5558 00107$:
                           5559 ;	d:\ztex\include\ztex-eeprom.h:233: eeprom_write_checksum = 0;
   163D 90 3A 46      [24] 5560 	mov	dptr,#_eeprom_write_checksum
                           5561 ;	d:\ztex\include\ztex-eeprom.h:234: eeprom_write_bytes = 0;
   1640 E4            [12] 5562 	clr	a
   1641 F0            [24] 5563 	movx	@dptr,a
   1642 90 3A 44      [24] 5564 	mov	dptr,#_eeprom_write_bytes
   1645 F0            [24] 5565 	movx	@dptr,a
   1646 E4            [12] 5566 	clr	a
   1647 A3            [24] 5567 	inc	dptr
   1648 F0            [24] 5568 	movx	@dptr,a
                           5569 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1649 90 E6 BB      [24] 5570 	mov	dptr,#(_SETUPDAT + 0x0003)
   164C E0            [24] 5571 	movx	a,@dptr
   164D FE            [12] 5572 	mov	r6,a
   164E 7F 00         [12] 5573 	mov	r7,#0x00
   1650 90 E6 BA      [24] 5574 	mov	dptr,#(_SETUPDAT + 0x0002)
   1653 E0            [24] 5575 	movx	a,@dptr
   1654 FD            [12] 5576 	mov	r5,a
   1655 7C 00         [12] 5577 	mov	r4,#0x00
   1657 90 3A 42      [24] 5578 	mov	dptr,#_eeprom_addr
   165A ED            [12] 5579 	mov	a,r5
   165B 4F            [12] 5580 	orl	a,r7
   165C F0            [24] 5581 	movx	@dptr,a
   165D EC            [12] 5582 	mov	a,r4
   165E 4E            [12] 5583 	orl	a,r6
   165F A3            [24] 5584 	inc	dptr
   1660 F0            [24] 5585 	movx	@dptr,a
                           5586 ;	d:\ztex\include\ztex-conf.h:125: break;
   1661 22            [24] 5587 	ret
                           5588 ;	d:\ztex\include\ztex-conf.h:123: case $0:			
   1662                    5589 00108$:
                           5590 ;	d:\ztex\include\ztex-flash1.h:1201: if ( (MMC_IO & MMC_bmCS) == 0 ) {
   1662 E5 A0         [12] 5591 	mov	a,_IOC
   1664 20 E5 16      [24] 5592 	jb	acc.5,00110$
                           5593 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1667 90 3A 4E      [24] 5594 	mov	dptr,#_flash_ec
   166A 74 04         [12] 5595 	mov	a,#0x04
   166C F0            [24] 5596 	movx	@dptr,a
   166D 90 E6 A0      [24] 5597 	mov	dptr,#_EP0CS
   1670 E0            [24] 5598 	movx	a,@dptr
   1671 44 01         [12] 5599 	orl	a,#0x01
   1673 F0            [24] 5600 	movx	@dptr,a
                           5601 ;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
   1674 90 3A 6A      [24] 5602 	mov	dptr,#_ep0_payload_remaining
   1677 E4            [12] 5603 	clr	a
   1678 F0            [24] 5604 	movx	@dptr,a
   1679 E4            [12] 5605 	clr	a
   167A A3            [24] 5606 	inc	dptr
   167B F0            [24] 5607 	movx	@dptr,a
                           5608 ;	d:\ztex\include\ztex-conf.h:139: break;
   167C 22            [24] 5609 	ret
   167D                    5610 00110$:
                           5611 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   167D 12 07 C0      [24] 5612 	lcall	_mmc_select
   1680 E5 82         [12] 5613 	mov	a,dpl
   1682 60 13         [24] 5614 	jz	00112$
                           5615 ;	d:\ztex\include\ztex-flash1.h:1206: mmc_deselect();
   1684 12 07 D3      [24] 5616 	lcall	_mmc_deselect
                           5617 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1687 90 E6 A0      [24] 5618 	mov	dptr,#_EP0CS
   168A E0            [24] 5619 	movx	a,@dptr
   168B 44 01         [12] 5620 	orl	a,#0x01
   168D F0            [24] 5621 	movx	@dptr,a
                           5622 ;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
   168E 90 3A 6A      [24] 5623 	mov	dptr,#_ep0_payload_remaining
   1691 E4            [12] 5624 	clr	a
   1692 F0            [24] 5625 	movx	@dptr,a
   1693 E4            [12] 5626 	clr	a
   1694 A3            [24] 5627 	inc	dptr
   1695 F0            [24] 5628 	movx	@dptr,a
                           5629 ;	d:\ztex\include\ztex-conf.h:139: break;
   1696 22            [24] 5630 	ret
   1697                    5631 00112$:
                           5632 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1697 75 82 08      [24] 5633 	mov	dpl,#0x08
   169A 12 06 6C      [24] 5634 	lcall	_mmc_clocks
                           5635 ;	d:\ztex\include\ztex-flash1.h:1210: mmc_last_cmd = 25;
   169D 90 3A 4F      [24] 5636 	mov	dptr,#_mmc_last_cmd
   16A0 74 19         [12] 5637 	mov	a,#0x19
   16A2 F0            [24] 5638 	movx	@dptr,a
                           5639 ;	d:\ztex\include\ztex-flash1.h:1211: mmc_buffer[0] = 25 | 64;
   16A3 90 3A 52      [24] 5640 	mov	dptr,#_mmc_buffer
   16A6 74 59         [12] 5641 	mov	a,#0x59
   16A8 F0            [24] 5642 	movx	@dptr,a
                           5643 ;	d:\ztex\include\ztex-flash1.h:1212: if ( mmc_version == 0 ) {
   16A9 90 3A 51      [24] 5644 	mov	dptr,#_mmc_version
   16AC E0            [24] 5645 	movx	a,@dptr
   16AD FF            [12] 5646 	mov	r7,a
   16AE 70 23         [24] 5647 	jnz	00114$
                           5648 ;	d:\ztex\include\ztex-flash1.h:1232: __endasm;
   16B0 C3            [12] 5649 	clr c
   16B1 90 E6 BA      [24] 5650 	mov dptr,#(_SETUPDAT + 2)
   16B4 E0            [24] 5651 	movx a,@dptr
   16B5 90 3A 55      [24] 5652 	mov dptr,#(_mmc_buffer + 3)
   16B8 33            [12] 5653 	rlc a
   16B9 F0            [24] 5654 	movx @dptr,a
   16BA 90 E6 BB      [24] 5655 	mov dptr,#(_SETUPDAT + 3)
   16BD E0            [24] 5656 	movx a,@dptr
   16BE 90 3A 54      [24] 5657 	mov dptr,#(_mmc_buffer + 2)
   16C1 33            [12] 5658 	rlc a
   16C2 F0            [24] 5659 	movx @dptr,a
   16C3 90 E6 BC      [24] 5660 	mov dptr,#(_SETUPDAT + 4)
   16C6 E0            [24] 5661 	movx a,@dptr
   16C7 90 3A 53      [24] 5662 	mov dptr,#(_mmc_buffer + 1)
   16CA 33            [12] 5663 	rlc a
   16CB F0            [24] 5664 	movx @dptr,a
                           5665 ;	d:\ztex\include\ztex-flash1.h:1233: mmc_buffer[4] = 0;
   16CC 90 3A 56      [24] 5666 	mov	dptr,#(_mmc_buffer + 0x0004)
   16CF E4            [12] 5667 	clr	a
   16D0 F0            [24] 5668 	movx	@dptr,a
   16D1 80 21         [24] 5669 	sjmp	00115$
   16D3                    5670 00114$:
                           5671 ;	d:\ztex\include\ztex-flash1.h:1236: mmc_buffer[1] = SETUPDAT[5];
   16D3 90 E6 BD      [24] 5672 	mov	dptr,#(_SETUPDAT + 0x0005)
   16D6 E0            [24] 5673 	movx	a,@dptr
   16D7 90 3A 53      [24] 5674 	mov	dptr,#(_mmc_buffer + 0x0001)
   16DA F0            [24] 5675 	movx	@dptr,a
                           5676 ;	d:\ztex\include\ztex-flash1.h:1237: mmc_buffer[2] = SETUPDAT[4];
   16DB 90 E6 BC      [24] 5677 	mov	dptr,#(_SETUPDAT + 0x0004)
   16DE E0            [24] 5678 	movx	a,@dptr
   16DF 90 3A 54      [24] 5679 	mov	dptr,#(_mmc_buffer + 0x0002)
   16E2 F0            [24] 5680 	movx	@dptr,a
                           5681 ;	d:\ztex\include\ztex-flash1.h:1238: mmc_buffer[3] = SETUPDAT[3];
   16E3 90 E6 BB      [24] 5682 	mov	dptr,#(_SETUPDAT + 0x0003)
   16E6 E0            [24] 5683 	movx	a,@dptr
   16E7 90 3A 55      [24] 5684 	mov	dptr,#(_mmc_buffer + 0x0003)
   16EA F0            [24] 5685 	movx	@dptr,a
                           5686 ;	d:\ztex\include\ztex-flash1.h:1239: mmc_buffer[4] = SETUPDAT[2];
   16EB 90 E6 BA      [24] 5687 	mov	dptr,#(_SETUPDAT + 0x0002)
   16EE E0            [24] 5688 	movx	a,@dptr
   16EF FF            [12] 5689 	mov	r7,a
   16F0 90 3A 56      [24] 5690 	mov	dptr,#(_mmc_buffer + 0x0004)
   16F3 F0            [24] 5691 	movx	@dptr,a
   16F4                    5692 00115$:
                           5693 ;	d:\ztex\include\ztex-flash1.h:1242: mmc_buffer[5] = 1;
   16F4 90 3A 57      [24] 5694 	mov	dptr,#(_mmc_buffer + 0x0005)
   16F7 74 01         [12] 5695 	mov	a,#0x01
   16F9 F0            [24] 5696 	movx	@dptr,a
                           5697 ;	d:\ztex\include\ztex-flash1.h:1243: flash_write(mmc_buffer,6);
   16FA 75 11 06      [24] 5698 	mov	_flash_write_PARM_2,#0x06
   16FD 90 3A 52      [24] 5699 	mov	dptr,#_mmc_buffer
   1700 12 07 30      [24] 5700 	lcall	_flash_write
                           5701 ;	d:\ztex\include\ztex-flash1.h:1244: mmc_read_response();
   1703 12 07 E5      [24] 5702 	lcall	_mmc_read_response
                           5703 ;	d:\ztex\include\ztex-flash1.h:1245: if ( mmc_response != 0 ) {
   1706 90 3A 50      [24] 5704 	mov	dptr,#_mmc_response
   1709 E0            [24] 5705 	movx	a,@dptr
   170A FF            [12] 5706 	mov	r7,a
   170B 60 19         [24] 5707 	jz	00117$
                           5708 ;	d:\ztex\include\ztex-flash1.h:1246: flash_ec = FLASH_EC_CMD_ERROR; 
   170D 90 3A 4E      [24] 5709 	mov	dptr,#_flash_ec
   1710 74 01         [12] 5710 	mov	a,#0x01
   1712 F0            [24] 5711 	movx	@dptr,a
                           5712 ;	d:\ztex\include\ztex-flash1.h:1247: mmc_deselect();
   1713 12 07 D3      [24] 5713 	lcall	_mmc_deselect
                           5714 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1716 90 E6 A0      [24] 5715 	mov	dptr,#_EP0CS
   1719 E0            [24] 5716 	movx	a,@dptr
   171A 44 01         [12] 5717 	orl	a,#0x01
   171C F0            [24] 5718 	movx	@dptr,a
                           5719 ;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
   171D 90 3A 6A      [24] 5720 	mov	dptr,#_ep0_payload_remaining
   1720 E4            [12] 5721 	clr	a
   1721 F0            [24] 5722 	movx	@dptr,a
   1722 E4            [12] 5723 	clr	a
   1723 A3            [24] 5724 	inc	dptr
   1724 F0            [24] 5725 	movx	@dptr,a
                           5726 ;	d:\ztex\include\ztex-conf.h:139: break;
   1725 22            [24] 5727 	ret
   1726                    5728 00117$:
                           5729 ;	d:\ztex\include\ztex-flash1.h:1251: MMC_IO |= MMC_bmDI;				
   1726 43 A0 80      [24] 5730 	orl	_IOC,#0x80
                           5731 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1729 75 82 08      [24] 5732 	mov	dpl,#0x08
   172C 12 06 6C      [24] 5733 	lcall	_mmc_clocks
   172F 75 82 FC      [24] 5734 	mov	dpl,#0xFC
   1732 12 06 F4      [24] 5735 	lcall	_flash_write_byte
                           5736 ;	d:\ztex\include\ztex-flash1.h:1254: mmc_ep0_wait = 0;
   1735 90 3A 62      [24] 5737 	mov	dptr,#_mmc_ep0_wait
   1738 E4            [12] 5738 	clr	a
   1739 F0            [24] 5739 	movx	@dptr,a
                           5740 ;	d:\ztex\include\ztex-conf.h:125: break;
                           5741 ;	d:\ztex\include\ztex-conf.h:123: case $0:			
   173A 22            [24] 5742 	ret
   173B                    5743 00118$:
                           5744 ;	d:\ztex\include\ztex-conf.h:124: $1
                           5745 ;	d:\ztex\include\ztex-conf.h:125: break;
                           5746 ;	d:\ztex\include\ztex-isr.h:105: default:
   173B 02 11 B6      [24] 5747 	ljmp	_init_fpga_configuration
   173E                    5748 00120$:
                           5749 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   173E 90 E6 A0      [24] 5750 	mov	dptr,#_EP0CS
   1741 E0            [24] 5751 	movx	a,@dptr
   1742 44 01         [12] 5752 	orl	a,#0x01
   1744 F0            [24] 5753 	movx	@dptr,a
                           5754 ;	d:\ztex\include\ztex-isr.h:107: }
   1745 22            [24] 5755 	ret
                           5756 ;------------------------------------------------------------
                           5757 ;Allocation info for local variables in function 'SUDAV_ISR'
                           5758 ;------------------------------------------------------------
                           5759 ;a                         Allocated to registers r7 
                           5760 ;------------------------------------------------------------
                           5761 ;	d:\ztex\include\ztex-isr.h:113: static void SUDAV_ISR () __interrupt
                           5762 ;	-----------------------------------------
                           5763 ;	 function SUDAV_ISR
                           5764 ;	-----------------------------------------
   1746                    5765 _SUDAV_ISR:
   1746 C0 21         [24] 5766 	push	bits
   1748 C0 E0         [24] 5767 	push	acc
   174A C0 F0         [24] 5768 	push	b
   174C C0 82         [24] 5769 	push	dpl
   174E C0 83         [24] 5770 	push	dph
   1750 C0 07         [24] 5771 	push	(0+7)
   1752 C0 06         [24] 5772 	push	(0+6)
   1754 C0 05         [24] 5773 	push	(0+5)
   1756 C0 04         [24] 5774 	push	(0+4)
   1758 C0 03         [24] 5775 	push	(0+3)
   175A C0 02         [24] 5776 	push	(0+2)
   175C C0 01         [24] 5777 	push	(0+1)
   175E C0 00         [24] 5778 	push	(0+0)
   1760 C0 D0         [24] 5779 	push	psw
   1762 75 D0 00      [24] 5780 	mov	psw,#0x00
                           5781 ;	d:\ztex\include\ztex-isr.h:116: ep0_prev_setup_request = bRequest;
   1765 90 E6 B9      [24] 5782 	mov	dptr,#_bRequest
   1768 E0            [24] 5783 	movx	a,@dptr
   1769 FF            [12] 5784 	mov	r7,a
   176A 90 3A 6F      [24] 5785 	mov	dptr,#_ep0_prev_setup_request
   176D F0            [24] 5786 	movx	@dptr,a
                           5787 ;	d:\ztex\include\ztex-isr.h:117: SUDPTRCTL = 1;
   176E 90 E6 B5      [24] 5788 	mov	dptr,#_SUDPTRCTL
   1771 74 01         [12] 5789 	mov	a,#0x01
   1773 F0            [24] 5790 	movx	@dptr,a
                           5791 ;	d:\ztex\include\ztex-isr.h:120: switch ( bRequest ) {
   1774 90 E6 B9      [24] 5792 	mov	dptr,#_bRequest
   1777 E0            [24] 5793 	movx	a,@dptr
   1778 FF            [12] 5794 	mov  r7,a
   1779 24 F3         [12] 5795 	add	a,#0xff - 0x0C
   177B 50 03         [24] 5796 	jnc	00344$
   177D 02 1B 13      [24] 5797 	ljmp	00160$
   1780                    5798 00344$:
   1780 EF            [12] 5799 	mov	a,r7
   1781 F5 F0         [12] 5800 	mov	b,a
   1783 24 0B         [12] 5801 	add	a,#(00345$-3-.)
   1785 83            [24] 5802 	movc	a,@a+pc
   1786 F5 82         [12] 5803 	mov	dpl,a
   1788 E5 F0         [12] 5804 	mov	a,b
   178A 24 11         [12] 5805 	add	a,#(00346$-3-.)
   178C 83            [24] 5806 	movc	a,@a+pc
   178D F5 83         [12] 5807 	mov	dph,a
   178F E4            [12] 5808 	clr	a
   1790 73            [24] 5809 	jmp	@a+dptr
   1791                    5810 00345$:
   1791 AB                 5811 	.db	00101$
   1792 5F                 5812 	.db	00112$
   1793 13                 5813 	.db	00160$
   1794 DC                 5814 	.db	00122$
   1795 13                 5815 	.db	00160$
   1796 13                 5816 	.db	00160$
   1797 74                 5817 	.db	00132$
   1798 A5                 5818 	.db	00152$
   1799 A7                 5819 	.db	00153$
   179A B8                 5820 	.db	00154$
   179B BD                 5821 	.db	00155$
   179C CE                 5822 	.db	00156$
   179D D3                 5823 	.db	00157$
   179E                    5824 00346$:
   179E 17                 5825 	.db	00101$>>8
   179F 18                 5826 	.db	00112$>>8
   17A0 1B                 5827 	.db	00160$>>8
   17A1 18                 5828 	.db	00122$>>8
   17A2 1B                 5829 	.db	00160$>>8
   17A3 1B                 5830 	.db	00160$>>8
   17A4 19                 5831 	.db	00132$>>8
   17A5 1A                 5832 	.db	00152$>>8
   17A6 1A                 5833 	.db	00153$>>8
   17A7 1A                 5834 	.db	00154$>>8
   17A8 1A                 5835 	.db	00155$>>8
   17A9 1A                 5836 	.db	00156$>>8
   17AA 1A                 5837 	.db	00157$>>8
                           5838 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   17AB                    5839 00101$:
                           5840 ;	d:\ztex\include\ztex-isr.h:122: switch(SETUPDAT[0]) {
   17AB 90 E6 B8      [24] 5841 	mov	dptr,#_SETUPDAT
   17AE E0            [24] 5842 	movx	a,@dptr
   17AF FF            [12] 5843 	mov	r7,a
   17B0 BF 80 02      [24] 5844 	cjne	r7,#0x80,00347$
   17B3 80 0D         [24] 5845 	sjmp	00102$
   17B5                    5846 00347$:
   17B5 BF 81 02      [24] 5847 	cjne	r7,#0x81,00348$
   17B8 80 1E         [24] 5848 	sjmp	00103$
   17BA                    5849 00348$:
   17BA BF 82 02      [24] 5850 	cjne	r7,#0x82,00349$
   17BD 80 2F         [24] 5851 	sjmp	00104$
   17BF                    5852 00349$:
   17BF 02 1B 13      [24] 5853 	ljmp	00160$
                           5854 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   17C2                    5855 00102$:
   17C2 90 E7 40      [24] 5856 	mov	dptr,#_EP0BUF
                           5857 ;	d:\ztex\include\ztex-isr.h:125: EP0BUF[1] = 0;
                           5858 ;	d:\ztex\include\ztex-isr.h:126: EP0BCH = 0;
   17C5 E4            [12] 5859 	clr	a
   17C6 F0            [24] 5860 	movx	@dptr,a
   17C7 90 E7 41      [24] 5861 	mov	dptr,#(_EP0BUF + 0x0001)
   17CA F0            [24] 5862 	movx	@dptr,a
   17CB 90 E6 8A      [24] 5863 	mov	dptr,#_EP0BCH
   17CE F0            [24] 5864 	movx	@dptr,a
                           5865 ;	d:\ztex\include\ztex-isr.h:127: EP0BCL = 2;
   17CF 90 E6 8B      [24] 5866 	mov	dptr,#_EP0BCL
   17D2 74 02         [12] 5867 	mov	a,#0x02
   17D4 F0            [24] 5868 	movx	@dptr,a
                           5869 ;	d:\ztex\include\ztex-isr.h:128: break;
   17D5 02 1B 13      [24] 5870 	ljmp	00160$
                           5871 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   17D8                    5872 00103$:
   17D8 90 E7 40      [24] 5873 	mov	dptr,#_EP0BUF
                           5874 ;	d:\ztex\include\ztex-isr.h:131: EP0BUF[1] = 0;
                           5875 ;	d:\ztex\include\ztex-isr.h:132: EP0BCH = 0;
   17DB E4            [12] 5876 	clr	a
   17DC F0            [24] 5877 	movx	@dptr,a
   17DD 90 E7 41      [24] 5878 	mov	dptr,#(_EP0BUF + 0x0001)
   17E0 F0            [24] 5879 	movx	@dptr,a
   17E1 90 E6 8A      [24] 5880 	mov	dptr,#_EP0BCH
   17E4 F0            [24] 5881 	movx	@dptr,a
                           5882 ;	d:\ztex\include\ztex-isr.h:133: EP0BCL = 2;
   17E5 90 E6 8B      [24] 5883 	mov	dptr,#_EP0BCL
   17E8 74 02         [12] 5884 	mov	a,#0x02
   17EA F0            [24] 5885 	movx	@dptr,a
                           5886 ;	d:\ztex\include\ztex-isr.h:134: break;
   17EB 02 1B 13      [24] 5887 	ljmp	00160$
                           5888 ;	d:\ztex\include\ztex-isr.h:135: case 0x82:	
   17EE                    5889 00104$:
                           5890 ;	d:\ztex\include\ztex-isr.h:136: switch ( SETUPDAT[4] ) {
   17EE 90 E6 BC      [24] 5891 	mov	dptr,#(_SETUPDAT + 0x0004)
   17F1 E0            [24] 5892 	movx	a,@dptr
   17F2 FF            [12] 5893 	mov	r7,a
   17F3 60 0F         [24] 5894 	jz	00106$
   17F5 BF 01 02      [24] 5895 	cjne	r7,#0x01,00351$
   17F8 80 19         [24] 5896 	sjmp	00107$
   17FA                    5897 00351$:
   17FA BF 80 02      [24] 5898 	cjne	r7,#0x80,00352$
   17FD 80 05         [24] 5899 	sjmp	00106$
   17FF                    5900 00352$:
                           5901 ;	d:\ztex\include\ztex-isr.h:138: case 0x80 :
   17FF BF 81 2F      [24] 5902 	cjne	r7,#0x81,00109$
   1802 80 1E         [24] 5903 	sjmp	00108$
   1804                    5904 00106$:
                           5905 ;	d:\ztex\include\ztex-isr.h:139: EP0BUF[0] = EP0CS & bmBIT0;
   1804 90 E6 A0      [24] 5906 	mov	dptr,#_EP0CS
   1807 E0            [24] 5907 	movx	a,@dptr
   1808 FF            [12] 5908 	mov	r7,a
   1809 53 07 01      [24] 5909 	anl	ar7,#0x01
   180C 90 E7 40      [24] 5910 	mov	dptr,#_EP0BUF
   180F EF            [12] 5911 	mov	a,r7
   1810 F0            [24] 5912 	movx	@dptr,a
                           5913 ;	d:\ztex\include\ztex-isr.h:140: break;
                           5914 ;	d:\ztex\include\ztex-isr.h:141: case 0x01 :
   1811 80 3A         [24] 5915 	sjmp	00110$
   1813                    5916 00107$:
                           5917 ;	d:\ztex\include\ztex-isr.h:142: EP0BUF[0] = EP1OUTCS & bmBIT0;
   1813 90 E6 A1      [24] 5918 	mov	dptr,#_EP1OUTCS
   1816 E0            [24] 5919 	movx	a,@dptr
   1817 FF            [12] 5920 	mov	r7,a
   1818 53 07 01      [24] 5921 	anl	ar7,#0x01
   181B 90 E7 40      [24] 5922 	mov	dptr,#_EP0BUF
   181E EF            [12] 5923 	mov	a,r7
   181F F0            [24] 5924 	movx	@dptr,a
                           5925 ;	d:\ztex\include\ztex-isr.h:143: break;
                           5926 ;	d:\ztex\include\ztex-isr.h:144: case 0x81 :
   1820 80 2B         [24] 5927 	sjmp	00110$
   1822                    5928 00108$:
                           5929 ;	d:\ztex\include\ztex-isr.h:145: EP0BUF[0] = EP1INCS & bmBIT0;
   1822 90 E6 A2      [24] 5930 	mov	dptr,#_EP1INCS
   1825 E0            [24] 5931 	movx	a,@dptr
   1826 FF            [12] 5932 	mov	r7,a
   1827 53 07 01      [24] 5933 	anl	ar7,#0x01
   182A 90 E7 40      [24] 5934 	mov	dptr,#_EP0BUF
   182D EF            [12] 5935 	mov	a,r7
   182E F0            [24] 5936 	movx	@dptr,a
                           5937 ;	d:\ztex\include\ztex-isr.h:146: break;
                           5938 ;	d:\ztex\include\ztex-isr.h:147: default:
   182F 80 1C         [24] 5939 	sjmp	00110$
   1831                    5940 00109$:
                           5941 ;	d:\ztex\include\ztex-isr.h:148: EP0BUF[0] = EPXCS[ ((SETUPDAT[4] >> 1)-1) & 3 ] & bmBIT0;
   1831 90 E6 BC      [24] 5942 	mov	dptr,#(_SETUPDAT + 0x0004)
   1834 E0            [24] 5943 	movx	a,@dptr
   1835 C3            [12] 5944 	clr	c
   1836 13            [12] 5945 	rrc	a
   1837 14            [12] 5946 	dec	a
   1838 54 03         [12] 5947 	anl	a,#0x03
   183A 24 A3         [12] 5948 	add	a,#_EPXCS
   183C F5 82         [12] 5949 	mov	dpl,a
   183E E4            [12] 5950 	clr	a
   183F 34 E6         [12] 5951 	addc	a,#(_EPXCS >> 8)
   1841 F5 83         [12] 5952 	mov	dph,a
   1843 E0            [24] 5953 	movx	a,@dptr
   1844 FF            [12] 5954 	mov	r7,a
   1845 53 07 01      [24] 5955 	anl	ar7,#0x01
   1848 90 E7 40      [24] 5956 	mov	dptr,#_EP0BUF
   184B EF            [12] 5957 	mov	a,r7
   184C F0            [24] 5958 	movx	@dptr,a
                           5959 ;	d:\ztex\include\ztex-isr.h:150: }
   184D                    5960 00110$:
                           5961 ;	d:\ztex\include\ztex-isr.h:151: EP0BUF[1] = 0;
   184D 90 E7 41      [24] 5962 	mov	dptr,#(_EP0BUF + 0x0001)
                           5963 ;	d:\ztex\include\ztex-isr.h:152: EP0BCH = 0;
   1850 E4            [12] 5964 	clr	a
   1851 F0            [24] 5965 	movx	@dptr,a
   1852 90 E6 8A      [24] 5966 	mov	dptr,#_EP0BCH
   1855 F0            [24] 5967 	movx	@dptr,a
                           5968 ;	d:\ztex\include\ztex-isr.h:153: EP0BCL = 2;
   1856 90 E6 8B      [24] 5969 	mov	dptr,#_EP0BCL
   1859 74 02         [12] 5970 	mov	a,#0x02
   185B F0            [24] 5971 	movx	@dptr,a
                           5972 ;	d:\ztex\include\ztex-isr.h:156: break;
   185C 02 1B 13      [24] 5973 	ljmp	00160$
                           5974 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   185F                    5975 00112$:
                           5976 ;	d:\ztex\include\ztex-isr.h:158: if ( SETUPDAT[0] == 2 && SETUPDAT[2] == 0 ) {
   185F 90 E6 B8      [24] 5977 	mov	dptr,#_SETUPDAT
   1862 E0            [24] 5978 	movx	a,@dptr
   1863 FF            [12] 5979 	mov	r7,a
   1864 BF 02 02      [24] 5980 	cjne	r7,#0x02,00354$
   1867 80 03         [24] 5981 	sjmp	00355$
   1869                    5982 00354$:
   1869 02 1B 13      [24] 5983 	ljmp	00160$
   186C                    5984 00355$:
   186C 90 E6 BA      [24] 5985 	mov	dptr,#(_SETUPDAT + 0x0002)
   186F E0            [24] 5986 	movx	a,@dptr
   1870 60 03         [24] 5987 	jz	00356$
   1872 02 1B 13      [24] 5988 	ljmp	00160$
   1875                    5989 00356$:
                           5990 ;	d:\ztex\include\ztex-isr.h:159: switch ( SETUPDAT[4] ) {
   1875 90 E6 BC      [24] 5991 	mov	dptr,#(_SETUPDAT + 0x0004)
   1878 E0            [24] 5992 	movx	a,@dptr
   1879 FF            [12] 5993 	mov	r7,a
   187A 60 0F         [24] 5994 	jz	00114$
   187C BF 01 02      [24] 5995 	cjne	r7,#0x01,00358$
   187F 80 15         [24] 5996 	sjmp	00115$
   1881                    5997 00358$:
   1881 BF 80 02      [24] 5998 	cjne	r7,#0x80,00359$
   1884 80 05         [24] 5999 	sjmp	00114$
   1886                    6000 00359$:
                           6001 ;	d:\ztex\include\ztex-isr.h:161: case 0x80 :
   1886 BF 81 23      [24] 6002 	cjne	r7,#0x81,00117$
   1889 80 16         [24] 6003 	sjmp	00116$
   188B                    6004 00114$:
                           6005 ;	d:\ztex\include\ztex-isr.h:162: EP0CS &= ~bmBIT0;
   188B 90 E6 A0      [24] 6006 	mov	dptr,#_EP0CS
   188E E0            [24] 6007 	movx	a,@dptr
   188F FF            [12] 6008 	mov	r7,a
   1890 54 FE         [12] 6009 	anl	a,#0xFE
   1892 F0            [24] 6010 	movx	@dptr,a
                           6011 ;	d:\ztex\include\ztex-isr.h:163: break;
   1893 02 1B 13      [24] 6012 	ljmp	00160$
                           6013 ;	d:\ztex\include\ztex-isr.h:164: case 0x01 :
   1896                    6014 00115$:
                           6015 ;	d:\ztex\include\ztex-isr.h:165: EP1OUTCS &= ~bmBIT0;
   1896 90 E6 A1      [24] 6016 	mov	dptr,#_EP1OUTCS
   1899 E0            [24] 6017 	movx	a,@dptr
   189A FF            [12] 6018 	mov	r7,a
   189B 54 FE         [12] 6019 	anl	a,#0xFE
   189D F0            [24] 6020 	movx	@dptr,a
                           6021 ;	d:\ztex\include\ztex-isr.h:166: break;
   189E 02 1B 13      [24] 6022 	ljmp	00160$
                           6023 ;	d:\ztex\include\ztex-isr.h:167: case 0x81 :
   18A1                    6024 00116$:
                           6025 ;	d:\ztex\include\ztex-isr.h:168: EP1INCS &= ~bmBIT0;
   18A1 90 E6 A2      [24] 6026 	mov	dptr,#_EP1INCS
   18A4 E0            [24] 6027 	movx	a,@dptr
   18A5 FF            [12] 6028 	mov	r7,a
   18A6 54 FE         [12] 6029 	anl	a,#0xFE
   18A8 F0            [24] 6030 	movx	@dptr,a
                           6031 ;	d:\ztex\include\ztex-isr.h:169: break;
   18A9 02 1B 13      [24] 6032 	ljmp	00160$
                           6033 ;	d:\ztex\include\ztex-isr.h:170: default:
   18AC                    6034 00117$:
                           6035 ;	d:\ztex\include\ztex-isr.h:171: EPXCS[ ((SETUPDAT[4] >> 1)-1) & 3 ] &= ~bmBIT0;
   18AC 90 E6 BC      [24] 6036 	mov	dptr,#(_SETUPDAT + 0x0004)
   18AF E0            [24] 6037 	movx	a,@dptr
   18B0 C3            [12] 6038 	clr	c
   18B1 13            [12] 6039 	rrc	a
   18B2 14            [12] 6040 	dec	a
   18B3 54 03         [12] 6041 	anl	a,#0x03
   18B5 24 A3         [12] 6042 	add	a,#_EPXCS
   18B7 FE            [12] 6043 	mov	r6,a
   18B8 E4            [12] 6044 	clr	a
   18B9 34 E6         [12] 6045 	addc	a,#(_EPXCS >> 8)
   18BB FF            [12] 6046 	mov	r7,a
   18BC 90 E6 BC      [24] 6047 	mov	dptr,#(_SETUPDAT + 0x0004)
   18BF E0            [24] 6048 	movx	a,@dptr
   18C0 C3            [12] 6049 	clr	c
   18C1 13            [12] 6050 	rrc	a
   18C2 14            [12] 6051 	dec	a
   18C3 54 03         [12] 6052 	anl	a,#0x03
   18C5 24 A3         [12] 6053 	add	a,#_EPXCS
   18C7 F5 82         [12] 6054 	mov	dpl,a
   18C9 E4            [12] 6055 	clr	a
   18CA 34 E6         [12] 6056 	addc	a,#(_EPXCS >> 8)
   18CC F5 83         [12] 6057 	mov	dph,a
   18CE E0            [24] 6058 	movx	a,@dptr
   18CF FD            [12] 6059 	mov	r5,a
   18D0 53 05 FE      [24] 6060 	anl	ar5,#0xFE
   18D3 8E 82         [24] 6061 	mov	dpl,r6
   18D5 8F 83         [24] 6062 	mov	dph,r7
   18D7 ED            [12] 6063 	mov	a,r5
   18D8 F0            [24] 6064 	movx	@dptr,a
                           6065 ;	d:\ztex\include\ztex-isr.h:175: break;
   18D9 02 1B 13      [24] 6066 	ljmp	00160$
                           6067 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   18DC                    6068 00122$:
                           6069 ;	d:\ztex\include\ztex-isr.h:177: if ( SETUPDAT[0] == 2 && SETUPDAT[2] == 0 ) {
   18DC 90 E6 B8      [24] 6070 	mov	dptr,#_SETUPDAT
   18DF E0            [24] 6071 	movx	a,@dptr
   18E0 FF            [12] 6072 	mov	r7,a
   18E1 BF 02 02      [24] 6073 	cjne	r7,#0x02,00361$
   18E4 80 03         [24] 6074 	sjmp	00362$
   18E6                    6075 00361$:
   18E6 02 1B 13      [24] 6076 	ljmp	00160$
   18E9                    6077 00362$:
   18E9 90 E6 BA      [24] 6078 	mov	dptr,#(_SETUPDAT + 0x0002)
   18EC E0            [24] 6079 	movx	a,@dptr
   18ED 60 03         [24] 6080 	jz	00363$
   18EF 02 1B 13      [24] 6081 	ljmp	00160$
   18F2                    6082 00363$:
                           6083 ;	d:\ztex\include\ztex-isr.h:178: switch ( SETUPDAT[4] ) {
   18F2 90 E6 BC      [24] 6084 	mov	dptr,#(_SETUPDAT + 0x0004)
   18F5 E0            [24] 6085 	movx	a,@dptr
   18F6 FF            [12] 6086 	mov	r7,a
   18F7 60 0F         [24] 6087 	jz	00124$
   18F9 BF 01 02      [24] 6088 	cjne	r7,#0x01,00365$
   18FC 80 14         [24] 6089 	sjmp	00125$
   18FE                    6090 00365$:
   18FE BF 80 02      [24] 6091 	cjne	r7,#0x80,00366$
   1901 80 05         [24] 6092 	sjmp	00124$
   1903                    6093 00366$:
                           6094 ;	d:\ztex\include\ztex-isr.h:180: case 0x80 :
   1903 BF 81 20      [24] 6095 	cjne	r7,#0x81,00127$
   1906 80 14         [24] 6096 	sjmp	00126$
   1908                    6097 00124$:
                           6098 ;	d:\ztex\include\ztex-isr.h:181: EP0CS |= bmBIT0;
   1908 90 E6 A0      [24] 6099 	mov	dptr,#_EP0CS
   190B E0            [24] 6100 	movx	a,@dptr
   190C FF            [12] 6101 	mov	r7,a
   190D 44 01         [12] 6102 	orl	a,#0x01
   190F F0            [24] 6103 	movx	@dptr,a
                           6104 ;	d:\ztex\include\ztex-isr.h:182: break;
                           6105 ;	d:\ztex\include\ztex-isr.h:183: case 0x01 :
   1910 80 41         [24] 6106 	sjmp	00128$
   1912                    6107 00125$:
                           6108 ;	d:\ztex\include\ztex-isr.h:184: EP1OUTCS |= bmBIT0;
   1912 90 E6 A1      [24] 6109 	mov	dptr,#_EP1OUTCS
   1915 E0            [24] 6110 	movx	a,@dptr
   1916 FF            [12] 6111 	mov	r7,a
   1917 44 01         [12] 6112 	orl	a,#0x01
   1919 F0            [24] 6113 	movx	@dptr,a
                           6114 ;	d:\ztex\include\ztex-isr.h:185: break;
                           6115 ;	d:\ztex\include\ztex-isr.h:186: case 0x81 :
   191A 80 37         [24] 6116 	sjmp	00128$
   191C                    6117 00126$:
                           6118 ;	d:\ztex\include\ztex-isr.h:187: EP1INCS |= bmBIT0;
   191C 90 E6 A2      [24] 6119 	mov	dptr,#_EP1INCS
   191F E0            [24] 6120 	movx	a,@dptr
   1920 FF            [12] 6121 	mov	r7,a
   1921 44 01         [12] 6122 	orl	a,#0x01
   1923 F0            [24] 6123 	movx	@dptr,a
                           6124 ;	d:\ztex\include\ztex-isr.h:188: break;
                           6125 ;	d:\ztex\include\ztex-isr.h:189: default:
   1924 80 2D         [24] 6126 	sjmp	00128$
   1926                    6127 00127$:
                           6128 ;	d:\ztex\include\ztex-isr.h:190: EPXCS[ ((SETUPDAT[4] >> 1)-1) & 3 ] |= ~bmBIT0;
   1926 90 E6 BC      [24] 6129 	mov	dptr,#(_SETUPDAT + 0x0004)
   1929 E0            [24] 6130 	movx	a,@dptr
   192A C3            [12] 6131 	clr	c
   192B 13            [12] 6132 	rrc	a
   192C 14            [12] 6133 	dec	a
   192D 54 03         [12] 6134 	anl	a,#0x03
   192F 24 A3         [12] 6135 	add	a,#_EPXCS
   1931 FE            [12] 6136 	mov	r6,a
   1932 E4            [12] 6137 	clr	a
   1933 34 E6         [12] 6138 	addc	a,#(_EPXCS >> 8)
   1935 FF            [12] 6139 	mov	r7,a
   1936 90 E6 BC      [24] 6140 	mov	dptr,#(_SETUPDAT + 0x0004)
   1939 E0            [24] 6141 	movx	a,@dptr
   193A C3            [12] 6142 	clr	c
   193B 13            [12] 6143 	rrc	a
   193C 14            [12] 6144 	dec	a
   193D 54 03         [12] 6145 	anl	a,#0x03
   193F 24 A3         [12] 6146 	add	a,#_EPXCS
   1941 F5 82         [12] 6147 	mov	dpl,a
   1943 E4            [12] 6148 	clr	a
   1944 34 E6         [12] 6149 	addc	a,#(_EPXCS >> 8)
   1946 F5 83         [12] 6150 	mov	dph,a
   1948 E0            [24] 6151 	movx	a,@dptr
   1949 FD            [12] 6152 	mov	r5,a
   194A 43 05 FE      [24] 6153 	orl	ar5,#0xFE
   194D 8E 82         [24] 6154 	mov	dpl,r6
   194F 8F 83         [24] 6155 	mov	dph,r7
   1951 ED            [12] 6156 	mov	a,r5
   1952 F0            [24] 6157 	movx	@dptr,a
                           6158 ;	d:\ztex\include\ztex-isr.h:192: }
   1953                    6159 00128$:
                           6160 ;	d:\ztex\include\ztex-isr.h:193: a = ( (SETUPDAT[4] & 0x80) >> 3 ) | (SETUPDAT[4] & 0x0f);
   1953 90 E6 BC      [24] 6161 	mov	dptr,#(_SETUPDAT + 0x0004)
   1956 E0            [24] 6162 	movx	a,@dptr
   1957 54 80         [12] 6163 	anl	a,#0x80
   1959 C4            [12] 6164 	swap	a
   195A 23            [12] 6165 	rl	a
   195B 54 1F         [12] 6166 	anl	a,#0x1F
   195D FF            [12] 6167 	mov	r7,a
   195E 90 E6 BC      [24] 6168 	mov	dptr,#(_SETUPDAT + 0x0004)
   1961 E0            [24] 6169 	movx	a,@dptr
   1962 FE            [12] 6170 	mov	r6,a
   1963 74 0F         [12] 6171 	mov	a,#0x0F
   1965 5E            [12] 6172 	anl	a,r6
   1966 42 07         [12] 6173 	orl	ar7,a
                           6174 ;	d:\ztex\include\ztex-isr.h:194: TOGCTL = a;
                           6175 ;	d:\ztex\include\ztex-isr.h:195: TOGCTL = a | bmBIT5;
   1968 90 E6 83      [24] 6176 	mov	dptr,#_TOGCTL
   196B EF            [12] 6177 	mov	a,r7
   196C F0            [24] 6178 	movx	@dptr,a
   196D 74 20         [12] 6179 	mov	a,#0x20
   196F 4F            [12] 6180 	orl	a,r7
   1970 F0            [24] 6181 	movx	@dptr,a
                           6182 ;	d:\ztex\include\ztex-isr.h:197: break;
   1971 02 1B 13      [24] 6183 	ljmp	00160$
                           6184 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1974                    6185 00132$:
                           6186 ;	d:\ztex\include\ztex-isr.h:199: switch(SETUPDAT[3]) {
   1974 90 E6 BB      [24] 6187 	mov	dptr,#(_SETUPDAT + 0x0003)
   1977 E0            [24] 6188 	movx	a,@dptr
   1978 FF            [12] 6189 	mov	r7,a
   1979 BF 01 02      [24] 6190 	cjne	r7,#0x01,00368$
   197C 80 19         [24] 6191 	sjmp	00133$
   197E                    6192 00368$:
   197E BF 02 02      [24] 6193 	cjne	r7,#0x02,00369$
   1981 80 28         [24] 6194 	sjmp	00134$
   1983                    6195 00369$:
   1983 BF 03 02      [24] 6196 	cjne	r7,#0x03,00370$
   1986 80 53         [24] 6197 	sjmp	00138$
   1988                    6198 00370$:
   1988 BF 06 03      [24] 6199 	cjne	r7,#0x06,00371$
   198B 02 1A 58      [24] 6200 	ljmp	00145$
   198E                    6201 00371$:
   198E BF 07 03      [24] 6202 	cjne	r7,#0x07,00372$
   1991 02 1A 6C      [24] 6203 	ljmp	00146$
   1994                    6204 00372$:
   1994 02 1A 9B      [24] 6205 	ljmp	00150$
                           6206 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1997                    6207 00133$:
                           6208 ;	d:\ztex\include\ztex-isr.h:201: SUDPTRH = MSB(&DeviceDescriptor);
   1997 7E 36         [12] 6209 	mov	r6,#_DeviceDescriptor
   1999 7F 24         [12] 6210 	mov	r7,#(_DeviceDescriptor >> 8)
   199B 8F 06         [24] 6211 	mov	ar6,r7
   199D 90 E6 B3      [24] 6212 	mov	dptr,#_SUDPTRH
   19A0 EE            [12] 6213 	mov	a,r6
   19A1 F0            [24] 6214 	movx	@dptr,a
                           6215 ;	d:\ztex\include\ztex-isr.h:202: SUDPTRL = LSB(&DeviceDescriptor);
   19A2 90 E6 B4      [24] 6216 	mov	dptr,#_SUDPTRL
   19A5 74 36         [12] 6217 	mov	a,#_DeviceDescriptor
   19A7 F0            [24] 6218 	movx	@dptr,a
                           6219 ;	d:\ztex\include\ztex-isr.h:203: break;
   19A8 02 1B 13      [24] 6220 	ljmp	00160$
                           6221 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   19AB                    6222 00134$:
                           6223 ;	d:\ztex\include\ztex-isr.h:205: if (USBCS & bmBIT7) {
   19AB 90 E6 80      [24] 6224 	mov	dptr,#_USBCS
   19AE E0            [24] 6225 	movx	a,@dptr
   19AF FF            [12] 6226 	mov	r7,a
   19B0 30 E7 14      [24] 6227 	jnb	acc.7,00136$
                           6228 ;	d:\ztex\include\ztex-isr.h:206: SUDPTRH = MSB(&HighSpeedConfigDescriptor);
   19B3 7E 52         [12] 6229 	mov	r6,#_HighSpeedConfigDescriptor
   19B5 7F 24         [12] 6230 	mov	r7,#(_HighSpeedConfigDescriptor >> 8)
   19B7 8F 06         [24] 6231 	mov	ar6,r7
   19B9 90 E6 B3      [24] 6232 	mov	dptr,#_SUDPTRH
   19BC EE            [12] 6233 	mov	a,r6
   19BD F0            [24] 6234 	movx	@dptr,a
                           6235 ;	d:\ztex\include\ztex-isr.h:207: SUDPTRL = LSB(&HighSpeedConfigDescriptor);
   19BE 90 E6 B4      [24] 6236 	mov	dptr,#_SUDPTRL
   19C1 74 52         [12] 6237 	mov	a,#_HighSpeedConfigDescriptor
   19C3 F0            [24] 6238 	movx	@dptr,a
   19C4 02 1B 13      [24] 6239 	ljmp	00160$
   19C7                    6240 00136$:
                           6241 ;	d:\ztex\include\ztex-isr.h:210: SUDPTRH = MSB(&FullSpeedConfigDescriptor);
   19C7 7E 74         [12] 6242 	mov	r6,#_FullSpeedConfigDescriptor
   19C9 7F 24         [12] 6243 	mov	r7,#(_FullSpeedConfigDescriptor >> 8)
   19CB 8F 06         [24] 6244 	mov	ar6,r7
   19CD 90 E6 B3      [24] 6245 	mov	dptr,#_SUDPTRH
   19D0 EE            [12] 6246 	mov	a,r6
   19D1 F0            [24] 6247 	movx	@dptr,a
                           6248 ;	d:\ztex\include\ztex-isr.h:211: SUDPTRL = LSB(&FullSpeedConfigDescriptor);
   19D2 90 E6 B4      [24] 6249 	mov	dptr,#_SUDPTRL
   19D5 74 74         [12] 6250 	mov	a,#_FullSpeedConfigDescriptor
   19D7 F0            [24] 6251 	movx	@dptr,a
                           6252 ;	d:\ztex\include\ztex-isr.h:213: break; 
   19D8 02 1B 13      [24] 6253 	ljmp	00160$
                           6254 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   19DB                    6255 00138$:
                           6256 ;	d:\ztex\include\ztex-isr.h:215: switch (SETUPDAT[2]) {
   19DB 90 E6 BA      [24] 6257 	mov	dptr,#(_SETUPDAT + 0x0002)
   19DE E0            [24] 6258 	movx	a,@dptr
   19DF FF            [12] 6259 	mov	r7,a
   19E0 BF 01 02      [24] 6260 	cjne	r7,#0x01,00374$
   19E3 80 0F         [24] 6261 	sjmp	00139$
   19E5                    6262 00374$:
   19E5 BF 02 02      [24] 6263 	cjne	r7,#0x02,00375$
   19E8 80 1E         [24] 6264 	sjmp	00140$
   19EA                    6265 00375$:
   19EA BF 03 02      [24] 6266 	cjne	r7,#0x03,00376$
   19ED 80 2D         [24] 6267 	sjmp	00141$
   19EF                    6268 00376$:
                           6269 ;	d:\ztex\include\ztex-isr.h:216: case 1:
   19EF BF 04 52      [24] 6270 	cjne	r7,#0x04,00143$
   19F2 80 3C         [24] 6271 	sjmp	00142$
   19F4                    6272 00139$:
                           6273 ;	d:\ztex\include\ztex-isr.h:217: SEND_STRING_DESCRIPTOR(manufacturerString);
   19F4 75 82 16      [24] 6274 	mov	dpl,#_manufacturerString
   19F7 7E 16         [12] 6275 	mov	r6,#_manufacturerString
   19F9 7F 24         [12] 6276 	mov	r7,#(_manufacturerString >> 8)
   19FB 8F 06         [24] 6277 	mov	ar6,r7
   19FD 8E 11         [24] 6278 	mov	_sendStringDescriptor_PARM_2,r6
   19FF 75 12 05      [24] 6279 	mov	_sendStringDescriptor_PARM_3,#0x05
   1A02 12 15 66      [24] 6280 	lcall	_sendStringDescriptor
                           6281 ;	d:\ztex\include\ztex-isr.h:218: break;
   1A05 02 1B 13      [24] 6282 	ljmp	00160$
                           6283 ;	d:\ztex\include\ztex-isr.h:219: case 2:
   1A08                    6284 00140$:
                           6285 ;	d:\ztex\include\ztex-isr.h:220: SEND_STRING_DESCRIPTOR(productString);
   1A08 75 82 1B      [24] 6286 	mov	dpl,#_productString
   1A0B 7E 1B         [12] 6287 	mov	r6,#_productString
   1A0D 7F 24         [12] 6288 	mov	r7,#(_productString >> 8)
   1A0F 8F 06         [24] 6289 	mov	ar6,r7
   1A11 8E 11         [24] 6290 	mov	_sendStringDescriptor_PARM_2,r6
   1A13 75 12 12      [24] 6291 	mov	_sendStringDescriptor_PARM_3,#0x12
   1A16 12 15 66      [24] 6292 	lcall	_sendStringDescriptor
                           6293 ;	d:\ztex\include\ztex-isr.h:221: break;
   1A19 02 1B 13      [24] 6294 	ljmp	00160$
                           6295 ;	d:\ztex\include\ztex-isr.h:222: case 3:
   1A1C                    6296 00141$:
                           6297 ;	d:\ztex\include\ztex-isr.h:223: SEND_STRING_DESCRIPTOR(SN_STRING);
   1A1C 75 82 8A      [24] 6298 	mov	dpl,#_SN_STRING
   1A1F 7E 8A         [12] 6299 	mov	r6,#_SN_STRING
   1A21 7F 00         [12] 6300 	mov	r7,#(_SN_STRING >> 8)
   1A23 8F 06         [24] 6301 	mov	ar6,r7
   1A25 8E 11         [24] 6302 	mov	_sendStringDescriptor_PARM_2,r6
   1A27 75 12 0A      [24] 6303 	mov	_sendStringDescriptor_PARM_3,#0x0A
   1A2A 12 15 66      [24] 6304 	lcall	_sendStringDescriptor
                           6305 ;	d:\ztex\include\ztex-isr.h:224: break;
   1A2D 02 1B 13      [24] 6306 	ljmp	00160$
                           6307 ;	d:\ztex\include\ztex-isr.h:225: case 4:
   1A30                    6308 00142$:
                           6309 ;	d:\ztex\include\ztex-isr.h:226: SEND_STRING_DESCRIPTOR(configurationString);
   1A30 75 82 2D      [24] 6310 	mov	dpl,#_configurationString
   1A33 7E 2D         [12] 6311 	mov	r6,#_configurationString
   1A35 7F 24         [12] 6312 	mov	r7,#(_configurationString >> 8)
   1A37 8F 06         [24] 6313 	mov	ar6,r7
   1A39 8E 11         [24] 6314 	mov	_sendStringDescriptor_PARM_2,r6
   1A3B 75 12 08      [24] 6315 	mov	_sendStringDescriptor_PARM_3,#0x08
   1A3E 12 15 66      [24] 6316 	lcall	_sendStringDescriptor
                           6317 ;	d:\ztex\include\ztex-isr.h:227: break; 
   1A41 02 1B 13      [24] 6318 	ljmp	00160$
                           6319 ;	d:\ztex\include\ztex-isr.h:228: default:
   1A44                    6320 00143$:
                           6321 ;	d:\ztex\include\ztex-isr.h:229: SUDPTRH = MSB(&EmptyStringDescriptor);
   1A44 7E 96         [12] 6322 	mov	r6,#_EmptyStringDescriptor
   1A46 7F 24         [12] 6323 	mov	r7,#(_EmptyStringDescriptor >> 8)
   1A48 8F 06         [24] 6324 	mov	ar6,r7
   1A4A 90 E6 B3      [24] 6325 	mov	dptr,#_SUDPTRH
   1A4D EE            [12] 6326 	mov	a,r6
   1A4E F0            [24] 6327 	movx	@dptr,a
                           6328 ;	d:\ztex\include\ztex-isr.h:230: SUDPTRL = LSB(&EmptyStringDescriptor);
   1A4F 90 E6 B4      [24] 6329 	mov	dptr,#_SUDPTRL
   1A52 74 96         [12] 6330 	mov	a,#_EmptyStringDescriptor
   1A54 F0            [24] 6331 	movx	@dptr,a
                           6332 ;	d:\ztex\include\ztex-isr.h:233: break;
   1A55 02 1B 13      [24] 6333 	ljmp	00160$
                           6334 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1A58                    6335 00145$:
                           6336 ;	d:\ztex\include\ztex-isr.h:235: SUDPTRH = MSB(&DeviceQualifierDescriptor);
   1A58 7E 48         [12] 6337 	mov	r6,#_DeviceQualifierDescriptor
   1A5A 7F 24         [12] 6338 	mov	r7,#(_DeviceQualifierDescriptor >> 8)
   1A5C 8F 06         [24] 6339 	mov	ar6,r7
   1A5E 90 E6 B3      [24] 6340 	mov	dptr,#_SUDPTRH
   1A61 EE            [12] 6341 	mov	a,r6
   1A62 F0            [24] 6342 	movx	@dptr,a
                           6343 ;	d:\ztex\include\ztex-isr.h:236: SUDPTRL = LSB(&DeviceQualifierDescriptor);
   1A63 90 E6 B4      [24] 6344 	mov	dptr,#_SUDPTRL
   1A66 74 48         [12] 6345 	mov	a,#_DeviceQualifierDescriptor
   1A68 F0            [24] 6346 	movx	@dptr,a
                           6347 ;	d:\ztex\include\ztex-isr.h:237: break;
   1A69 02 1B 13      [24] 6348 	ljmp	00160$
                           6349 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1A6C                    6350 00146$:
                           6351 ;	d:\ztex\include\ztex-isr.h:239: if (USBCS & bmBIT7) {
   1A6C 90 E6 80      [24] 6352 	mov	dptr,#_USBCS
   1A6F E0            [24] 6353 	movx	a,@dptr
   1A70 FF            [12] 6354 	mov	r7,a
   1A71 30 E7 14      [24] 6355 	jnb	acc.7,00148$
                           6356 ;	d:\ztex\include\ztex-isr.h:240: SUDPTRH = MSB(&FullSpeedConfigDescriptor);
   1A74 7E 74         [12] 6357 	mov	r6,#_FullSpeedConfigDescriptor
   1A76 7F 24         [12] 6358 	mov	r7,#(_FullSpeedConfigDescriptor >> 8)
   1A78 8F 06         [24] 6359 	mov	ar6,r7
   1A7A 90 E6 B3      [24] 6360 	mov	dptr,#_SUDPTRH
   1A7D EE            [12] 6361 	mov	a,r6
   1A7E F0            [24] 6362 	movx	@dptr,a
                           6363 ;	d:\ztex\include\ztex-isr.h:241: SUDPTRL = LSB(&FullSpeedConfigDescriptor);
   1A7F 90 E6 B4      [24] 6364 	mov	dptr,#_SUDPTRL
   1A82 74 74         [12] 6365 	mov	a,#_FullSpeedConfigDescriptor
   1A84 F0            [24] 6366 	movx	@dptr,a
   1A85 02 1B 13      [24] 6367 	ljmp	00160$
   1A88                    6368 00148$:
                           6369 ;	d:\ztex\include\ztex-isr.h:244: SUDPTRH = MSB(&HighSpeedConfigDescriptor);
   1A88 7E 52         [12] 6370 	mov	r6,#_HighSpeedConfigDescriptor
   1A8A 7F 24         [12] 6371 	mov	r7,#(_HighSpeedConfigDescriptor >> 8)
   1A8C 8F 06         [24] 6372 	mov	ar6,r7
   1A8E 90 E6 B3      [24] 6373 	mov	dptr,#_SUDPTRH
   1A91 EE            [12] 6374 	mov	a,r6
   1A92 F0            [24] 6375 	movx	@dptr,a
                           6376 ;	d:\ztex\include\ztex-isr.h:245: SUDPTRL = LSB(&HighSpeedConfigDescriptor);
   1A93 90 E6 B4      [24] 6377 	mov	dptr,#_SUDPTRL
   1A96 74 52         [12] 6378 	mov	a,#_HighSpeedConfigDescriptor
   1A98 F0            [24] 6379 	movx	@dptr,a
                           6380 ;	d:\ztex\include\ztex-isr.h:247: break; 
                           6381 ;	d:\ztex\include\ztex-isr.h:248: default:
   1A99 80 78         [24] 6382 	sjmp	00160$
   1A9B                    6383 00150$:
                           6384 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1A9B 90 E6 A0      [24] 6385 	mov	dptr,#_EP0CS
   1A9E E0            [24] 6386 	movx	a,@dptr
   1A9F FF            [12] 6387 	mov	r7,a
   1AA0 44 01         [12] 6388 	orl	a,#0x01
   1AA2 F0            [24] 6389 	movx	@dptr,a
                           6390 ;	d:\ztex\include\ztex-isr.h:251: break;
                           6391 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1AA3 80 6E         [24] 6392 	sjmp	00160$
   1AA5                    6393 00152$:
                           6394 ;	d:\ztex\include\ztex-isr.h:253: break;			
                           6395 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1AA5 80 6C         [24] 6396 	sjmp	00160$
   1AA7                    6397 00153$:
   1AA7 90 E7 40      [24] 6398 	mov	dptr,#_EP0BUF
                           6399 ;	d:\ztex\include\ztex-isr.h:256: EP0BCH = 0;
   1AAA E4            [12] 6400 	clr	a
   1AAB F0            [24] 6401 	movx	@dptr,a
   1AAC 90 E6 8A      [24] 6402 	mov	dptr,#_EP0BCH
   1AAF F0            [24] 6403 	movx	@dptr,a
                           6404 ;	d:\ztex\include\ztex-isr.h:257: EP0BCL = 1;
   1AB0 90 E6 8B      [24] 6405 	mov	dptr,#_EP0BCL
   1AB3 74 01         [12] 6406 	mov	a,#0x01
   1AB5 F0            [24] 6407 	movx	@dptr,a
                           6408 ;	d:\ztex\include\ztex-isr.h:258: break;
                           6409 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1AB6 80 5B         [24] 6410 	sjmp	00160$
   1AB8                    6411 00154$:
                           6412 ;	d:\ztex\include\ztex-isr.h:260: resetToggleData();
   1AB8 12 15 45      [24] 6413 	lcall	_resetToggleData
                           6414 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1ABB 80 56         [24] 6415 	sjmp	00160$
   1ABD                    6416 00155$:
   1ABD 90 E7 40      [24] 6417 	mov	dptr,#_EP0BUF
                           6418 ;	d:\ztex\include\ztex-isr.h:264: EP0BCH = 0;
   1AC0 E4            [12] 6419 	clr	a
   1AC1 F0            [24] 6420 	movx	@dptr,a
   1AC2 90 E6 8A      [24] 6421 	mov	dptr,#_EP0BCH
   1AC5 F0            [24] 6422 	movx	@dptr,a
                           6423 ;	d:\ztex\include\ztex-isr.h:265: EP0BCL = 1;
   1AC6 90 E6 8B      [24] 6424 	mov	dptr,#_EP0BCL
   1AC9 74 01         [12] 6425 	mov	a,#0x01
   1ACB F0            [24] 6426 	movx	@dptr,a
                           6427 ;	d:\ztex\include\ztex-isr.h:266: break;
                           6428 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1ACC 80 45         [24] 6429 	sjmp	00160$
   1ACE                    6430 00156$:
                           6431 ;	d:\ztex\include\ztex-isr.h:268: resetToggleData();
   1ACE 12 15 45      [24] 6432 	lcall	_resetToggleData
                           6433 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1AD1 80 40         [24] 6434 	sjmp	00160$
   1AD3                    6435 00157$:
                           6436 ;	d:\ztex\include\ztex-isr.h:271: if ( SETUPDAT[0] == 0x82 ) {
   1AD3 90 E6 B8      [24] 6437 	mov	dptr,#_SETUPDAT
   1AD6 E0            [24] 6438 	movx	a,@dptr
   1AD7 FF            [12] 6439 	mov	r7,a
   1AD8 BF 82 38      [24] 6440 	cjne	r7,#0x82,00160$
                           6441 ;	d:\ztex\include\ztex-isr.h:272: ISOFRAME_COUNTER[ ((SETUPDAT[4] >> 1)-1) & 3 ] = 0;
   1ADB 90 E6 BC      [24] 6442 	mov	dptr,#(_SETUPDAT + 0x0004)
   1ADE E0            [24] 6443 	movx	a,@dptr
   1ADF C3            [12] 6444 	clr	c
   1AE0 13            [12] 6445 	rrc	a
   1AE1 14            [12] 6446 	dec	a
   1AE2 54 03         [12] 6447 	anl	a,#0x03
   1AE4 75 F0 02      [24] 6448 	mov	b,#0x02
   1AE7 A4            [48] 6449 	mul	ab
   1AE8 24 71         [12] 6450 	add	a,#_ISOFRAME_COUNTER
   1AEA F5 82         [12] 6451 	mov	dpl,a
   1AEC 74 3A         [12] 6452 	mov	a,#(_ISOFRAME_COUNTER >> 8)
   1AEE 35 F0         [12] 6453 	addc	a,b
   1AF0 F5 83         [12] 6454 	mov	dph,a
   1AF2 E4            [12] 6455 	clr	a
   1AF3 F0            [24] 6456 	movx	@dptr,a
   1AF4 E4            [12] 6457 	clr	a
   1AF5 A3            [24] 6458 	inc	dptr
   1AF6 F0            [24] 6459 	movx	@dptr,a
                           6460 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1AF7 90 E6 85      [24] 6461 	mov	dptr,#_USBFRAMEL
   1AFA E0            [24] 6462 	movx	a,@dptr
   1AFB 90 E7 40      [24] 6463 	mov	dptr,#_EP0BUF
   1AFE F0            [24] 6464 	movx	@dptr,a
                           6465 ;	d:\ztex\include\ztex-isr.h:274: EP0BUF[1] = USBFRAMEH;	
   1AFF 90 E6 84      [24] 6466 	mov	dptr,#_USBFRAMEH
   1B02 E0            [24] 6467 	movx	a,@dptr
   1B03 FF            [12] 6468 	mov	r7,a
   1B04 90 E7 41      [24] 6469 	mov	dptr,#(_EP0BUF + 0x0001)
   1B07 F0            [24] 6470 	movx	@dptr,a
                           6471 ;	d:\ztex\include\ztex-isr.h:275: EP0BCH = 0;
   1B08 90 E6 8A      [24] 6472 	mov	dptr,#_EP0BCH
   1B0B E4            [12] 6473 	clr	a
   1B0C F0            [24] 6474 	movx	@dptr,a
                           6475 ;	d:\ztex\include\ztex-isr.h:276: EP0BCL = 2;
   1B0D 90 E6 8B      [24] 6476 	mov	dptr,#_EP0BCL
   1B10 74 02         [12] 6477 	mov	a,#0x02
   1B12 F0            [24] 6478 	movx	@dptr,a
                           6479 ;	d:\ztex\include\ztex-isr.h:280: }
   1B13                    6480 00160$:
                           6481 ;	d:\ztex\include\ztex-isr.h:283: switch ( bmRequestType ) {
   1B13 90 E6 B8      [24] 6482 	mov	dptr,#_bmRequestType
   1B16 E0            [24] 6483 	movx	a,@dptr
   1B17 FF            [12] 6484 	mov	r7,a
   1B18 BF 40 03      [24] 6485 	cjne	r7,#0x40,00381$
   1B1B 02 1E 1C      [24] 6486 	ljmp	00187$
   1B1E                    6487 00381$:
   1B1E BF C0 02      [24] 6488 	cjne	r7,#0xC0,00382$
   1B21 80 03         [24] 6489 	sjmp	00383$
   1B23                    6490 00382$:
   1B23 02 1E 4A      [24] 6491 	ljmp	00191$
   1B26                    6492 00383$:
                           6493 ;	d:\ztex\include\ztex-isr.h:285: ep0_payload_remaining = (SETUPDAT[7] << 8) | SETUPDAT[6];
   1B26 90 E6 BF      [24] 6494 	mov	dptr,#(_SETUPDAT + 0x0007)
   1B29 E0            [24] 6495 	movx	a,@dptr
   1B2A FE            [12] 6496 	mov	r6,a
   1B2B 7F 00         [12] 6497 	mov	r7,#0x00
   1B2D 90 E6 BE      [24] 6498 	mov	dptr,#(_SETUPDAT + 0x0006)
   1B30 E0            [24] 6499 	movx	a,@dptr
   1B31 FD            [12] 6500 	mov	r5,a
   1B32 7C 00         [12] 6501 	mov	r4,#0x00
   1B34 90 3A 6A      [24] 6502 	mov	dptr,#_ep0_payload_remaining
   1B37 ED            [12] 6503 	mov	a,r5
   1B38 4F            [12] 6504 	orl	a,r7
   1B39 F0            [24] 6505 	movx	@dptr,a
   1B3A EC            [12] 6506 	mov	a,r4
   1B3B 4E            [12] 6507 	orl	a,r6
   1B3C A3            [24] 6508 	inc	dptr
   1B3D F0            [24] 6509 	movx	@dptr,a
                           6510 ;	d:\ztex\include\ztex-isr.h:286: ep0_payload_update();
   1B3E 12 15 DC      [24] 6511 	lcall	_ep0_payload_update
                           6512 ;	d:\ztex\include\ztex-isr.h:288: switch ( bRequest ) {
   1B41 90 E6 B9      [24] 6513 	mov	dptr,#_bRequest
   1B44 E0            [24] 6514 	movx	a,@dptr
   1B45 FF            [12] 6515 	mov	r7,a
   1B46 BF 01 02      [24] 6516 	cjne	r7,#0x01,00384$
   1B49 80 4C         [24] 6517 	sjmp	00163$
   1B4B                    6518 00384$:
   1B4B BF 03 02      [24] 6519 	cjne	r7,#0x03,00385$
   1B4E 80 4D         [24] 6520 	sjmp	00164$
   1B50                    6521 00385$:
   1B50 BF 22 02      [24] 6522 	cjne	r7,#0x22,00386$
   1B53 80 25         [24] 6523 	sjmp	00162$
   1B55                    6524 00386$:
   1B55 BF 30 03      [24] 6525 	cjne	r7,#0x30,00387$
   1B58 02 1D C1      [24] 6526 	ljmp	00181$
   1B5B                    6527 00387$:
   1B5B BF 38 02      [24] 6528 	cjne	r7,#0x38,00388$
   1B5E 80 43         [24] 6529 	sjmp	00165$
   1B60                    6530 00388$:
   1B60 BF 3A 02      [24] 6531 	cjne	r7,#0x3A,00389$
   1B63 80 67         [24] 6532 	sjmp	00166$
   1B65                    6533 00389$:
   1B65 BF 40 03      [24] 6534 	cjne	r7,#0x40,00390$
   1B68 02 1C 0B      [24] 6535 	ljmp	00167$
   1B6B                    6536 00390$:
   1B6B BF 41 03      [24] 6537 	cjne	r7,#0x41,00391$
   1B6E 02 1C 38      [24] 6538 	ljmp	00168$
   1B71                    6539 00391$:
   1B71 BF 43 03      [24] 6540 	cjne	r7,#0x43,00392$
   1B74 02 1D 39      [24] 6541 	ljmp	00180$
   1B77                    6542 00392$:
   1B77 02 1E 12      [24] 6543 	ljmp	00185$
                           6544 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1B7A                    6545 00162$:
                           6546 ;	d:\ztex\include\ztex-isr.h:290: SUDPTRCTL = 0;
   1B7A 90 E6 B5      [24] 6547 	mov	dptr,#_SUDPTRCTL
                           6548 ;	d:\ztex\include\ztex-isr.h:291: EP0BCH = 0;
   1B7D E4            [12] 6549 	clr	a
   1B7E F0            [24] 6550 	movx	@dptr,a
   1B7F 90 E6 8A      [24] 6551 	mov	dptr,#_EP0BCH
   1B82 F0            [24] 6552 	movx	@dptr,a
                           6553 ;	d:\ztex\include\ztex-isr.h:292: EP0BCL = ZTEX_DESCRIPTOR_LEN;
   1B83 90 E6 8B      [24] 6554 	mov	dptr,#_EP0BCL
   1B86 74 28         [12] 6555 	mov	a,#0x28
   1B88 F0            [24] 6556 	movx	@dptr,a
                           6557 ;	d:\ztex\include\ztex-isr.h:293: SUDPTRH = MSB(ZTEX_DESCRIPTOR_OFFS);
   1B89 90 E6 B3      [24] 6558 	mov	dptr,#_SUDPTRH
   1B8C E4            [12] 6559 	clr	a
   1B8D F0            [24] 6560 	movx	@dptr,a
                           6561 ;	d:\ztex\include\ztex-isr.h:294: SUDPTRL = LSB(ZTEX_DESCRIPTOR_OFFS); 
   1B8E 90 E6 B4      [24] 6562 	mov	dptr,#_SUDPTRL
   1B91 74 6C         [12] 6563 	mov	a,#0x6C
   1B93 F0            [24] 6564 	movx	@dptr,a
                           6565 ;	d:\ztex\include\ztex-isr.h:295: break;
   1B94 02 1E 4A      [24] 6566 	ljmp	00191$
                           6567 ;	d:\ztex\include\ztex-conf.h:100: case $0:
   1B97                    6568 00163$:
   1B97 12 02 FF      [24] 6569 	lcall	_sendPwd
                           6570 ;	d:\ztex\include\ztex-conf.h:102: break;
   1B9A 02 1E 4A      [24] 6571 	ljmp	00191$
                           6572 ;	d:\ztex\include\ztex-conf.h:100: case $0:
   1B9D                    6573 00164$:
                           6574 ;	usb-test.c:116: sendStatus();
   1B9D 12 03 34      [24] 6575 	lcall	_sendStatus
                           6576 ;	d:\ztex\include\ztex-conf.h:102: break;
   1BA0 02 1E 4A      [24] 6577 	ljmp	00191$
                           6578 ;	d:\ztex\include\ztex-conf.h:100: case $0:
   1BA3                    6579 00165$:
                           6580 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1BA3 90 E6 BB      [24] 6581 	mov	dptr,#(_SETUPDAT + 0x0003)
   1BA6 E0            [24] 6582 	movx	a,@dptr
   1BA7 FE            [12] 6583 	mov	r6,a
   1BA8 7F 00         [12] 6584 	mov	r7,#0x00
   1BAA 90 E6 BA      [24] 6585 	mov	dptr,#(_SETUPDAT + 0x0002)
   1BAD E0            [24] 6586 	movx	a,@dptr
   1BAE FD            [12] 6587 	mov	r5,a
   1BAF 7C 00         [12] 6588 	mov	r4,#0x00
   1BB1 90 3A 42      [24] 6589 	mov	dptr,#_eeprom_addr
   1BB4 ED            [12] 6590 	mov	a,r5
   1BB5 4F            [12] 6591 	orl	a,r7
   1BB6 F0            [24] 6592 	movx	@dptr,a
   1BB7 EC            [12] 6593 	mov	a,r4
   1BB8 4E            [12] 6594 	orl	a,r6
   1BB9 A3            [24] 6595 	inc	dptr
   1BBA F0            [24] 6596 	movx	@dptr,a
                           6597 ;	d:\ztex\include\ztex-eeprom.h:216: EP0BCH = 0;
   1BBB 90 E6 8A      [24] 6598 	mov	dptr,#_EP0BCH
   1BBE E4            [12] 6599 	clr	a
   1BBF F0            [24] 6600 	movx	@dptr,a
                           6601 ;	d:\ztex\include\ztex-eeprom.h:217: EP0BCL = eeprom_read_ep0(); 
   1BC0 12 06 0B      [24] 6602 	lcall	_eeprom_read_ep0
   1BC3 E5 82         [12] 6603 	mov	a,dpl
   1BC5 90 E6 8B      [24] 6604 	mov	dptr,#_EP0BCL
   1BC8 F0            [24] 6605 	movx	@dptr,a
                           6606 ;	d:\ztex\include\ztex-conf.h:102: break;
   1BC9 02 1E 4A      [24] 6607 	ljmp	00191$
                           6608 ;	d:\ztex\include\ztex-conf.h:100: case $0:
   1BCC                    6609 00166$:
                           6610 ;	d:\ztex\include\ztex-eeprom.h:244: EP0BUF[0] = LSB(eeprom_write_bytes);
   1BCC 90 3A 44      [24] 6611 	mov	dptr,#_eeprom_write_bytes
   1BCF E0            [24] 6612 	movx	a,@dptr
   1BD0 FE            [12] 6613 	mov	r6,a
   1BD1 A3            [24] 6614 	inc	dptr
   1BD2 E0            [24] 6615 	movx	a,@dptr
   1BD3 90 E7 40      [24] 6616 	mov	dptr,#_EP0BUF
   1BD6 EE            [12] 6617 	mov	a,r6
   1BD7 F0            [24] 6618 	movx	@dptr,a
                           6619 ;	d:\ztex\include\ztex-eeprom.h:245: EP0BUF[1] = MSB(eeprom_write_bytes);
   1BD8 90 3A 44      [24] 6620 	mov	dptr,#_eeprom_write_bytes
   1BDB E0            [24] 6621 	movx	a,@dptr
   1BDC A3            [24] 6622 	inc	dptr
   1BDD E0            [24] 6623 	movx	a,@dptr
   1BDE 90 E7 41      [24] 6624 	mov	dptr,#(_EP0BUF + 0x0001)
   1BE1 F0            [24] 6625 	movx	@dptr,a
                           6626 ;	d:\ztex\include\ztex-eeprom.h:246: EP0BUF[2] = eeprom_write_checksum;
   1BE2 90 3A 46      [24] 6627 	mov	dptr,#_eeprom_write_checksum
   1BE5 E0            [24] 6628 	movx	a,@dptr
   1BE6 90 E7 42      [24] 6629 	mov	dptr,#(_EP0BUF + 0x0002)
   1BE9 F0            [24] 6630 	movx	@dptr,a
                           6631 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1BEA 75 08 00      [24] 6632 	mov	_eeprom_select_PARM_2,#0x00
   1BED 75 09 01      [24] 6633 	mov	_eeprom_select_PARM_3,#0x01
   1BF0 75 82 A2      [24] 6634 	mov	dpl,#0xA2
   1BF3 12 03 DF      [24] 6635 	lcall	_eeprom_select
   1BF6 AF 82         [24] 6636 	mov	r7,dpl
   1BF8 90 E7 43      [24] 6637 	mov	dptr,#(_EP0BUF + 0x0003)
   1BFB EF            [12] 6638 	mov	a,r7
   1BFC F0            [24] 6639 	movx	@dptr,a
                           6640 ;	d:\ztex\include\ztex-eeprom.h:248: EP0BCH = 0;
   1BFD 90 E6 8A      [24] 6641 	mov	dptr,#_EP0BCH
   1C00 E4            [12] 6642 	clr	a
   1C01 F0            [24] 6643 	movx	@dptr,a
                           6644 ;	d:\ztex\include\ztex-eeprom.h:249: EP0BCL = 4;
   1C02 90 E6 8B      [24] 6645 	mov	dptr,#_EP0BCL
   1C05 74 04         [12] 6646 	mov	a,#0x04
   1C07 F0            [24] 6647 	movx	@dptr,a
                           6648 ;	d:\ztex\include\ztex-conf.h:102: break;
   1C08 02 1E 4A      [24] 6649 	ljmp	00191$
                           6650 ;	d:\ztex\include\ztex-conf.h:100: case $0:
   1C0B                    6651 00167$:
                           6652 ;	d:\ztex\include\ztex-utils.h:121: AUTOPTRL1=LO(&($0));
   1C0B 75 9B 47      [24] 6653 	mov	_AUTOPTRL1,#_flash_enabled
                           6654 ;	d:\ztex\include\ztex-utils.h:122: AUTOPTRH1=HI(&($0));
   1C0E 7E 47         [12] 6655 	mov	r6,#_flash_enabled
   1C10 7F 3A         [12] 6656 	mov	r7,#(_flash_enabled >> 8)
   1C12 8F 06         [24] 6657 	mov	ar6,r7
   1C14 8E 9A         [24] 6658 	mov	_AUTOPTRH1,r6
                           6659 ;	d:\ztex\include\ztex-utils.h:123: AUTOPTRL2=LO(&($1));
   1C16 75 9E 40      [24] 6660 	mov	_AUTOPTRL2,#_EP0BUF
                           6661 ;	d:\ztex\include\ztex-utils.h:124: AUTOPTRH2=HI(&($1));
   1C19 7E 40         [12] 6662 	mov	r6,#_EP0BUF
   1C1B 7F E7         [12] 6663 	mov	r7,#(_EP0BUF >> 8)
   1C1D 8F 06         [24] 6664 	mov	ar6,r7
   1C1F 8E 9D         [24] 6665 	mov	_AUTOPTRH2,r6
                           6666 ;	d:\ztex\include\ztex-utils.h:130: __endasm; 
   1C21 C0 02         [24] 6667 	push ar2
   1C23 7A 08         [12] 6668 	mov r2,#(8);
   1C25 12 02 AB      [24] 6669 	lcall _MEM_COPY1_int
   1C28 D0 02         [24] 6670 	pop ar2
                           6671 ;	d:\ztex\include\ztex-flash1.h:1063: EP0BCH = 0;
   1C2A 90 E6 8A      [24] 6672 	mov	dptr,#_EP0BCH
   1C2D E4            [12] 6673 	clr	a
   1C2E F0            [24] 6674 	movx	@dptr,a
                           6675 ;	d:\ztex\include\ztex-flash1.h:1064: EP0BCL = 8;
   1C2F 90 E6 8B      [24] 6676 	mov	dptr,#_EP0BCL
   1C32 74 08         [12] 6677 	mov	a,#0x08
   1C34 F0            [24] 6678 	movx	@dptr,a
                           6679 ;	d:\ztex\include\ztex-conf.h:102: break;
   1C35 02 1E 4A      [24] 6680 	ljmp	00191$
                           6681 ;	d:\ztex\include\ztex-conf.h:100: case $0:
   1C38                    6682 00168$:
                           6683 ;	d:\ztex\include\ztex-flash1.h:1098: if ( (MMC_IO & MMC_bmCS) == 0 ) {
   1C38 E5 A0         [12] 6684 	mov	a,_IOC
   1C3A 20 E5 19      [24] 6685 	jb	acc.5,00170$
                           6686 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1C3D 90 3A 4E      [24] 6687 	mov	dptr,#_flash_ec
   1C40 74 04         [12] 6688 	mov	a,#0x04
   1C42 F0            [24] 6689 	movx	@dptr,a
   1C43 90 E6 A0      [24] 6690 	mov	dptr,#_EP0CS
   1C46 E0            [24] 6691 	movx	a,@dptr
   1C47 FF            [12] 6692 	mov	r7,a
   1C48 44 01         [12] 6693 	orl	a,#0x01
   1C4A F0            [24] 6694 	movx	@dptr,a
                           6695 ;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
   1C4B 90 3A 6A      [24] 6696 	mov	dptr,#_ep0_payload_remaining
   1C4E E4            [12] 6697 	clr	a
   1C4F F0            [24] 6698 	movx	@dptr,a
   1C50 E4            [12] 6699 	clr	a
   1C51 A3            [24] 6700 	inc	dptr
   1C52 F0            [24] 6701 	movx	@dptr,a
                           6702 ;	d:\ztex\include\ztex-conf.h:139: break;
   1C53 02 1E 4A      [24] 6703 	ljmp	00191$
   1C56                    6704 00170$:
                           6705 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1C56 12 07 C0      [24] 6706 	lcall	_mmc_select
   1C59 E5 82         [12] 6707 	mov	a,dpl
   1C5B 60 16         [24] 6708 	jz	00172$
                           6709 ;	d:\ztex\include\ztex-flash1.h:1103: mmc_deselect();
   1C5D 12 07 D3      [24] 6710 	lcall	_mmc_deselect
                           6711 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1C60 90 E6 A0      [24] 6712 	mov	dptr,#_EP0CS
   1C63 E0            [24] 6713 	movx	a,@dptr
   1C64 FF            [12] 6714 	mov	r7,a
   1C65 44 01         [12] 6715 	orl	a,#0x01
   1C67 F0            [24] 6716 	movx	@dptr,a
                           6717 ;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
   1C68 90 3A 6A      [24] 6718 	mov	dptr,#_ep0_payload_remaining
   1C6B E4            [12] 6719 	clr	a
   1C6C F0            [24] 6720 	movx	@dptr,a
   1C6D E4            [12] 6721 	clr	a
   1C6E A3            [24] 6722 	inc	dptr
   1C6F F0            [24] 6723 	movx	@dptr,a
                           6724 ;	d:\ztex\include\ztex-conf.h:139: break;
   1C70 02 1E 4A      [24] 6725 	ljmp	00191$
   1C73                    6726 00172$:
                           6727 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1C73 75 82 08      [24] 6728 	mov	dpl,#0x08
   1C76 12 06 6C      [24] 6729 	lcall	_mmc_clocks
                           6730 ;	d:\ztex\include\ztex-flash1.h:1107: mmc_last_cmd = 18;
   1C79 90 3A 4F      [24] 6731 	mov	dptr,#_mmc_last_cmd
   1C7C 74 12         [12] 6732 	mov	a,#0x12
   1C7E F0            [24] 6733 	movx	@dptr,a
                           6734 ;	d:\ztex\include\ztex-flash1.h:1108: mmc_buffer[0] = 18 | 64;
   1C7F 90 3A 52      [24] 6735 	mov	dptr,#_mmc_buffer
   1C82 74 52         [12] 6736 	mov	a,#0x52
   1C84 F0            [24] 6737 	movx	@dptr,a
                           6738 ;	d:\ztex\include\ztex-flash1.h:1109: if ( mmc_version == 0 ) {
   1C85 90 3A 51      [24] 6739 	mov	dptr,#_mmc_version
   1C88 E0            [24] 6740 	movx	a,@dptr
   1C89 FF            [12] 6741 	mov	r7,a
   1C8A 70 23         [24] 6742 	jnz	00174$
                           6743 ;	d:\ztex\include\ztex-flash1.h:1129: __endasm;
   1C8C C3            [12] 6744 	clr c
   1C8D 90 E6 BA      [24] 6745 	mov dptr,#(_SETUPDAT + 2)
   1C90 E0            [24] 6746 	movx a,@dptr
   1C91 90 3A 55      [24] 6747 	mov dptr,#(_mmc_buffer + 3)
   1C94 33            [12] 6748 	rlc a
   1C95 F0            [24] 6749 	movx @dptr,a
   1C96 90 E6 BB      [24] 6750 	mov dptr,#(_SETUPDAT + 3)
   1C99 E0            [24] 6751 	movx a,@dptr
   1C9A 90 3A 54      [24] 6752 	mov dptr,#(_mmc_buffer + 2)
   1C9D 33            [12] 6753 	rlc a
   1C9E F0            [24] 6754 	movx @dptr,a
   1C9F 90 E6 BC      [24] 6755 	mov dptr,#(_SETUPDAT + 4)
   1CA2 E0            [24] 6756 	movx a,@dptr
   1CA3 90 3A 53      [24] 6757 	mov dptr,#(_mmc_buffer + 1)
   1CA6 33            [12] 6758 	rlc a
   1CA7 F0            [24] 6759 	movx @dptr,a
                           6760 ;	d:\ztex\include\ztex-flash1.h:1130: mmc_buffer[4] = 0;
   1CA8 90 3A 56      [24] 6761 	mov	dptr,#(_mmc_buffer + 0x0004)
   1CAB E4            [12] 6762 	clr	a
   1CAC F0            [24] 6763 	movx	@dptr,a
   1CAD 80 21         [24] 6764 	sjmp	00175$
   1CAF                    6765 00174$:
                           6766 ;	d:\ztex\include\ztex-flash1.h:1133: mmc_buffer[1] = SETUPDAT[5];
   1CAF 90 E6 BD      [24] 6767 	mov	dptr,#(_SETUPDAT + 0x0005)
   1CB2 E0            [24] 6768 	movx	a,@dptr
   1CB3 90 3A 53      [24] 6769 	mov	dptr,#(_mmc_buffer + 0x0001)
   1CB6 F0            [24] 6770 	movx	@dptr,a
                           6771 ;	d:\ztex\include\ztex-flash1.h:1134: mmc_buffer[2] = SETUPDAT[4];
   1CB7 90 E6 BC      [24] 6772 	mov	dptr,#(_SETUPDAT + 0x0004)
   1CBA E0            [24] 6773 	movx	a,@dptr
   1CBB 90 3A 54      [24] 6774 	mov	dptr,#(_mmc_buffer + 0x0002)
   1CBE F0            [24] 6775 	movx	@dptr,a
                           6776 ;	d:\ztex\include\ztex-flash1.h:1135: mmc_buffer[3] = SETUPDAT[3];
   1CBF 90 E6 BB      [24] 6777 	mov	dptr,#(_SETUPDAT + 0x0003)
   1CC2 E0            [24] 6778 	movx	a,@dptr
   1CC3 90 3A 55      [24] 6779 	mov	dptr,#(_mmc_buffer + 0x0003)
   1CC6 F0            [24] 6780 	movx	@dptr,a
                           6781 ;	d:\ztex\include\ztex-flash1.h:1136: mmc_buffer[4] = SETUPDAT[2];
   1CC7 90 E6 BA      [24] 6782 	mov	dptr,#(_SETUPDAT + 0x0002)
   1CCA E0            [24] 6783 	movx	a,@dptr
   1CCB FF            [12] 6784 	mov	r7,a
   1CCC 90 3A 56      [24] 6785 	mov	dptr,#(_mmc_buffer + 0x0004)
   1CCF F0            [24] 6786 	movx	@dptr,a
   1CD0                    6787 00175$:
                           6788 ;	d:\ztex\include\ztex-flash1.h:1138: mmc_buffer[5] = 1;
   1CD0 90 3A 57      [24] 6789 	mov	dptr,#(_mmc_buffer + 0x0005)
   1CD3 74 01         [12] 6790 	mov	a,#0x01
   1CD5 F0            [24] 6791 	movx	@dptr,a
                           6792 ;	d:\ztex\include\ztex-flash1.h:1139: flash_write(mmc_buffer,6);
   1CD6 75 11 06      [24] 6793 	mov	_flash_write_PARM_2,#0x06
   1CD9 90 3A 52      [24] 6794 	mov	dptr,#_mmc_buffer
   1CDC 12 07 30      [24] 6795 	lcall	_flash_write
                           6796 ;	d:\ztex\include\ztex-flash1.h:1140: mmc_read_response();
   1CDF 12 07 E5      [24] 6797 	lcall	_mmc_read_response
                           6798 ;	d:\ztex\include\ztex-flash1.h:1141: if ( mmc_response != 0 ) {
   1CE2 90 3A 50      [24] 6799 	mov	dptr,#_mmc_response
   1CE5 E0            [24] 6800 	movx	a,@dptr
   1CE6 FF            [12] 6801 	mov	r7,a
   1CE7 60 1C         [24] 6802 	jz	00177$
                           6803 ;	d:\ztex\include\ztex-flash1.h:1142: flash_ec = FLASH_EC_CMD_ERROR; 
   1CE9 90 3A 4E      [24] 6804 	mov	dptr,#_flash_ec
   1CEC 74 01         [12] 6805 	mov	a,#0x01
   1CEE F0            [24] 6806 	movx	@dptr,a
                           6807 ;	d:\ztex\include\ztex-flash1.h:1143: mmc_deselect();
   1CEF 12 07 D3      [24] 6808 	lcall	_mmc_deselect
                           6809 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1CF2 90 E6 A0      [24] 6810 	mov	dptr,#_EP0CS
   1CF5 E0            [24] 6811 	movx	a,@dptr
   1CF6 FF            [12] 6812 	mov	r7,a
   1CF7 44 01         [12] 6813 	orl	a,#0x01
   1CF9 F0            [24] 6814 	movx	@dptr,a
                           6815 ;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
   1CFA 90 3A 6A      [24] 6816 	mov	dptr,#_ep0_payload_remaining
   1CFD E4            [12] 6817 	clr	a
   1CFE F0            [24] 6818 	movx	@dptr,a
   1CFF E4            [12] 6819 	clr	a
   1D00 A3            [24] 6820 	inc	dptr
   1D01 F0            [24] 6821 	movx	@dptr,a
                           6822 ;	d:\ztex\include\ztex-conf.h:139: break;
   1D02 02 1E 4A      [24] 6823 	ljmp	00191$
   1D05                    6824 00177$:
                           6825 ;	d:\ztex\include\ztex-flash1.h:1147: mmc_ep0_wait = 1;
   1D05 90 3A 62      [24] 6826 	mov	dptr,#_mmc_ep0_wait
   1D08 74 01         [12] 6827 	mov	a,#0x01
   1D0A F0            [24] 6828 	movx	@dptr,a
                           6829 ;	d:\ztex\include\ztex-flash1.h:1148: mmc_read_ep0();  
   1D0B 12 0F B8      [24] 6830 	lcall	_mmc_read_ep0
                           6831 ;	d:\ztex\include\ztex-flash1.h:1149: if ( flash_ec != 0 ) {
   1D0E 90 3A 4E      [24] 6832 	mov	dptr,#_flash_ec
   1D11 E0            [24] 6833 	movx	a,@dptr
   1D12 FF            [12] 6834 	mov	r7,a
   1D13 60 13         [24] 6835 	jz	00179$
                           6836 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1D15 90 E6 A0      [24] 6837 	mov	dptr,#_EP0CS
   1D18 E0            [24] 6838 	movx	a,@dptr
   1D19 FF            [12] 6839 	mov	r7,a
   1D1A 44 01         [12] 6840 	orl	a,#0x01
   1D1C F0            [24] 6841 	movx	@dptr,a
                           6842 ;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
   1D1D 90 3A 6A      [24] 6843 	mov	dptr,#_ep0_payload_remaining
   1D20 E4            [12] 6844 	clr	a
   1D21 F0            [24] 6845 	movx	@dptr,a
   1D22 E4            [12] 6846 	clr	a
   1D23 A3            [24] 6847 	inc	dptr
   1D24 F0            [24] 6848 	movx	@dptr,a
                           6849 ;	d:\ztex\include\ztex-conf.h:139: break;
   1D25 02 1E 4A      [24] 6850 	ljmp	00191$
   1D28                    6851 00179$:
                           6852 ;	d:\ztex\include\ztex-flash1.h:1152: EP0BCH = 0;
   1D28 90 E6 8A      [24] 6853 	mov	dptr,#_EP0BCH
   1D2B E4            [12] 6854 	clr	a
   1D2C F0            [24] 6855 	movx	@dptr,a
                           6856 ;	d:\ztex\include\ztex-flash1.h:1153: EP0BCL = ep0_payload_transfer; 
   1D2D 90 3A 6C      [24] 6857 	mov	dptr,#_ep0_payload_transfer
   1D30 E0            [24] 6858 	movx	a,@dptr
   1D31 FF            [12] 6859 	mov	r7,a
   1D32 90 E6 8B      [24] 6860 	mov	dptr,#_EP0BCL
   1D35 F0            [24] 6861 	movx	@dptr,a
                           6862 ;	d:\ztex\include\ztex-conf.h:102: break;
   1D36 02 1E 4A      [24] 6863 	ljmp	00191$
                           6864 ;	d:\ztex\include\ztex-conf.h:100: case $0:
   1D39                    6865 00180$:
                           6866 ;	d:\ztex\include\ztex-utils.h:121: AUTOPTRL1=LO(&($0));
   1D39 75 9B 4E      [24] 6867 	mov	_AUTOPTRL1,#_flash_ec
                           6868 ;	d:\ztex\include\ztex-utils.h:122: AUTOPTRH1=HI(&($0));
   1D3C 7E 4E         [12] 6869 	mov	r6,#_flash_ec
   1D3E 7F 3A         [12] 6870 	mov	r7,#(_flash_ec >> 8)
   1D40 8F 06         [24] 6871 	mov	ar6,r7
   1D42 8E 9A         [24] 6872 	mov	_AUTOPTRH1,r6
                           6873 ;	d:\ztex\include\ztex-utils.h:123: AUTOPTRL2=LO(&($1));
   1D44 75 9E 42      [24] 6874 	mov	_AUTOPTRL2,#(_EP0BUF + 0x0002)
                           6875 ;	d:\ztex\include\ztex-utils.h:124: AUTOPTRH2=HI(&($1));
   1D47 7E 42         [12] 6876 	mov	r6,#(_EP0BUF + 0x0002)
   1D49 7F E7         [12] 6877 	mov	r7,#((_EP0BUF + 0x0002) >> 8)
   1D4B 8F 06         [24] 6878 	mov	ar6,r7
   1D4D 8E 9D         [24] 6879 	mov	_AUTOPTRH2,r6
                           6880 ;	d:\ztex\include\ztex-utils.h:130: __endasm; 
   1D4F C0 02         [24] 6881 	push ar2
   1D51 7A 14         [12] 6882 	mov r2,#(20);
   1D53 12 02 AB      [24] 6883 	lcall _MEM_COPY1_int
   1D56 D0 02         [24] 6884 	pop ar2
                           6885 ;	d:\ztex\include\ztex-flash1.h:1271: EP0BUF[22] = (MMC__IO_DO & MMC_bmDO) == 0;
   1D58 74 01         [12] 6886 	mov	a,#0x01
   1D5A 55 B0         [12] 6887 	anl	a,_IOD
   1D5C FF            [12] 6888 	mov	r7,a
   1D5D E4            [12] 6889 	clr	a
   1D5E BF 00 01      [24] 6890 	cjne	r7,#0x00,00398$
   1D61 04            [12] 6891 	inc	a
   1D62                    6892 00398$:
   1D62 90 E7 56      [24] 6893 	mov	dptr,#(_EP0BUF + 0x0016)
   1D65 F0            [24] 6894 	movx	@dptr,a
                           6895 ;	d:\ztex\include\ztex-flash1.h:1272: mmc_select();
   1D66 12 07 C0      [24] 6896 	lcall	_mmc_select
                           6897 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1D69 75 82 08      [24] 6898 	mov	dpl,#0x08
   1D6C 12 06 6C      [24] 6899 	lcall	_mmc_clocks
                           6900 ;	d:\ztex\include\ztex-flash1.h:723: mmc_last_cmd = $0;
   1D6F 90 3A 4F      [24] 6901 	mov	dptr,#_mmc_last_cmd
   1D72 74 0D         [12] 6902 	mov	a,#0x0D
   1D74 F0            [24] 6903 	movx	@dptr,a
                           6904 ;	d:\ztex\include\ztex-flash1.h:724: mmc_buffer[0] = 64 | ($0 & 127);
   1D75 90 3A 52      [24] 6905 	mov	dptr,#_mmc_buffer
   1D78 74 4D         [12] 6906 	mov	a,#0x4D
   1D7A F0            [24] 6907 	movx	@dptr,a
                           6908 ;	d:\ztex\include\ztex-flash1.h:725: mmc_buffer[1] = $1;
   1D7B 90 3A 53      [24] 6909 	mov	dptr,#(_mmc_buffer + 0x0001)
                           6910 ;	d:\ztex\include\ztex-flash1.h:726: mmc_buffer[2] = $2;
                           6911 ;	d:\ztex\include\ztex-flash1.h:727: mmc_buffer[3] = $3;
                           6912 ;	d:\ztex\include\ztex-flash1.h:728: mmc_buffer[4] = $4;
   1D7E E4            [12] 6913 	clr	a
   1D7F F0            [24] 6914 	movx	@dptr,a
   1D80 90 3A 54      [24] 6915 	mov	dptr,#(_mmc_buffer + 0x0002)
   1D83 F0            [24] 6916 	movx	@dptr,a
   1D84 90 3A 55      [24] 6917 	mov	dptr,#(_mmc_buffer + 0x0003)
   1D87 F0            [24] 6918 	movx	@dptr,a
   1D88 90 3A 56      [24] 6919 	mov	dptr,#(_mmc_buffer + 0x0004)
   1D8B F0            [24] 6920 	movx	@dptr,a
                           6921 ;	d:\ztex\include\ztex-flash1.h:729: mmc_buffer[5] = $5 | 1;
   1D8C 90 3A 57      [24] 6922 	mov	dptr,#(_mmc_buffer + 0x0005)
   1D8F 74 01         [12] 6923 	mov	a,#0x01
   1D91 F0            [24] 6924 	movx	@dptr,a
                           6925 ;	d:\ztex\include\ztex-flash1.h:730: flash_write(mmc_buffer,6);
   1D92 75 11 06      [24] 6926 	mov	_flash_write_PARM_2,#0x06
   1D95 90 3A 52      [24] 6927 	mov	dptr,#_mmc_buffer
   1D98 12 07 30      [24] 6928 	lcall	_flash_write
                           6929 ;	d:\ztex\include\ztex-flash1.h:731: mmc_read_response();
   1D9B 12 07 E5      [24] 6930 	lcall	_mmc_read_response
                           6931 ;	d:\ztex\include\ztex-flash1.h:1274: EP0BUF[0] = mmc_response;
   1D9E 90 3A 50      [24] 6932 	mov	dptr,#_mmc_response
   1DA1 E0            [24] 6933 	movx	a,@dptr
   1DA2 90 E7 40      [24] 6934 	mov	dptr,#_EP0BUF
   1DA5 F0            [24] 6935 	movx	@dptr,a
                           6936 ;	d:\ztex\include\ztex-flash1.h:1275: EP0BUF[1] = flash_read_byte();
   1DA6 12 06 76      [24] 6937 	lcall	_flash_read_byte
   1DA9 AF 82         [24] 6938 	mov	r7,dpl
   1DAB 90 E7 41      [24] 6939 	mov	dptr,#(_EP0BUF + 0x0001)
   1DAE EF            [12] 6940 	mov	a,r7
   1DAF F0            [24] 6941 	movx	@dptr,a
                           6942 ;	d:\ztex\include\ztex-flash1.h:1276: mmc_deselect();
   1DB0 12 07 D3      [24] 6943 	lcall	_mmc_deselect
                           6944 ;	d:\ztex\include\ztex-flash1.h:1277: EP0BCH = 0;
   1DB3 90 E6 8A      [24] 6945 	mov	dptr,#_EP0BCH
   1DB6 E4            [12] 6946 	clr	a
   1DB7 F0            [24] 6947 	movx	@dptr,a
                           6948 ;	d:\ztex\include\ztex-flash1.h:1278: EP0BCL = 23;
   1DB8 90 E6 8B      [24] 6949 	mov	dptr,#_EP0BCL
   1DBB 74 17         [12] 6950 	mov	a,#0x17
   1DBD F0            [24] 6951 	movx	@dptr,a
                           6952 ;	d:\ztex\include\ztex-conf.h:102: break;
   1DBE 02 1E 4A      [24] 6953 	ljmp	00191$
                           6954 ;	d:\ztex\include\ztex-conf.h:100: case $0:
   1DC1                    6955 00181$:
                           6956 ;	d:\ztex\include\ztex-utils.h:121: AUTOPTRL1=LO(&($0));
   1DC1 75 9B 63      [24] 6957 	mov	_AUTOPTRL1,#_fpga_checksum
                           6958 ;	d:\ztex\include\ztex-utils.h:122: AUTOPTRH1=HI(&($0));
   1DC4 7E 63         [12] 6959 	mov	r6,#_fpga_checksum
   1DC6 7F 3A         [12] 6960 	mov	r7,#(_fpga_checksum >> 8)
   1DC8 8F 06         [24] 6961 	mov	ar6,r7
   1DCA 8E 9A         [24] 6962 	mov	_AUTOPTRH1,r6
                           6963 ;	d:\ztex\include\ztex-utils.h:123: AUTOPTRL2=LO(&($1));
   1DCC 75 9E 41      [24] 6964 	mov	_AUTOPTRL2,#(_EP0BUF + 0x0001)
                           6965 ;	d:\ztex\include\ztex-utils.h:124: AUTOPTRH2=HI(&($1));
   1DCF 7E 41         [12] 6966 	mov	r6,#(_EP0BUF + 0x0001)
   1DD1 7F E7         [12] 6967 	mov	r7,#((_EP0BUF + 0x0001) >> 8)
   1DD3 8F 06         [24] 6968 	mov	ar6,r7
   1DD5 8E 9D         [24] 6969 	mov	_AUTOPTRH2,r6
                           6970 ;	d:\ztex\include\ztex-utils.h:130: __endasm; 
   1DD7 C0 02         [24] 6971 	push ar2
   1DD9 7A 07         [12] 6972 	mov r2,#(7);
   1DDB 12 02 AB      [24] 6973 	lcall _MEM_COPY1_int
   1DDE D0 02         [24] 6974 	pop ar2
                           6975 ;	d:\ztex\include\ztex-fpga3.h:117: OEA &= ~bmBIT1;
   1DE0 AF B2         [24] 6976 	mov	r7,_OEA
   1DE2 74 FD         [12] 6977 	mov	a,#0xFD
   1DE4 5F            [12] 6978 	anl	a,r7
   1DE5 F5 B2         [12] 6979 	mov	_OEA,a
                           6980 ;	d:\ztex\include\ztex-fpga3.h:118: if ( IOA1 )  {
   1DE7 30 81 0C      [24] 6981 	jnb	_IOA1,00183$
                           6982 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1DEA 90 E7 40      [24] 6983 	mov	dptr,#_EP0BUF
   1DED E4            [12] 6984 	clr	a
   1DEE F0            [24] 6985 	movx	@dptr,a
                           6986 ;	d:\ztex\include\ztex-fpga3.h:120: IOA1 = 1;		
   1DEF D2 81         [12] 6987 	setb	_IOA1
                           6988 ;	d:\ztex\include\ztex-fpga3.h:121: OEA |= bmBIT1;
   1DF1 43 B2 02      [24] 6989 	orl	_OEA,#0x02
   1DF4 80 09         [24] 6990 	sjmp	00184$
   1DF6                    6991 00183$:
                           6992 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1DF6 90 E7 40      [24] 6993 	mov	dptr,#_EP0BUF
   1DF9 74 01         [12] 6994 	mov	a,#0x01
   1DFB F0            [24] 6995 	movx	@dptr,a
   1DFC 12 11 AA      [24] 6996 	lcall	_reset_fpga
   1DFF                    6997 00184$:
   1DFF 90 E7 48      [24] 6998 	mov	dptr,#(_EP0BUF + 0x0008)
   1E02 74 01         [12] 6999 	mov	a,#0x01
   1E04 F0            [24] 7000 	movx	@dptr,a
                           7001 ;	d:\ztex\include\ztex-fpga3.h:129: EP0BCH = 0;
   1E05 90 E6 8A      [24] 7002 	mov	dptr,#_EP0BCH
   1E08 E4            [12] 7003 	clr	a
   1E09 F0            [24] 7004 	movx	@dptr,a
                           7005 ;	d:\ztex\include\ztex-fpga3.h:130: EP0BCL = 9;
   1E0A 90 E6 8B      [24] 7006 	mov	dptr,#_EP0BCL
   1E0D 74 09         [12] 7007 	mov	a,#0x09
   1E0F F0            [24] 7008 	movx	@dptr,a
                           7009 ;	d:\ztex\include\ztex-conf.h:102: break;
                           7010 ;	d:\ztex\include\ztex-isr.h:297: default:
   1E10 80 38         [24] 7011 	sjmp	00191$
   1E12                    7012 00185$:
                           7013 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1E12 90 E6 A0      [24] 7014 	mov	dptr,#_EP0CS
   1E15 E0            [24] 7015 	movx	a,@dptr
   1E16 FF            [12] 7016 	mov	r7,a
   1E17 44 01         [12] 7017 	orl	a,#0x01
   1E19 F0            [24] 7018 	movx	@dptr,a
                           7019 ;	d:\ztex\include\ztex-isr.h:300: break;
                           7020 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1E1A 80 2E         [24] 7021 	sjmp	00191$
   1E1C                    7022 00187$:
                           7023 ;	d:\ztex\include\ztex-isr.h:305: if ( SETUPDAT[7]!=0 || SETUPDAT[6]!=0 ) {
   1E1C 90 E6 BF      [24] 7024 	mov	dptr,#(_SETUPDAT + 0x0007)
   1E1F E0            [24] 7025 	movx	a,@dptr
   1E20 70 06         [24] 7026 	jnz	00188$
   1E22 90 E6 BE      [24] 7027 	mov	dptr,#(_SETUPDAT + 0x0006)
   1E25 E0            [24] 7028 	movx	a,@dptr
   1E26 60 1A         [24] 7029 	jz	00189$
   1E28                    7030 00188$:
                           7031 ;	d:\ztex\include\ztex-isr.h:306: ep0_vendor_cmd_setup = 1;
   1E28 90 3A 70      [24] 7032 	mov	dptr,#_ep0_vendor_cmd_setup
   1E2B 74 01         [12] 7033 	mov	a,#0x01
   1E2D F0            [24] 7034 	movx	@dptr,a
                           7035 ;	d:\ztex\include\ztex-isr.h:307: EP0BCL = 0;
   1E2E 90 E6 8B      [24] 7036 	mov	dptr,#_EP0BCL
   1E31 E4            [12] 7037 	clr	a
   1E32 F0            [24] 7038 	movx	@dptr,a
                           7039 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1E33 AF 91         [24] 7040 	mov	r7,_EXIF
   1E35 74 EF         [12] 7041 	mov	a,#0xEF
   1E37 5F            [12] 7042 	anl	a,r7
   1E38 F5 91         [12] 7043 	mov	_EXIF,a
   1E3A 90 E6 5D      [24] 7044 	mov	dptr,#_USBIRQ
   1E3D 74 01         [12] 7045 	mov	a,#0x01
   1E3F F0            [24] 7046 	movx	@dptr,a
   1E40 80 1D         [24] 7047 	sjmp	00192$
   1E42                    7048 00189$:
   1E42 12 16 09      [24] 7049 	lcall	_ep0_vendor_cmd_su
                           7050 ;	d:\ztex\include\ztex-isr.h:313: EP0BCL = 0;
   1E45 90 E6 8B      [24] 7051 	mov	dptr,#_EP0BCL
   1E48 E4            [12] 7052 	clr	a
   1E49 F0            [24] 7053 	movx	@dptr,a
                           7054 ;	d:\ztex\include\ztex-isr.h:315: }
   1E4A                    7055 00191$:
                           7056 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1E4A AF 91         [24] 7057 	mov	r7,_EXIF
   1E4C 74 EF         [12] 7058 	mov	a,#0xEF
   1E4E 5F            [12] 7059 	anl	a,r7
   1E4F F5 91         [12] 7060 	mov	_EXIF,a
   1E51 90 E6 5D      [24] 7061 	mov	dptr,#_USBIRQ
   1E54 74 01         [12] 7062 	mov	a,#0x01
   1E56 F0            [24] 7063 	movx	@dptr,a
   1E57 90 E6 A0      [24] 7064 	mov	dptr,#_EP0CS
   1E5A E0            [24] 7065 	movx	a,@dptr
   1E5B FF            [12] 7066 	mov	r7,a
   1E5C 44 80         [12] 7067 	orl	a,#0x80
   1E5E F0            [24] 7068 	movx	@dptr,a
   1E5F                    7069 00192$:
   1E5F D0 D0         [24] 7070 	pop	psw
   1E61 D0 00         [24] 7071 	pop	(0+0)
   1E63 D0 01         [24] 7072 	pop	(0+1)
   1E65 D0 02         [24] 7073 	pop	(0+2)
   1E67 D0 03         [24] 7074 	pop	(0+3)
   1E69 D0 04         [24] 7075 	pop	(0+4)
   1E6B D0 05         [24] 7076 	pop	(0+5)
   1E6D D0 06         [24] 7077 	pop	(0+6)
   1E6F D0 07         [24] 7078 	pop	(0+7)
   1E71 D0 83         [24] 7079 	pop	dph
   1E73 D0 82         [24] 7080 	pop	dpl
   1E75 D0 F0         [24] 7081 	pop	b
   1E77 D0 E0         [24] 7082 	pop	acc
   1E79 D0 21         [24] 7083 	pop	bits
   1E7B 32            [24] 7084 	reti
                           7085 ;------------------------------------------------------------
                           7086 ;Allocation info for local variables in function 'SOF_ISR'
                           7087 ;------------------------------------------------------------
                           7088 ;	d:\ztex\include\ztex-isr.h:325: void SOF_ISR() __interrupt
                           7089 ;	-----------------------------------------
                           7090 ;	 function SOF_ISR
                           7091 ;	-----------------------------------------
   1E7C                    7092 _SOF_ISR:
   1E7C C0 E0         [24] 7093 	push	acc
   1E7E C0 82         [24] 7094 	push	dpl
   1E80 C0 83         [24] 7095 	push	dph
   1E82 C0 07         [24] 7096 	push	ar7
   1E84 C0 D0         [24] 7097 	push	psw
   1E86 75 D0 00      [24] 7098 	mov	psw,#0x00
                           7099 ;	d:\ztex\include\ztex-isr.h:327: EXIF &= ~bmBIT4;
   1E89 AF 91         [24] 7100 	mov	r7,_EXIF
   1E8B 74 EF         [12] 7101 	mov	a,#0xEF
   1E8D 5F            [12] 7102 	anl	a,r7
   1E8E F5 91         [12] 7103 	mov	_EXIF,a
                           7104 ;	d:\ztex\include\ztex-isr.h:328: USBIRQ = bmBIT1;
   1E90 90 E6 5D      [24] 7105 	mov	dptr,#_USBIRQ
   1E93 74 02         [12] 7106 	mov	a,#0x02
   1E95 F0            [24] 7107 	movx	@dptr,a
   1E96 D0 D0         [24] 7108 	pop	psw
   1E98 D0 07         [24] 7109 	pop	ar7
   1E9A D0 83         [24] 7110 	pop	dph
   1E9C D0 82         [24] 7111 	pop	dpl
   1E9E D0 E0         [24] 7112 	pop	acc
   1EA0 32            [24] 7113 	reti
                           7114 ;	eliminated unneeded push/pop b
                           7115 ;------------------------------------------------------------
                           7116 ;Allocation info for local variables in function 'SUTOK_ISR'
                           7117 ;------------------------------------------------------------
                           7118 ;	d:\ztex\include\ztex-isr.h:334: void SUTOK_ISR() __interrupt 
                           7119 ;	-----------------------------------------
                           7120 ;	 function SUTOK_ISR
                           7121 ;	-----------------------------------------
   1EA1                    7122 _SUTOK_ISR:
   1EA1 C0 E0         [24] 7123 	push	acc
   1EA3 C0 82         [24] 7124 	push	dpl
   1EA5 C0 83         [24] 7125 	push	dph
   1EA7 C0 07         [24] 7126 	push	ar7
   1EA9 C0 D0         [24] 7127 	push	psw
   1EAB 75 D0 00      [24] 7128 	mov	psw,#0x00
                           7129 ;	d:\ztex\include\ztex-isr.h:336: EXIF &= ~bmBIT4;
   1EAE AF 91         [24] 7130 	mov	r7,_EXIF
   1EB0 74 EF         [12] 7131 	mov	a,#0xEF
   1EB2 5F            [12] 7132 	anl	a,r7
   1EB3 F5 91         [12] 7133 	mov	_EXIF,a
                           7134 ;	d:\ztex\include\ztex-isr.h:337: USBIRQ = bmBIT2;
   1EB5 90 E6 5D      [24] 7135 	mov	dptr,#_USBIRQ
   1EB8 74 04         [12] 7136 	mov	a,#0x04
   1EBA F0            [24] 7137 	movx	@dptr,a
   1EBB D0 D0         [24] 7138 	pop	psw
   1EBD D0 07         [24] 7139 	pop	ar7
   1EBF D0 83         [24] 7140 	pop	dph
   1EC1 D0 82         [24] 7141 	pop	dpl
   1EC3 D0 E0         [24] 7142 	pop	acc
   1EC5 32            [24] 7143 	reti
                           7144 ;	eliminated unneeded push/pop b
                           7145 ;------------------------------------------------------------
                           7146 ;Allocation info for local variables in function 'SUSP_ISR'
                           7147 ;------------------------------------------------------------
                           7148 ;	d:\ztex\include\ztex-isr.h:343: void SUSP_ISR() __interrupt
                           7149 ;	-----------------------------------------
                           7150 ;	 function SUSP_ISR
                           7151 ;	-----------------------------------------
   1EC6                    7152 _SUSP_ISR:
   1EC6 C0 E0         [24] 7153 	push	acc
   1EC8 C0 82         [24] 7154 	push	dpl
   1ECA C0 83         [24] 7155 	push	dph
   1ECC C0 07         [24] 7156 	push	ar7
   1ECE C0 D0         [24] 7157 	push	psw
   1ED0 75 D0 00      [24] 7158 	mov	psw,#0x00
                           7159 ;	d:\ztex\include\ztex-isr.h:345: EXIF &= ~bmBIT4;
   1ED3 AF 91         [24] 7160 	mov	r7,_EXIF
   1ED5 74 EF         [12] 7161 	mov	a,#0xEF
   1ED7 5F            [12] 7162 	anl	a,r7
   1ED8 F5 91         [12] 7163 	mov	_EXIF,a
                           7164 ;	d:\ztex\include\ztex-isr.h:346: USBIRQ = bmBIT3;
   1EDA 90 E6 5D      [24] 7165 	mov	dptr,#_USBIRQ
   1EDD 74 08         [12] 7166 	mov	a,#0x08
   1EDF F0            [24] 7167 	movx	@dptr,a
   1EE0 D0 D0         [24] 7168 	pop	psw
   1EE2 D0 07         [24] 7169 	pop	ar7
   1EE4 D0 83         [24] 7170 	pop	dph
   1EE6 D0 82         [24] 7171 	pop	dpl
   1EE8 D0 E0         [24] 7172 	pop	acc
   1EEA 32            [24] 7173 	reti
                           7174 ;	eliminated unneeded push/pop b
                           7175 ;------------------------------------------------------------
                           7176 ;Allocation info for local variables in function 'URES_ISR'
                           7177 ;------------------------------------------------------------
                           7178 ;	d:\ztex\include\ztex-isr.h:352: void URES_ISR() __interrupt
                           7179 ;	-----------------------------------------
                           7180 ;	 function URES_ISR
                           7181 ;	-----------------------------------------
   1EEB                    7182 _URES_ISR:
   1EEB C0 E0         [24] 7183 	push	acc
   1EED C0 82         [24] 7184 	push	dpl
   1EEF C0 83         [24] 7185 	push	dph
   1EF1 C0 07         [24] 7186 	push	ar7
   1EF3 C0 D0         [24] 7187 	push	psw
   1EF5 75 D0 00      [24] 7188 	mov	psw,#0x00
                           7189 ;	d:\ztex\include\ztex-isr.h:354: EXIF &= ~bmBIT4;
   1EF8 AF 91         [24] 7190 	mov	r7,_EXIF
   1EFA 74 EF         [12] 7191 	mov	a,#0xEF
   1EFC 5F            [12] 7192 	anl	a,r7
   1EFD F5 91         [12] 7193 	mov	_EXIF,a
                           7194 ;	d:\ztex\include\ztex-isr.h:355: USBIRQ = bmBIT4;
   1EFF 90 E6 5D      [24] 7195 	mov	dptr,#_USBIRQ
   1F02 74 10         [12] 7196 	mov	a,#0x10
   1F04 F0            [24] 7197 	movx	@dptr,a
   1F05 D0 D0         [24] 7198 	pop	psw
   1F07 D0 07         [24] 7199 	pop	ar7
   1F09 D0 83         [24] 7200 	pop	dph
   1F0B D0 82         [24] 7201 	pop	dpl
   1F0D D0 E0         [24] 7202 	pop	acc
   1F0F 32            [24] 7203 	reti
                           7204 ;	eliminated unneeded push/pop b
                           7205 ;------------------------------------------------------------
                           7206 ;Allocation info for local variables in function 'HSGRANT_ISR'
                           7207 ;------------------------------------------------------------
                           7208 ;	d:\ztex\include\ztex-isr.h:361: void HSGRANT_ISR() __interrupt
                           7209 ;	-----------------------------------------
                           7210 ;	 function HSGRANT_ISR
                           7211 ;	-----------------------------------------
   1F10                    7212 _HSGRANT_ISR:
   1F10 C0 E0         [24] 7213 	push	acc
   1F12 C0 82         [24] 7214 	push	dpl
   1F14 C0 83         [24] 7215 	push	dph
   1F16 C0 07         [24] 7216 	push	ar7
   1F18 C0 D0         [24] 7217 	push	psw
   1F1A 75 D0 00      [24] 7218 	mov	psw,#0x00
                           7219 ;	d:\ztex\include\ztex-isr.h:363: EXIF &= ~bmBIT4;
   1F1D AF 91         [24] 7220 	mov	r7,_EXIF
   1F1F 74 EF         [12] 7221 	mov	a,#0xEF
   1F21 5F            [12] 7222 	anl	a,r7
   1F22 F5 91         [12] 7223 	mov	_EXIF,a
                           7224 ;	d:\ztex\include\ztex-isr.h:365: USBIRQ = bmBIT5;
   1F24 90 E6 5D      [24] 7225 	mov	dptr,#_USBIRQ
   1F27 74 20         [12] 7226 	mov	a,#0x20
   1F29 F0            [24] 7227 	movx	@dptr,a
   1F2A D0 D0         [24] 7228 	pop	psw
   1F2C D0 07         [24] 7229 	pop	ar7
   1F2E D0 83         [24] 7230 	pop	dph
   1F30 D0 82         [24] 7231 	pop	dpl
   1F32 D0 E0         [24] 7232 	pop	acc
   1F34 32            [24] 7233 	reti
                           7234 ;	eliminated unneeded push/pop b
                           7235 ;------------------------------------------------------------
                           7236 ;Allocation info for local variables in function 'EP0ACK_ISR'
                           7237 ;------------------------------------------------------------
                           7238 ;	d:\ztex\include\ztex-isr.h:371: void EP0ACK_ISR() __interrupt
                           7239 ;	-----------------------------------------
                           7240 ;	 function EP0ACK_ISR
                           7241 ;	-----------------------------------------
   1F35                    7242 _EP0ACK_ISR:
   1F35 C0 E0         [24] 7243 	push	acc
   1F37 C0 82         [24] 7244 	push	dpl
   1F39 C0 83         [24] 7245 	push	dph
   1F3B C0 07         [24] 7246 	push	ar7
   1F3D C0 D0         [24] 7247 	push	psw
   1F3F 75 D0 00      [24] 7248 	mov	psw,#0x00
                           7249 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1F42 AF 91         [24] 7250 	mov	r7,_EXIF
   1F44 74 EF         [12] 7251 	mov	a,#0xEF
   1F46 5F            [12] 7252 	anl	a,r7
   1F47 F5 91         [12] 7253 	mov	_EXIF,a
   1F49 90 E6 5D      [24] 7254 	mov	dptr,#_USBIRQ
   1F4C 74 40         [12] 7255 	mov	a,#0x40
   1F4E F0            [24] 7256 	movx	@dptr,a
   1F4F D0 D0         [24] 7257 	pop	psw
   1F51 D0 07         [24] 7258 	pop	ar7
   1F53 D0 83         [24] 7259 	pop	dph
   1F55 D0 82         [24] 7260 	pop	dpl
   1F57 D0 E0         [24] 7261 	pop	acc
   1F59 32            [24] 7262 	reti
                           7263 ;	eliminated unneeded push/pop b
                           7264 ;------------------------------------------------------------
                           7265 ;Allocation info for local variables in function 'EP0IN_ISR'
                           7266 ;------------------------------------------------------------
                           7267 ;	d:\ztex\include\ztex-isr.h:380: static void EP0IN_ISR () __interrupt
                           7268 ;	-----------------------------------------
                           7269 ;	 function EP0IN_ISR
                           7270 ;	-----------------------------------------
   1F5A                    7271 _EP0IN_ISR:
   1F5A C0 21         [24] 7272 	push	bits
   1F5C C0 E0         [24] 7273 	push	acc
   1F5E C0 F0         [24] 7274 	push	b
   1F60 C0 82         [24] 7275 	push	dpl
   1F62 C0 83         [24] 7276 	push	dph
   1F64 C0 07         [24] 7277 	push	(0+7)
   1F66 C0 06         [24] 7278 	push	(0+6)
   1F68 C0 05         [24] 7279 	push	(0+5)
   1F6A C0 04         [24] 7280 	push	(0+4)
   1F6C C0 03         [24] 7281 	push	(0+3)
   1F6E C0 02         [24] 7282 	push	(0+2)
   1F70 C0 01         [24] 7283 	push	(0+1)
   1F72 C0 00         [24] 7284 	push	(0+0)
   1F74 C0 D0         [24] 7285 	push	psw
   1F76 75 D0 00      [24] 7286 	mov	psw,#0x00
                           7287 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1F79 C2 E8         [12] 7288 	clr	_EUSB
                           7289 ;	d:\ztex\include\ztex-isr.h:383: ep0_payload_update();
   1F7B 12 15 DC      [24] 7290 	lcall	_ep0_payload_update
                           7291 ;	d:\ztex\include\ztex-isr.h:384: switch ( ep0_prev_setup_request ) {
   1F7E 90 3A 6F      [24] 7292 	mov	dptr,#_ep0_prev_setup_request
   1F81 E0            [24] 7293 	movx	a,@dptr
   1F82 FF            [12] 7294 	mov	r7,a
   1F83 BF 01 03      [24] 7295 	cjne	r7,#0x01,00147$
   1F86 02 1F FE      [24] 7296 	ljmp	00114$
   1F89                    7297 00147$:
   1F89 BF 03 03      [24] 7298 	cjne	r7,#0x03,00148$
   1F8C 02 1F FE      [24] 7299 	ljmp	00114$
   1F8F                    7300 00148$:
   1F8F BF 30 02      [24] 7301 	cjne	r7,#0x30,00149$
   1F92 80 6A         [24] 7302 	sjmp	00114$
   1F94                    7303 00149$:
   1F94 BF 38 02      [24] 7304 	cjne	r7,#0x38,00150$
   1F97 80 14         [24] 7305 	sjmp	00103$
   1F99                    7306 00150$:
   1F99 BF 3A 02      [24] 7307 	cjne	r7,#0x3A,00151$
   1F9C 80 60         [24] 7308 	sjmp	00114$
   1F9E                    7309 00151$:
   1F9E BF 40 02      [24] 7310 	cjne	r7,#0x40,00152$
   1FA1 80 5B         [24] 7311 	sjmp	00114$
   1FA3                    7312 00152$:
   1FA3 BF 41 02      [24] 7313 	cjne	r7,#0x41,00153$
   1FA6 80 15         [24] 7314 	sjmp	00106$
   1FA8                    7315 00153$:
                           7316 ;	d:\ztex\include\ztex-conf.h:105: case $0:
   1FA8 BF 43 4A      [24] 7317 	cjne	r7,#0x43,00113$
   1FAB 80 51         [24] 7318 	sjmp	00114$
   1FAD                    7319 00103$:
                           7320 ;	d:\ztex\include\ztex-eeprom.h:219: EP0BCH = 0;
   1FAD 90 E6 8A      [24] 7321 	mov	dptr,#_EP0BCH
   1FB0 E4            [12] 7322 	clr	a
   1FB1 F0            [24] 7323 	movx	@dptr,a
                           7324 ;	d:\ztex\include\ztex-eeprom.h:220: EP0BCL = eeprom_read_ep0(); 
   1FB2 12 06 0B      [24] 7325 	lcall	_eeprom_read_ep0
   1FB5 E5 82         [12] 7326 	mov	a,dpl
   1FB7 90 E6 8B      [24] 7327 	mov	dptr,#_EP0BCL
   1FBA F0            [24] 7328 	movx	@dptr,a
                           7329 ;	d:\ztex\include\ztex-conf.h:107: break;
                           7330 ;	d:\ztex\include\ztex-conf.h:105: case $0:
   1FBB 80 41         [24] 7331 	sjmp	00114$
   1FBD                    7332 00106$:
                           7333 ;	d:\ztex\include\ztex-flash1.h:1155: if ( ep0_payload_transfer != 0 ) {
   1FBD 90 3A 6C      [24] 7334 	mov	dptr,#_ep0_payload_transfer
   1FC0 E0            [24] 7335 	movx	a,@dptr
   1FC1 FF            [12] 7336 	mov	r7,a
   1FC2 60 21         [24] 7337 	jz	00110$
                           7338 ;	d:\ztex\include\ztex-flash1.h:1156: flash_ec = 0;
   1FC4 90 3A 4E      [24] 7339 	mov	dptr,#_flash_ec
   1FC7 E4            [12] 7340 	clr	a
   1FC8 F0            [24] 7341 	movx	@dptr,a
                           7342 ;	d:\ztex\include\ztex-flash1.h:1157: mmc_read_ep0(); 
   1FC9 12 0F B8      [24] 7343 	lcall	_mmc_read_ep0
                           7344 ;	d:\ztex\include\ztex-flash1.h:1158: if ( flash_ec != 0 ) {
   1FCC 90 3A 4E      [24] 7345 	mov	dptr,#_flash_ec
   1FCF E0            [24] 7346 	movx	a,@dptr
   1FD0 FF            [12] 7347 	mov	r7,a
   1FD1 60 12         [24] 7348 	jz	00110$
                           7349 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1FD3 90 E6 A0      [24] 7350 	mov	dptr,#_EP0CS
   1FD6 E0            [24] 7351 	movx	a,@dptr
   1FD7 FF            [12] 7352 	mov	r7,a
   1FD8 44 01         [12] 7353 	orl	a,#0x01
   1FDA F0            [24] 7354 	movx	@dptr,a
                           7355 ;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
   1FDB 90 3A 6A      [24] 7356 	mov	dptr,#_ep0_payload_remaining
   1FDE E4            [12] 7357 	clr	a
   1FDF F0            [24] 7358 	movx	@dptr,a
   1FE0 E4            [12] 7359 	clr	a
   1FE1 A3            [24] 7360 	inc	dptr
   1FE2 F0            [24] 7361 	movx	@dptr,a
                           7362 ;	d:\ztex\include\ztex-conf.h:139: break;
   1FE3 80 19         [24] 7363 	sjmp	00114$
   1FE5                    7364 00110$:
                           7365 ;	d:\ztex\include\ztex-flash1.h:1162: EP0BCH = 0;
   1FE5 90 E6 8A      [24] 7366 	mov	dptr,#_EP0BCH
   1FE8 E4            [12] 7367 	clr	a
   1FE9 F0            [24] 7368 	movx	@dptr,a
                           7369 ;	d:\ztex\include\ztex-flash1.h:1163: EP0BCL = ep0_payload_transfer;
   1FEA 90 3A 6C      [24] 7370 	mov	dptr,#_ep0_payload_transfer
   1FED E0            [24] 7371 	movx	a,@dptr
   1FEE FF            [12] 7372 	mov	r7,a
   1FEF 90 E6 8B      [24] 7373 	mov	dptr,#_EP0BCL
   1FF2 F0            [24] 7374 	movx	@dptr,a
                           7375 ;	d:\ztex\include\ztex-conf.h:107: break;
                           7376 ;	d:\ztex\include\ztex-isr.h:386: default:
   1FF3 80 09         [24] 7377 	sjmp	00114$
   1FF5                    7378 00113$:
                           7379 ;	d:\ztex\include\ztex-isr.h:387: EP0BCH = 0;
   1FF5 90 E6 8A      [24] 7380 	mov	dptr,#_EP0BCH
                           7381 ;	d:\ztex\include\ztex-isr.h:388: EP0BCL = 0;
   1FF8 E4            [12] 7382 	clr	a
   1FF9 F0            [24] 7383 	movx	@dptr,a
   1FFA 90 E6 8B      [24] 7384 	mov	dptr,#_EP0BCL
   1FFD F0            [24] 7385 	movx	@dptr,a
                           7386 ;	d:\ztex\include\ztex-isr.h:389: }
   1FFE                    7387 00114$:
                           7388 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   1FFE AF 91         [24] 7389 	mov	r7,_EXIF
   2000 74 EF         [12] 7390 	mov	a,#0xEF
   2002 5F            [12] 7391 	anl	a,r7
   2003 F5 91         [12] 7392 	mov	_EXIF,a
   2005 90 E6 5F      [24] 7393 	mov	dptr,#_EPIRQ
   2008 74 01         [12] 7394 	mov	a,#0x01
   200A F0            [24] 7395 	movx	@dptr,a
                           7396 ;	d:\ztex\include\ztex-isr.h:392: EUSB = 1;
   200B D2 E8         [12] 7397 	setb	_EUSB
   200D D0 D0         [24] 7398 	pop	psw
   200F D0 00         [24] 7399 	pop	(0+0)
   2011 D0 01         [24] 7400 	pop	(0+1)
   2013 D0 02         [24] 7401 	pop	(0+2)
   2015 D0 03         [24] 7402 	pop	(0+3)
   2017 D0 04         [24] 7403 	pop	(0+4)
   2019 D0 05         [24] 7404 	pop	(0+5)
   201B D0 06         [24] 7405 	pop	(0+6)
   201D D0 07         [24] 7406 	pop	(0+7)
   201F D0 83         [24] 7407 	pop	dph
   2021 D0 82         [24] 7408 	pop	dpl
   2023 D0 F0         [24] 7409 	pop	b
   2025 D0 E0         [24] 7410 	pop	acc
   2027 D0 21         [24] 7411 	pop	bits
   2029 32            [24] 7412 	reti
                           7413 ;------------------------------------------------------------
                           7414 ;Allocation info for local variables in function 'EP0OUT_ISR'
                           7415 ;------------------------------------------------------------
                           7416 ;	d:\ztex\include\ztex-isr.h:398: static void EP0OUT_ISR () __interrupt
                           7417 ;	-----------------------------------------
                           7418 ;	 function EP0OUT_ISR
                           7419 ;	-----------------------------------------
   202A                    7420 _EP0OUT_ISR:
   202A C0 21         [24] 7421 	push	bits
   202C C0 E0         [24] 7422 	push	acc
   202E C0 F0         [24] 7423 	push	b
   2030 C0 82         [24] 7424 	push	dpl
   2032 C0 83         [24] 7425 	push	dph
   2034 C0 07         [24] 7426 	push	(0+7)
   2036 C0 06         [24] 7427 	push	(0+6)
   2038 C0 05         [24] 7428 	push	(0+5)
   203A C0 04         [24] 7429 	push	(0+4)
   203C C0 03         [24] 7430 	push	(0+3)
   203E C0 02         [24] 7431 	push	(0+2)
   2040 C0 01         [24] 7432 	push	(0+1)
   2042 C0 00         [24] 7433 	push	(0+0)
   2044 C0 D0         [24] 7434 	push	psw
   2046 75 D0 00      [24] 7435 	mov	psw,#0x00
                           7436 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   2049 C2 E8         [12] 7437 	clr	_EUSB
                           7438 ;	d:\ztex\include\ztex-isr.h:401: if ( ep0_vendor_cmd_setup ) {
   204B 90 3A 70      [24] 7439 	mov	dptr,#_ep0_vendor_cmd_setup
   204E E0            [24] 7440 	movx	a,@dptr
   204F FF            [12] 7441 	mov	r7,a
   2050 60 20         [24] 7442 	jz	00102$
                           7443 ;	d:\ztex\include\ztex-isr.h:402: ep0_vendor_cmd_setup = 0;
   2052 90 3A 70      [24] 7444 	mov	dptr,#_ep0_vendor_cmd_setup
   2055 E4            [12] 7445 	clr	a
   2056 F0            [24] 7446 	movx	@dptr,a
                           7447 ;	d:\ztex\include\ztex-isr.h:403: ep0_payload_remaining = (SETUPDAT[7] << 8) | SETUPDAT[6];
   2057 90 E6 BF      [24] 7448 	mov	dptr,#(_SETUPDAT + 0x0007)
   205A E0            [24] 7449 	movx	a,@dptr
   205B FE            [12] 7450 	mov	r6,a
   205C 7F 00         [12] 7451 	mov	r7,#0x00
   205E 90 E6 BE      [24] 7452 	mov	dptr,#(_SETUPDAT + 0x0006)
   2061 E0            [24] 7453 	movx	a,@dptr
   2062 FD            [12] 7454 	mov	r5,a
   2063 7C 00         [12] 7455 	mov	r4,#0x00
   2065 90 3A 6A      [24] 7456 	mov	dptr,#_ep0_payload_remaining
   2068 ED            [12] 7457 	mov	a,r5
   2069 4F            [12] 7458 	orl	a,r7
   206A F0            [24] 7459 	movx	@dptr,a
   206B EC            [12] 7460 	mov	a,r4
   206C 4E            [12] 7461 	orl	a,r6
   206D A3            [24] 7462 	inc	dptr
   206E F0            [24] 7463 	movx	@dptr,a
                           7464 ;	d:\ztex\include\ztex-isr.h:404: ep0_vendor_cmd_su();
   206F 12 16 09      [24] 7465 	lcall	_ep0_vendor_cmd_su
   2072                    7466 00102$:
                           7467 ;	d:\ztex\include\ztex-isr.h:407: ep0_payload_update();
   2072 12 15 DC      [24] 7468 	lcall	_ep0_payload_update
                           7469 ;	d:\ztex\include\ztex-isr.h:409: switch ( ep0_prev_setup_request ) {
   2075 90 3A 6F      [24] 7470 	mov	dptr,#_ep0_prev_setup_request
   2078 E0            [24] 7471 	movx	a,@dptr
   2079 FF            [12] 7472 	mov	r7,a
   207A 60 1E         [24] 7473 	jz	00103$
   207C BF 02 02      [24] 7474 	cjne	r7,#0x02,00154$
   207F 80 1E         [24] 7475 	sjmp	00104$
   2081                    7476 00154$:
   2081 BF 04 02      [24] 7477 	cjne	r7,#0x04,00155$
   2084 80 1E         [24] 7478 	sjmp	00105$
   2086                    7479 00155$:
   2086 BF 31 02      [24] 7480 	cjne	r7,#0x31,00156$
   2089 80 54         [24] 7481 	sjmp	00114$
   208B                    7482 00156$:
   208B BF 32 02      [24] 7483 	cjne	r7,#0x32,00157$
   208E 80 4C         [24] 7484 	sjmp	00113$
   2090                    7485 00157$:
   2090 BF 39 02      [24] 7486 	cjne	r7,#0x39,00158$
   2093 80 14         [24] 7487 	sjmp	00106$
   2095                    7488 00158$:
                           7489 ;	d:\ztex\include\ztex-conf.h:128: case $0:			
   2095 BF 42 47      [24] 7490 	cjne	r7,#0x42,00114$
   2098 80 1A         [24] 7491 	sjmp	00107$
   209A                    7492 00103$:
                           7493 ;	usb-test.c:133: receivePassword();
   209A 12 03 46      [24] 7494 	lcall	_receivePassword
                           7495 ;	d:\ztex\include\ztex-conf.h:130: break;
                           7496 ;	d:\ztex\include\ztex-conf.h:128: case $0:			
   209D 80 40         [24] 7497 	sjmp	00114$
   209F                    7498 00104$:
                           7499 ;	usb-test.c:150: receiveEssid();
   209F 12 03 49      [24] 7500 	lcall	_receiveEssid
                           7501 ;	d:\ztex\include\ztex-conf.h:130: break;
                           7502 ;	d:\ztex\include\ztex-conf.h:128: case $0:			
   20A2 80 3B         [24] 7503 	sjmp	00114$
   20A4                    7504 00105$:
                           7505 ;	usb-test.c:167: receiveTargetKey();
   20A4 12 03 51      [24] 7506 	lcall	_receiveTargetKey
                           7507 ;	d:\ztex\include\ztex-conf.h:130: break;
                           7508 ;	d:\ztex\include\ztex-conf.h:128: case $0:			
   20A7 80 36         [24] 7509 	sjmp	00114$
   20A9                    7510 00106$:
                           7511 ;	d:\ztex\include\ztex-eeprom.h:237: eeprom_write_ep0(EP0BCL);
   20A9 90 E6 8B      [24] 7512 	mov	dptr,#_EP0BCL
   20AC E0            [24] 7513 	movx	a,@dptr
   20AD F5 82         [12] 7514 	mov	dpl,a
   20AF 12 06 3F      [24] 7515 	lcall	_eeprom_write_ep0
                           7516 ;	d:\ztex\include\ztex-conf.h:130: break;
                           7517 ;	d:\ztex\include\ztex-conf.h:128: case $0:			
   20B2 80 2B         [24] 7518 	sjmp	00114$
   20B4                    7519 00107$:
                           7520 ;	d:\ztex\include\ztex-flash1.h:1256: if ( ep0_payload_transfer != 0 ) {
   20B4 90 3A 6C      [24] 7521 	mov	dptr,#_ep0_payload_transfer
   20B7 E0            [24] 7522 	movx	a,@dptr
   20B8 FF            [12] 7523 	mov	r7,a
   20B9 60 24         [24] 7524 	jz	00114$
                           7525 ;	d:\ztex\include\ztex-flash1.h:1257: flash_ec = 0;
   20BB 90 3A 4E      [24] 7526 	mov	dptr,#_flash_ec
   20BE E4            [12] 7527 	clr	a
   20BF F0            [24] 7528 	movx	@dptr,a
                           7529 ;	d:\ztex\include\ztex-flash1.h:1258: mmc_send_ep0();
   20C0 12 10 7F      [24] 7530 	lcall	_mmc_send_ep0
                           7531 ;	d:\ztex\include\ztex-flash1.h:1259: if ( flash_ec != 0 ) {
   20C3 90 3A 4E      [24] 7532 	mov	dptr,#_flash_ec
   20C6 E0            [24] 7533 	movx	a,@dptr
   20C7 FF            [12] 7534 	mov	r7,a
   20C8 60 15         [24] 7535 	jz	00114$
                           7536 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   20CA 90 E6 A0      [24] 7537 	mov	dptr,#_EP0CS
   20CD E0            [24] 7538 	movx	a,@dptr
   20CE FF            [12] 7539 	mov	r7,a
   20CF 44 01         [12] 7540 	orl	a,#0x01
   20D1 F0            [24] 7541 	movx	@dptr,a
                           7542 ;	d:\ztex\include\ztex-conf.h:138: ep0_payload_remaining = 0;
   20D2 90 3A 6A      [24] 7543 	mov	dptr,#_ep0_payload_remaining
   20D5 E4            [12] 7544 	clr	a
   20D6 F0            [24] 7545 	movx	@dptr,a
   20D7 E4            [12] 7546 	clr	a
   20D8 A3            [24] 7547 	inc	dptr
   20D9 F0            [24] 7548 	movx	@dptr,a
                           7549 ;	d:\ztex\include\ztex-conf.h:139: break;
                           7550 ;	d:\ztex\include\ztex-conf.h:128: case $0:			
   20DA 80 03         [24] 7551 	sjmp	00114$
   20DC                    7552 00113$:
                           7553 ;	d:\ztex\include\ztex-fpga3.h:183: fpga_send_ep0();
   20DC 12 12 24      [24] 7554 	lcall	_fpga_send_ep0
                           7555 ;	d:\ztex\include\ztex-isr.h:411: } 
   20DF                    7556 00114$:
                           7557 ;	d:\ztex\include\ztex-isr.h:413: EP0BCL = 0;
   20DF 90 E6 8B      [24] 7558 	mov	dptr,#_EP0BCL
   20E2 E4            [12] 7559 	clr	a
   20E3 F0            [24] 7560 	movx	@dptr,a
                           7561 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   20E4 AF 91         [24] 7562 	mov	r7,_EXIF
   20E6 74 EF         [12] 7563 	mov	a,#0xEF
   20E8 5F            [12] 7564 	anl	a,r7
   20E9 F5 91         [12] 7565 	mov	_EXIF,a
   20EB 90 E6 5F      [24] 7566 	mov	dptr,#_EPIRQ
   20EE 74 02         [12] 7567 	mov	a,#0x02
   20F0 F0            [24] 7568 	movx	@dptr,a
                           7569 ;	d:\ztex\include\ztex-isr.h:417: if ( ep0_payload_remaining == 0 ) {
   20F1 90 3A 6A      [24] 7570 	mov	dptr,#_ep0_payload_remaining
   20F4 E0            [24] 7571 	movx	a,@dptr
   20F5 FE            [12] 7572 	mov	r6,a
   20F6 A3            [24] 7573 	inc	dptr
   20F7 E0            [24] 7574 	movx	a,@dptr
   20F8 FF            [12] 7575 	mov	r7,a
   20F9 4E            [12] 7576 	orl	a,r6
   20FA 70 08         [24] 7577 	jnz	00116$
                           7578 ;	d:\ztex\include\ztex-conf.h:31: ][#noexpand[!dnapxeon!]//$0!dnapxeon!
   20FC 90 E6 A0      [24] 7579 	mov	dptr,#_EP0CS
   20FF E0            [24] 7580 	movx	a,@dptr
   2100 FF            [12] 7581 	mov	r7,a
   2101 44 80         [12] 7582 	orl	a,#0x80
   2103 F0            [24] 7583 	movx	@dptr,a
   2104                    7584 00116$:
                           7585 ;	d:\ztex\include\ztex-isr.h:420: EUSB = 1;
   2104 D2 E8         [12] 7586 	setb	_EUSB
   2106 D0 D0         [24] 7587 	pop	psw
   2108 D0 00         [24] 7588 	pop	(0+0)
   210A D0 01         [24] 7589 	pop	(0+1)
   210C D0 02         [24] 7590 	pop	(0+2)
   210E D0 03         [24] 7591 	pop	(0+3)
   2110 D0 04         [24] 7592 	pop	(0+4)
   2112 D0 05         [24] 7593 	pop	(0+5)
   2114 D0 06         [24] 7594 	pop	(0+6)
   2116 D0 07         [24] 7595 	pop	(0+7)
   2118 D0 83         [24] 7596 	pop	dph
   211A D0 82         [24] 7597 	pop	dpl
   211C D0 F0         [24] 7598 	pop	b
   211E D0 E0         [24] 7599 	pop	acc
   2120 D0 21         [24] 7600 	pop	bits
   2122 32            [24] 7601 	reti
                           7602 ;------------------------------------------------------------
                           7603 ;Allocation info for local variables in function 'EP1IN_ISR'
                           7604 ;------------------------------------------------------------
                           7605 ;	d:\ztex\include\ztex-isr.h:427: void EP1IN_ISR() __interrupt
                           7606 ;	-----------------------------------------
                           7607 ;	 function EP1IN_ISR
                           7608 ;	-----------------------------------------
   2123                    7609 _EP1IN_ISR:
   2123 C0 E0         [24] 7610 	push	acc
   2125 C0 82         [24] 7611 	push	dpl
   2127 C0 83         [24] 7612 	push	dph
   2129 C0 07         [24] 7613 	push	ar7
   212B C0 D0         [24] 7614 	push	psw
   212D 75 D0 00      [24] 7615 	mov	psw,#0x00
                           7616 ;	d:\ztex\include\ztex-isr.h:429: EXIF &= ~bmBIT4;
   2130 AF 91         [24] 7617 	mov	r7,_EXIF
   2132 74 EF         [12] 7618 	mov	a,#0xEF
   2134 5F            [12] 7619 	anl	a,r7
   2135 F5 91         [12] 7620 	mov	_EXIF,a
                           7621 ;	d:\ztex\include\ztex-isr.h:430: EPIRQ = bmBIT2;
   2137 90 E6 5F      [24] 7622 	mov	dptr,#_EPIRQ
   213A 74 04         [12] 7623 	mov	a,#0x04
   213C F0            [24] 7624 	movx	@dptr,a
   213D D0 D0         [24] 7625 	pop	psw
   213F D0 07         [24] 7626 	pop	ar7
   2141 D0 83         [24] 7627 	pop	dph
   2143 D0 82         [24] 7628 	pop	dpl
   2145 D0 E0         [24] 7629 	pop	acc
   2147 32            [24] 7630 	reti
                           7631 ;	eliminated unneeded push/pop b
                           7632 ;------------------------------------------------------------
                           7633 ;Allocation info for local variables in function 'EP1OUT_ISR'
                           7634 ;------------------------------------------------------------
                           7635 ;	d:\ztex\include\ztex-isr.h:437: void EP1OUT_ISR() __interrupt
                           7636 ;	-----------------------------------------
                           7637 ;	 function EP1OUT_ISR
                           7638 ;	-----------------------------------------
   2148                    7639 _EP1OUT_ISR:
   2148 C0 E0         [24] 7640 	push	acc
   214A C0 82         [24] 7641 	push	dpl
   214C C0 83         [24] 7642 	push	dph
   214E C0 07         [24] 7643 	push	ar7
   2150 C0 D0         [24] 7644 	push	psw
   2152 75 D0 00      [24] 7645 	mov	psw,#0x00
                           7646 ;	d:\ztex\include\ztex-isr.h:439: EXIF &= ~bmBIT4;
   2155 AF 91         [24] 7647 	mov	r7,_EXIF
   2157 74 EF         [12] 7648 	mov	a,#0xEF
   2159 5F            [12] 7649 	anl	a,r7
   215A F5 91         [12] 7650 	mov	_EXIF,a
                           7651 ;	d:\ztex\include\ztex-isr.h:440: EPIRQ = bmBIT3;
   215C 90 E6 5F      [24] 7652 	mov	dptr,#_EPIRQ
   215F 74 08         [12] 7653 	mov	a,#0x08
   2161 F0            [24] 7654 	movx	@dptr,a
   2162 D0 D0         [24] 7655 	pop	psw
   2164 D0 07         [24] 7656 	pop	ar7
   2166 D0 83         [24] 7657 	pop	dph
   2168 D0 82         [24] 7658 	pop	dpl
   216A D0 E0         [24] 7659 	pop	acc
   216C 32            [24] 7660 	reti
                           7661 ;	eliminated unneeded push/pop b
                           7662 ;------------------------------------------------------------
                           7663 ;Allocation info for local variables in function 'EP2_ISR'
                           7664 ;------------------------------------------------------------
                           7665 ;	d:\ztex\include\ztex-isr.h:446: void EP2_ISR() __interrupt
                           7666 ;	-----------------------------------------
                           7667 ;	 function EP2_ISR
                           7668 ;	-----------------------------------------
   216D                    7669 _EP2_ISR:
   216D C0 E0         [24] 7670 	push	acc
   216F C0 82         [24] 7671 	push	dpl
   2171 C0 83         [24] 7672 	push	dph
   2173 C0 07         [24] 7673 	push	ar7
   2175 C0 D0         [24] 7674 	push	psw
   2177 75 D0 00      [24] 7675 	mov	psw,#0x00
                           7676 ;	d:\ztex\include\ztex-isr.h:448: EXIF &= ~bmBIT4;
   217A AF 91         [24] 7677 	mov	r7,_EXIF
   217C 74 EF         [12] 7678 	mov	a,#0xEF
   217E 5F            [12] 7679 	anl	a,r7
   217F F5 91         [12] 7680 	mov	_EXIF,a
                           7681 ;	d:\ztex\include\ztex-isr.h:449: EPIRQ = bmBIT4;
   2181 90 E6 5F      [24] 7682 	mov	dptr,#_EPIRQ
   2184 74 10         [12] 7683 	mov	a,#0x10
   2186 F0            [24] 7684 	movx	@dptr,a
   2187 D0 D0         [24] 7685 	pop	psw
   2189 D0 07         [24] 7686 	pop	ar7
   218B D0 83         [24] 7687 	pop	dph
   218D D0 82         [24] 7688 	pop	dpl
   218F D0 E0         [24] 7689 	pop	acc
   2191 32            [24] 7690 	reti
                           7691 ;	eliminated unneeded push/pop b
                           7692 ;------------------------------------------------------------
                           7693 ;Allocation info for local variables in function 'EP4_ISR'
                           7694 ;------------------------------------------------------------
                           7695 ;	d:\ztex\include\ztex-isr.h:455: void EP4_ISR() __interrupt
                           7696 ;	-----------------------------------------
                           7697 ;	 function EP4_ISR
                           7698 ;	-----------------------------------------
   2192                    7699 _EP4_ISR:
   2192 C0 E0         [24] 7700 	push	acc
   2194 C0 82         [24] 7701 	push	dpl
   2196 C0 83         [24] 7702 	push	dph
   2198 C0 07         [24] 7703 	push	ar7
   219A C0 D0         [24] 7704 	push	psw
   219C 75 D0 00      [24] 7705 	mov	psw,#0x00
                           7706 ;	d:\ztex\include\ztex-isr.h:457: EXIF &= ~bmBIT4;
   219F AF 91         [24] 7707 	mov	r7,_EXIF
   21A1 74 EF         [12] 7708 	mov	a,#0xEF
   21A3 5F            [12] 7709 	anl	a,r7
   21A4 F5 91         [12] 7710 	mov	_EXIF,a
                           7711 ;	d:\ztex\include\ztex-isr.h:458: EPIRQ = bmBIT5;
   21A6 90 E6 5F      [24] 7712 	mov	dptr,#_EPIRQ
   21A9 74 20         [12] 7713 	mov	a,#0x20
   21AB F0            [24] 7714 	movx	@dptr,a
   21AC D0 D0         [24] 7715 	pop	psw
   21AE D0 07         [24] 7716 	pop	ar7
   21B0 D0 83         [24] 7717 	pop	dph
   21B2 D0 82         [24] 7718 	pop	dpl
   21B4 D0 E0         [24] 7719 	pop	acc
   21B6 32            [24] 7720 	reti
                           7721 ;	eliminated unneeded push/pop b
                           7722 ;------------------------------------------------------------
                           7723 ;Allocation info for local variables in function 'EP6_ISR'
                           7724 ;------------------------------------------------------------
                           7725 ;	d:\ztex\include\ztex-isr.h:464: void EP6_ISR() __interrupt
                           7726 ;	-----------------------------------------
                           7727 ;	 function EP6_ISR
                           7728 ;	-----------------------------------------
   21B7                    7729 _EP6_ISR:
   21B7 C0 E0         [24] 7730 	push	acc
   21B9 C0 82         [24] 7731 	push	dpl
   21BB C0 83         [24] 7732 	push	dph
   21BD C0 07         [24] 7733 	push	ar7
   21BF C0 D0         [24] 7734 	push	psw
   21C1 75 D0 00      [24] 7735 	mov	psw,#0x00
                           7736 ;	d:\ztex\include\ztex-isr.h:466: EXIF &= ~bmBIT4;
   21C4 AF 91         [24] 7737 	mov	r7,_EXIF
   21C6 74 EF         [12] 7738 	mov	a,#0xEF
   21C8 5F            [12] 7739 	anl	a,r7
   21C9 F5 91         [12] 7740 	mov	_EXIF,a
                           7741 ;	d:\ztex\include\ztex-isr.h:467: EPIRQ = bmBIT6;
   21CB 90 E6 5F      [24] 7742 	mov	dptr,#_EPIRQ
   21CE 74 40         [12] 7743 	mov	a,#0x40
   21D0 F0            [24] 7744 	movx	@dptr,a
   21D1 D0 D0         [24] 7745 	pop	psw
   21D3 D0 07         [24] 7746 	pop	ar7
   21D5 D0 83         [24] 7747 	pop	dph
   21D7 D0 82         [24] 7748 	pop	dpl
   21D9 D0 E0         [24] 7749 	pop	acc
   21DB 32            [24] 7750 	reti
                           7751 ;	eliminated unneeded push/pop b
                           7752 ;------------------------------------------------------------
                           7753 ;Allocation info for local variables in function 'EP8_ISR'
                           7754 ;------------------------------------------------------------
                           7755 ;	d:\ztex\include\ztex-isr.h:473: void EP8_ISR() __interrupt
                           7756 ;	-----------------------------------------
                           7757 ;	 function EP8_ISR
                           7758 ;	-----------------------------------------
   21DC                    7759 _EP8_ISR:
   21DC C0 E0         [24] 7760 	push	acc
   21DE C0 82         [24] 7761 	push	dpl
   21E0 C0 83         [24] 7762 	push	dph
   21E2 C0 07         [24] 7763 	push	ar7
   21E4 C0 D0         [24] 7764 	push	psw
   21E6 75 D0 00      [24] 7765 	mov	psw,#0x00
                           7766 ;	d:\ztex\include\ztex-isr.h:475: EXIF &= ~bmBIT4;
   21E9 AF 91         [24] 7767 	mov	r7,_EXIF
   21EB 74 EF         [12] 7768 	mov	a,#0xEF
   21ED 5F            [12] 7769 	anl	a,r7
   21EE F5 91         [12] 7770 	mov	_EXIF,a
                           7771 ;	d:\ztex\include\ztex-isr.h:476: EPIRQ = bmBIT7;
   21F0 90 E6 5F      [24] 7772 	mov	dptr,#_EPIRQ
   21F3 74 80         [12] 7773 	mov	a,#0x80
   21F5 F0            [24] 7774 	movx	@dptr,a
   21F6 D0 D0         [24] 7775 	pop	psw
   21F8 D0 07         [24] 7776 	pop	ar7
   21FA D0 83         [24] 7777 	pop	dph
   21FC D0 82         [24] 7778 	pop	dpl
   21FE D0 E0         [24] 7779 	pop	acc
   2200 32            [24] 7780 	reti
                           7781 ;	eliminated unneeded push/pop b
                           7782 ;------------------------------------------------------------
                           7783 ;Allocation info for local variables in function 'init_USB'
                           7784 ;------------------------------------------------------------
                           7785 ;	d:\ztex\include\ztex.h:290: void init_USB ()
                           7786 ;	-----------------------------------------
                           7787 ;	 function init_USB
                           7788 ;	-----------------------------------------
   2201                    7789 _init_USB:
                           7790 ;	d:\ztex\include\ztex.h:292: USBCS |= bmBIT3;
   2201 90 E6 80      [24] 7791 	mov	dptr,#_USBCS
   2204 E0            [24] 7792 	movx	a,@dptr
   2205 44 08         [12] 7793 	orl	a,#0x08
   2207 F0            [24] 7794 	movx	@dptr,a
                           7795 ;	d:\ztex\include\ztex.h:294: CPUCS = bmBIT4 | bmBIT1;
   2208 90 E6 00      [24] 7796 	mov	dptr,#_CPUCS
   220B 74 12         [12] 7797 	mov	a,#0x12
   220D F0            [24] 7798 	movx	@dptr,a
                           7799 ;	d:\ztex\include\ztex.h:295: wait(2);
   220E 90 00 02      [24] 7800 	mov	dptr,#0x0002
   2211 12 02 63      [24] 7801 	lcall	_wait
                           7802 ;	d:\ztex\include\ztex.h:296: CKCON &= ~7;
   2214 AF 8E         [24] 7803 	mov	r7,_CKCON
   2216 74 F8         [12] 7804 	mov	a,#0xF8
   2218 5F            [12] 7805 	anl	a,r7
   2219 F5 8E         [12] 7806 	mov	_CKCON,a
                           7807 ;	d:\ztex\include\ztex.h:311: IOA1 = 1;		
   221B D2 81         [12] 7808 	setb	_IOA1
                           7809 ;	d:\ztex\include\ztex.h:312: OEA |= bmBIT1;
   221D 43 B2 02      [24] 7810 	orl	_OEA,#0x02
                           7811 ;	d:\ztex\include\ztex-fpga-flash.h:145: fpga_flash_result= 255;
   2220 90 3A 69      [24] 7812 	mov	dptr,#_fpga_flash_result
   2223 74 FF         [12] 7813 	mov	a,#0xFF
   2225 F0            [24] 7814 	movx	@dptr,a
                           7815 ;	d:\ztex\include\ztex.h:322: EA = 0;
   2226 C2 AF         [12] 7816 	clr	_EA
                           7817 ;	d:\ztex\include\ztex.h:323: EUSB = 0;
   2228 C2 E8         [12] 7818 	clr	_EUSB
                           7819 ;	d:\ztex\include\ezintavecs.h:123: INT8VEC_USB.op=0x02;
   222A 90 00 43      [24] 7820 	mov	dptr,#_INT8VEC_USB
   222D 74 02         [12] 7821 	mov	a,#0x02
   222F F0            [24] 7822 	movx	@dptr,a
                           7823 ;	d:\ztex\include\ezintavecs.h:124: INT8VEC_USB.addrH = 0x01;
   2230 90 00 44      [24] 7824 	mov	dptr,#(_INT8VEC_USB + 0x0001)
   2233 74 01         [12] 7825 	mov	a,#0x01
   2235 F0            [24] 7826 	movx	@dptr,a
                           7827 ;	d:\ztex\include\ezintavecs.h:125: INT8VEC_USB.addrL = 0xb8;
   2236 90 00 45      [24] 7828 	mov	dptr,#(_INT8VEC_USB + 0x0002)
   2239 74 B8         [12] 7829 	mov	a,#0xB8
   223B F0            [24] 7830 	movx	@dptr,a
                           7831 ;	d:\ztex\include\ezintavecs.h:126: INTSETUP |= 8;
   223C 90 E6 68      [24] 7832 	mov	dptr,#_INTSETUP
   223F E0            [24] 7833 	movx	a,@dptr
   2240 44 08         [12] 7834 	orl	a,#0x08
   2242 F0            [24] 7835 	movx	@dptr,a
                           7836 ;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
   2243 90 01 00      [24] 7837 	mov	dptr,#_INTVEC_SUDAV
   2246 74 02         [12] 7838 	mov	a,#0x02
   2248 F0            [24] 7839 	movx	@dptr,a
                           7840 ;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
   2249 7E 46         [12] 7841 	mov	r6,#_SUDAV_ISR
   224B 7F 17         [12] 7842 	mov	r7,#(_SUDAV_ISR >> 8)
   224D 8F 05         [24] 7843 	mov	ar5,r7
   224F 90 01 01      [24] 7844 	mov	dptr,#(_INTVEC_SUDAV + 0x0001)
   2252 ED            [12] 7845 	mov	a,r5
   2253 F0            [24] 7846 	movx	@dptr,a
                           7847 ;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
   2254 90 01 02      [24] 7848 	mov	dptr,#(_INTVEC_SUDAV + 0x0002)
   2257 EE            [12] 7849 	mov	a,r6
   2258 F0            [24] 7850 	movx	@dptr,a
                           7851 ;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
   2259 90 01 04      [24] 7852 	mov	dptr,#_INTVEC_SOF
   225C 74 02         [12] 7853 	mov	a,#0x02
   225E F0            [24] 7854 	movx	@dptr,a
                           7855 ;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
   225F 7E 7C         [12] 7856 	mov	r6,#_SOF_ISR
   2261 7F 1E         [12] 7857 	mov	r7,#(_SOF_ISR >> 8)
   2263 8F 05         [24] 7858 	mov	ar5,r7
   2265 90 01 05      [24] 7859 	mov	dptr,#(_INTVEC_SOF + 0x0001)
   2268 ED            [12] 7860 	mov	a,r5
   2269 F0            [24] 7861 	movx	@dptr,a
                           7862 ;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
   226A 90 01 06      [24] 7863 	mov	dptr,#(_INTVEC_SOF + 0x0002)
   226D EE            [12] 7864 	mov	a,r6
   226E F0            [24] 7865 	movx	@dptr,a
                           7866 ;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
   226F 90 01 08      [24] 7867 	mov	dptr,#_INTVEC_SUTOK
   2272 74 02         [12] 7868 	mov	a,#0x02
   2274 F0            [24] 7869 	movx	@dptr,a
                           7870 ;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
   2275 7E A1         [12] 7871 	mov	r6,#_SUTOK_ISR
   2277 7F 1E         [12] 7872 	mov	r7,#(_SUTOK_ISR >> 8)
   2279 8F 05         [24] 7873 	mov	ar5,r7
   227B 90 01 09      [24] 7874 	mov	dptr,#(_INTVEC_SUTOK + 0x0001)
   227E ED            [12] 7875 	mov	a,r5
   227F F0            [24] 7876 	movx	@dptr,a
                           7877 ;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
   2280 90 01 0A      [24] 7878 	mov	dptr,#(_INTVEC_SUTOK + 0x0002)
   2283 EE            [12] 7879 	mov	a,r6
   2284 F0            [24] 7880 	movx	@dptr,a
                           7881 ;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
   2285 90 01 0C      [24] 7882 	mov	dptr,#_INTVEC_SUSPEND
   2288 74 02         [12] 7883 	mov	a,#0x02
   228A F0            [24] 7884 	movx	@dptr,a
                           7885 ;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
   228B 7E C6         [12] 7886 	mov	r6,#_SUSP_ISR
   228D 7F 1E         [12] 7887 	mov	r7,#(_SUSP_ISR >> 8)
   228F 8F 05         [24] 7888 	mov	ar5,r7
   2291 90 01 0D      [24] 7889 	mov	dptr,#(_INTVEC_SUSPEND + 0x0001)
   2294 ED            [12] 7890 	mov	a,r5
   2295 F0            [24] 7891 	movx	@dptr,a
                           7892 ;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
   2296 90 01 0E      [24] 7893 	mov	dptr,#(_INTVEC_SUSPEND + 0x0002)
   2299 EE            [12] 7894 	mov	a,r6
   229A F0            [24] 7895 	movx	@dptr,a
                           7896 ;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
   229B 90 01 10      [24] 7897 	mov	dptr,#_INTVEC_USBRESET
   229E 74 02         [12] 7898 	mov	a,#0x02
   22A0 F0            [24] 7899 	movx	@dptr,a
                           7900 ;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
   22A1 7E EB         [12] 7901 	mov	r6,#_URES_ISR
   22A3 7F 1E         [12] 7902 	mov	r7,#(_URES_ISR >> 8)
   22A5 8F 05         [24] 7903 	mov	ar5,r7
   22A7 90 01 11      [24] 7904 	mov	dptr,#(_INTVEC_USBRESET + 0x0001)
   22AA ED            [12] 7905 	mov	a,r5
   22AB F0            [24] 7906 	movx	@dptr,a
                           7907 ;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
   22AC 90 01 12      [24] 7908 	mov	dptr,#(_INTVEC_USBRESET + 0x0002)
   22AF EE            [12] 7909 	mov	a,r6
   22B0 F0            [24] 7910 	movx	@dptr,a
                           7911 ;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
   22B1 90 01 14      [24] 7912 	mov	dptr,#_INTVEC_HISPEED
   22B4 74 02         [12] 7913 	mov	a,#0x02
   22B6 F0            [24] 7914 	movx	@dptr,a
                           7915 ;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
   22B7 7E 10         [12] 7916 	mov	r6,#_HSGRANT_ISR
   22B9 7F 1F         [12] 7917 	mov	r7,#(_HSGRANT_ISR >> 8)
   22BB 8F 05         [24] 7918 	mov	ar5,r7
   22BD 90 01 15      [24] 7919 	mov	dptr,#(_INTVEC_HISPEED + 0x0001)
   22C0 ED            [12] 7920 	mov	a,r5
   22C1 F0            [24] 7921 	movx	@dptr,a
                           7922 ;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
   22C2 90 01 16      [24] 7923 	mov	dptr,#(_INTVEC_HISPEED + 0x0002)
   22C5 EE            [12] 7924 	mov	a,r6
   22C6 F0            [24] 7925 	movx	@dptr,a
                           7926 ;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
   22C7 90 01 18      [24] 7927 	mov	dptr,#_INTVEC_EP0ACK
   22CA 74 02         [12] 7928 	mov	a,#0x02
   22CC F0            [24] 7929 	movx	@dptr,a
                           7930 ;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
   22CD 7E 35         [12] 7931 	mov	r6,#_EP0ACK_ISR
   22CF 7F 1F         [12] 7932 	mov	r7,#(_EP0ACK_ISR >> 8)
   22D1 8F 05         [24] 7933 	mov	ar5,r7
   22D3 90 01 19      [24] 7934 	mov	dptr,#(_INTVEC_EP0ACK + 0x0001)
   22D6 ED            [12] 7935 	mov	a,r5
   22D7 F0            [24] 7936 	movx	@dptr,a
                           7937 ;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
   22D8 90 01 1A      [24] 7938 	mov	dptr,#(_INTVEC_EP0ACK + 0x0002)
   22DB EE            [12] 7939 	mov	a,r6
   22DC F0            [24] 7940 	movx	@dptr,a
                           7941 ;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
   22DD 90 01 20      [24] 7942 	mov	dptr,#_INTVEC_EP0IN
   22E0 74 02         [12] 7943 	mov	a,#0x02
   22E2 F0            [24] 7944 	movx	@dptr,a
                           7945 ;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
   22E3 7E 5A         [12] 7946 	mov	r6,#_EP0IN_ISR
   22E5 7F 1F         [12] 7947 	mov	r7,#(_EP0IN_ISR >> 8)
   22E7 8F 05         [24] 7948 	mov	ar5,r7
   22E9 90 01 21      [24] 7949 	mov	dptr,#(_INTVEC_EP0IN + 0x0001)
   22EC ED            [12] 7950 	mov	a,r5
   22ED F0            [24] 7951 	movx	@dptr,a
                           7952 ;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
   22EE 90 01 22      [24] 7953 	mov	dptr,#(_INTVEC_EP0IN + 0x0002)
   22F1 EE            [12] 7954 	mov	a,r6
   22F2 F0            [24] 7955 	movx	@dptr,a
                           7956 ;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
   22F3 90 01 24      [24] 7957 	mov	dptr,#_INTVEC_EP0OUT
   22F6 74 02         [12] 7958 	mov	a,#0x02
   22F8 F0            [24] 7959 	movx	@dptr,a
                           7960 ;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
   22F9 7E 2A         [12] 7961 	mov	r6,#_EP0OUT_ISR
   22FB 7F 20         [12] 7962 	mov	r7,#(_EP0OUT_ISR >> 8)
   22FD 8F 05         [24] 7963 	mov	ar5,r7
   22FF 90 01 25      [24] 7964 	mov	dptr,#(_INTVEC_EP0OUT + 0x0001)
   2302 ED            [12] 7965 	mov	a,r5
   2303 F0            [24] 7966 	movx	@dptr,a
                           7967 ;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
   2304 90 01 26      [24] 7968 	mov	dptr,#(_INTVEC_EP0OUT + 0x0002)
   2307 EE            [12] 7969 	mov	a,r6
   2308 F0            [24] 7970 	movx	@dptr,a
                           7971 ;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
   2309 90 01 28      [24] 7972 	mov	dptr,#_INTVEC_EP1IN
   230C 74 02         [12] 7973 	mov	a,#0x02
   230E F0            [24] 7974 	movx	@dptr,a
                           7975 ;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
   230F 7E 23         [12] 7976 	mov	r6,#_EP1IN_ISR
   2311 7F 21         [12] 7977 	mov	r7,#(_EP1IN_ISR >> 8)
   2313 8F 05         [24] 7978 	mov	ar5,r7
   2315 90 01 29      [24] 7979 	mov	dptr,#(_INTVEC_EP1IN + 0x0001)
   2318 ED            [12] 7980 	mov	a,r5
   2319 F0            [24] 7981 	movx	@dptr,a
                           7982 ;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
   231A 90 01 2A      [24] 7983 	mov	dptr,#(_INTVEC_EP1IN + 0x0002)
   231D EE            [12] 7984 	mov	a,r6
   231E F0            [24] 7985 	movx	@dptr,a
                           7986 ;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
   231F 90 01 2C      [24] 7987 	mov	dptr,#_INTVEC_EP1OUT
   2322 74 02         [12] 7988 	mov	a,#0x02
   2324 F0            [24] 7989 	movx	@dptr,a
                           7990 ;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
   2325 7E 48         [12] 7991 	mov	r6,#_EP1OUT_ISR
   2327 7F 21         [12] 7992 	mov	r7,#(_EP1OUT_ISR >> 8)
   2329 8F 05         [24] 7993 	mov	ar5,r7
   232B 90 01 2D      [24] 7994 	mov	dptr,#(_INTVEC_EP1OUT + 0x0001)
   232E ED            [12] 7995 	mov	a,r5
   232F F0            [24] 7996 	movx	@dptr,a
                           7997 ;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
   2330 90 01 2E      [24] 7998 	mov	dptr,#(_INTVEC_EP1OUT + 0x0002)
   2333 EE            [12] 7999 	mov	a,r6
   2334 F0            [24] 8000 	movx	@dptr,a
                           8001 ;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
   2335 90 01 30      [24] 8002 	mov	dptr,#_INTVEC_EP2
   2338 74 02         [12] 8003 	mov	a,#0x02
   233A F0            [24] 8004 	movx	@dptr,a
                           8005 ;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
   233B 7E 6D         [12] 8006 	mov	r6,#_EP2_ISR
   233D 7F 21         [12] 8007 	mov	r7,#(_EP2_ISR >> 8)
   233F 8F 05         [24] 8008 	mov	ar5,r7
   2341 90 01 31      [24] 8009 	mov	dptr,#(_INTVEC_EP2 + 0x0001)
   2344 ED            [12] 8010 	mov	a,r5
   2345 F0            [24] 8011 	movx	@dptr,a
                           8012 ;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
   2346 90 01 32      [24] 8013 	mov	dptr,#(_INTVEC_EP2 + 0x0002)
   2349 EE            [12] 8014 	mov	a,r6
   234A F0            [24] 8015 	movx	@dptr,a
                           8016 ;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
   234B 90 01 34      [24] 8017 	mov	dptr,#_INTVEC_EP4
   234E 74 02         [12] 8018 	mov	a,#0x02
   2350 F0            [24] 8019 	movx	@dptr,a
                           8020 ;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
   2351 7E 92         [12] 8021 	mov	r6,#_EP4_ISR
   2353 7F 21         [12] 8022 	mov	r7,#(_EP4_ISR >> 8)
   2355 8F 05         [24] 8023 	mov	ar5,r7
   2357 90 01 35      [24] 8024 	mov	dptr,#(_INTVEC_EP4 + 0x0001)
   235A ED            [12] 8025 	mov	a,r5
   235B F0            [24] 8026 	movx	@dptr,a
                           8027 ;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
   235C 90 01 36      [24] 8028 	mov	dptr,#(_INTVEC_EP4 + 0x0002)
   235F EE            [12] 8029 	mov	a,r6
   2360 F0            [24] 8030 	movx	@dptr,a
                           8031 ;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
   2361 90 01 38      [24] 8032 	mov	dptr,#_INTVEC_EP6
   2364 74 02         [12] 8033 	mov	a,#0x02
   2366 F0            [24] 8034 	movx	@dptr,a
                           8035 ;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
   2367 7E B7         [12] 8036 	mov	r6,#_EP6_ISR
   2369 7F 21         [12] 8037 	mov	r7,#(_EP6_ISR >> 8)
   236B 8F 05         [24] 8038 	mov	ar5,r7
   236D 90 01 39      [24] 8039 	mov	dptr,#(_INTVEC_EP6 + 0x0001)
   2370 ED            [12] 8040 	mov	a,r5
   2371 F0            [24] 8041 	movx	@dptr,a
                           8042 ;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
   2372 90 01 3A      [24] 8043 	mov	dptr,#(_INTVEC_EP6 + 0x0002)
   2375 EE            [12] 8044 	mov	a,r6
   2376 F0            [24] 8045 	movx	@dptr,a
                           8046 ;	d:\ztex\include\ezintavecs.h:115: $0.op=0x02;
   2377 90 01 3C      [24] 8047 	mov	dptr,#_INTVEC_EP8
   237A 74 02         [12] 8048 	mov	a,#0x02
   237C F0            [24] 8049 	movx	@dptr,a
                           8050 ;	d:\ztex\include\ezintavecs.h:116: $0.addrH=((unsigned short)(&$1)) >> 8;
   237D 7E DC         [12] 8051 	mov	r6,#_EP8_ISR
   237F 7F 21         [12] 8052 	mov	r7,#(_EP8_ISR >> 8)
   2381 8F 05         [24] 8053 	mov	ar5,r7
   2383 90 01 3D      [24] 8054 	mov	dptr,#(_INTVEC_EP8 + 0x0001)
   2386 ED            [12] 8055 	mov	a,r5
   2387 F0            [24] 8056 	movx	@dptr,a
                           8057 ;	d:\ztex\include\ezintavecs.h:117: $0.addrL=(unsigned short)(&$1);
   2388 90 01 3E      [24] 8058 	mov	dptr,#(_INTVEC_EP8 + 0x0002)
   238B EE            [12] 8059 	mov	a,r6
   238C F0            [24] 8060 	movx	@dptr,a
                           8061 ;	d:\ztex\include\ztex.h:344: EXIF &= ~bmBIT4;
   238D AF 91         [24] 8062 	mov	r7,_EXIF
   238F 74 EF         [12] 8063 	mov	a,#0xEF
   2391 5F            [12] 8064 	anl	a,r7
   2392 F5 91         [12] 8065 	mov	_EXIF,a
                           8066 ;	d:\ztex\include\ztex.h:345: USBIRQ = 0x7f;
   2394 90 E6 5D      [24] 8067 	mov	dptr,#_USBIRQ
   2397 74 7F         [12] 8068 	mov	a,#0x7F
   2399 F0            [24] 8069 	movx	@dptr,a
                           8070 ;	d:\ztex\include\ztex.h:346: USBIE |= 0x7f; 
   239A 90 E6 5C      [24] 8071 	mov	dptr,#_USBIE
   239D E0            [24] 8072 	movx	a,@dptr
   239E FF            [12] 8073 	mov	r7,a
   239F 44 7F         [12] 8074 	orl	a,#0x7F
   23A1 F0            [24] 8075 	movx	@dptr,a
                           8076 ;	d:\ztex\include\ztex.h:347: EPIRQ = 0xff;
   23A2 90 E6 5F      [24] 8077 	mov	dptr,#_EPIRQ
   23A5 74 FF         [12] 8078 	mov	a,#0xFF
   23A7 F0            [24] 8079 	movx	@dptr,a
                           8080 ;	d:\ztex\include\ztex.h:348: EPIE = 0xff;
   23A8 90 E6 5E      [24] 8081 	mov	dptr,#_EPIE
   23AB 74 FF         [12] 8082 	mov	a,#0xFF
   23AD F0            [24] 8083 	movx	@dptr,a
                           8084 ;	d:\ztex\include\ztex.h:350: EUSB = 1;
   23AE D2 E8         [12] 8085 	setb	_EUSB
                           8086 ;	d:\ztex\include\ztex.h:351: EA = 1;
   23B0 D2 AF         [12] 8087 	setb	_EA
                           8088 ;	d:\ztex\include\ztex.h:278: EP$0CFG = bmBIT7 | bmBIT5;
   23B2 90 E6 11      [24] 8089 	mov	dptr,#_EP1INCFG
   23B5 74 A0         [12] 8090 	mov	a,#0xA0
   23B7 F0            [24] 8091 	movx	@dptr,a
                           8092 ;	d:\ztex\include\ezregs.h:46: __endasm;
   23B8 00            [12] 8093 	nop
   23B9 00            [12] 8094 	nop
   23BA 00            [12] 8095 	nop
   23BB 00            [12] 8096 	nop
                           8097 ;	d:\ztex\include\ztex.h:278: EP$0CFG = bmBIT7 | bmBIT5;
   23BC 90 E6 10      [24] 8098 	mov	dptr,#_EP1OUTCFG
   23BF 74 A0         [12] 8099 	mov	a,#0xA0
   23C1 F0            [24] 8100 	movx	@dptr,a
                           8101 ;	d:\ztex\include\ezregs.h:46: __endasm;
   23C2 00            [12] 8102 	nop
   23C3 00            [12] 8103 	nop
   23C4 00            [12] 8104 	nop
   23C5 00            [12] 8105 	nop
                           8106 ;	d:\ztex\include\ztex.h:273: ;
   23C6 90 E6 12      [24] 8107 	mov	dptr,#_EP2CFG
   23C9 E4            [12] 8108 	clr	a
   23CA F0            [24] 8109 	movx	@dptr,a
                           8110 ;	d:\ztex\include\ezregs.h:46: __endasm;
   23CB 00            [12] 8111 	nop
   23CC 00            [12] 8112 	nop
   23CD 00            [12] 8113 	nop
   23CE 00            [12] 8114 	nop
                           8115 ;	d:\ztex\include\ztex.h:273: ;
   23CF 90 E6 13      [24] 8116 	mov	dptr,#_EP4CFG
   23D2 E4            [12] 8117 	clr	a
   23D3 F0            [24] 8118 	movx	@dptr,a
                           8119 ;	d:\ztex\include\ezregs.h:46: __endasm;
   23D4 00            [12] 8120 	nop
   23D5 00            [12] 8121 	nop
   23D6 00            [12] 8122 	nop
   23D7 00            [12] 8123 	nop
                           8124 ;	d:\ztex\include\ztex.h:273: ;
   23D8 90 E6 14      [24] 8125 	mov	dptr,#_EP6CFG
   23DB E4            [12] 8126 	clr	a
   23DC F0            [24] 8127 	movx	@dptr,a
                           8128 ;	d:\ztex\include\ezregs.h:46: __endasm;
   23DD 00            [12] 8129 	nop
   23DE 00            [12] 8130 	nop
   23DF 00            [12] 8131 	nop
   23E0 00            [12] 8132 	nop
                           8133 ;	d:\ztex\include\ztex.h:273: ;
   23E1 90 E6 15      [24] 8134 	mov	dptr,#_EP8CFG
   23E4 E4            [12] 8135 	clr	a
   23E5 F0            [24] 8136 	movx	@dptr,a
                           8137 ;	d:\ztex\include\ezregs.h:46: __endasm;
   23E6 00            [12] 8138 	nop
   23E7 00            [12] 8139 	nop
   23E8 00            [12] 8140 	nop
   23E9 00            [12] 8141 	nop
                           8142 ;	d:\ztex\include\ztex.h:371: flash_init();
   23EA 12 0B 04      [24] 8143 	lcall	_flash_init
                           8144 ;	d:\ztex\include\ztex.h:374: fpga_configure_from_flash_init();
   23ED 12 15 13      [24] 8145 	lcall	_fpga_configure_from_flash_init
                           8146 ;	d:\ztex\include\ztex.h:389: USBCS |= bmBIT7 | bmBIT1;
   23F0 90 E6 80      [24] 8147 	mov	dptr,#_USBCS
   23F3 E0            [24] 8148 	movx	a,@dptr
   23F4 44 82         [12] 8149 	orl	a,#0x82
   23F6 F0            [24] 8150 	movx	@dptr,a
                           8151 ;	d:\ztex\include\ztex.h:390: wait(10);
   23F7 90 00 0A      [24] 8152 	mov	dptr,#0x000A
   23FA 12 02 63      [24] 8153 	lcall	_wait
                           8154 ;	d:\ztex\include\ztex.h:392: USBCS &= ~bmBIT3;
   23FD 90 E6 80      [24] 8155 	mov	dptr,#_USBCS
   2400 E0            [24] 8156 	movx	a,@dptr
   2401 54 F7         [12] 8157 	anl	a,#0xF7
   2403 F0            [24] 8158 	movx	@dptr,a
   2404 22            [24] 8159 	ret
                           8160 ;------------------------------------------------------------
                           8161 ;Allocation info for local variables in function 'main'
                           8162 ;------------------------------------------------------------
                           8163 ;	usb-test.c:186: void main(void)
                           8164 ;	-----------------------------------------
                           8165 ;	 function main
                           8166 ;	-----------------------------------------
   2405                    8167 _main:
                           8168 ;	usb-test.c:189: init_USB();
   2405 12 22 01      [24] 8169 	lcall	_init_USB
                           8170 ;	usb-test.c:191: while (1)
   2408                    8171 00102$:
   2408 80 FE         [24] 8172 	sjmp	00102$
                           8173 	.area CSEG    (CODE)
                           8174 	.area CONST   (CODE)
   240E                    8175 _fpga_flash_boot_id:
   240E 5A                 8176 	.db #0x5A	; 90	'Z'
   240F 54                 8177 	.db #0x54	; 84	'T'
   2410 45                 8178 	.db #0x45	; 69	'E'
   2411 58                 8179 	.db #0x58	; 88	'X'
   2412 42                 8180 	.db #0x42	; 66	'B'
   2413 53                 8181 	.db #0x53	; 83	'S'
   2414 01                 8182 	.db #0x01	; 1
   2415 01                 8183 	.db #0x01	; 1
   2416                    8184 _manufacturerString:
   2416 5A 54 45 58        8185 	.ascii "ZTEX"
   241A 00                 8186 	.db 0x00
   241B                    8187 _productString:
   241B 55 53 42 5F 54 65  8188 	.ascii "USB_Test UFM 1.11"
        73 74 20 55 46 4D
        20 31 2E 31 31
   242C 00                 8189 	.db 0x00
   242D                    8190 _configurationString:
   242D 64 65 66 61 75 6C  8191 	.ascii "default"
        74
   2434 00                 8192 	.db 0x00
   2435                    8193 _PadByte:
   2435 00                 8194 	.db #0x00	; 0
   2436                    8195 _DeviceDescriptor:
   2436 12                 8196 	.db #0x12	; 18
   2437 01                 8197 	.db #0x01	; 1
   2438 00                 8198 	.db #0x00	; 0
   2439 02                 8199 	.db #0x02	; 2
   243A FF                 8200 	.db #0xFF	; 255
   243B FF                 8201 	.db #0xFF	; 255
   243C FF                 8202 	.db #0xFF	; 255
   243D 40                 8203 	.db #0x40	; 64
   243E 1A                 8204 	.db #0x1A	; 26
   243F 22                 8205 	.db #0x22	; 34
   2440 00                 8206 	.db #0x00	; 0
   2441 01                 8207 	.db #0x01	; 1
   2442 00                 8208 	.db #0x00	; 0
   2443 00                 8209 	.db #0x00	; 0
   2444 01                 8210 	.db #0x01	; 1
   2445 02                 8211 	.db #0x02	; 2
   2446 03                 8212 	.db #0x03	; 3
   2447 01                 8213 	.db #0x01	; 1
   2448                    8214 _DeviceQualifierDescriptor:
   2448 0A                 8215 	.db #0x0A	; 10
   2449 06                 8216 	.db #0x06	; 6
   244A 00                 8217 	.db #0x00	; 0
   244B 02                 8218 	.db #0x02	; 2
   244C FF                 8219 	.db #0xFF	; 255
   244D FF                 8220 	.db #0xFF	; 255
   244E FF                 8221 	.db #0xFF	; 255
   244F 40                 8222 	.db #0x40	; 64
   2450 01                 8223 	.db #0x01	; 1
   2451 00                 8224 	.db #0x00	; 0
   2452                    8225 _HighSpeedConfigDescriptor:
   2452 09                 8226 	.db #0x09	; 9
   2453 02                 8227 	.db #0x02	; 2
   2454 20                 8228 	.db #0x20	; 32
   2455 00                 8229 	.db #0x00	; 0
   2456 01                 8230 	.db #0x01	; 1
   2457 01                 8231 	.db #0x01	; 1
   2458 04                 8232 	.db #0x04	; 4
   2459 C0                 8233 	.db #0xC0	; 192
   245A 32                 8234 	.db #0x32	; 50	'2'
   245B 09                 8235 	.db #0x09	; 9
   245C 04                 8236 	.db #0x04	; 4
   245D 00                 8237 	.db #0x00	; 0
   245E 00                 8238 	.db #0x00	; 0
   245F 02                 8239 	.db #0x02	; 2
   2460 FF                 8240 	.db #0xFF	; 255
   2461 FF                 8241 	.db #0xFF	; 255
   2462 FF                 8242 	.db #0xFF	; 255
   2463 00                 8243 	.db #0x00	; 0
   2464 07                 8244 	.db #0x07	; 7
   2465 05                 8245 	.db #0x05	; 5
   2466 81                 8246 	.db #0x81	; 129
   2467 02                 8247 	.db #0x02	; 2
   2468 00                 8248 	.db #0x00	; 0
   2469 02                 8249 	.db #0x02	; 2
   246A 00                 8250 	.db #0x00	; 0
   246B 07                 8251 	.db #0x07	; 7
   246C 05                 8252 	.db #0x05	; 5
   246D 01                 8253 	.db #0x01	; 1
   246E 02                 8254 	.db #0x02	; 2
   246F 00                 8255 	.db #0x00	; 0
   2470 02                 8256 	.db #0x02	; 2
   2471 00                 8257 	.db #0x00	; 0
   2472                    8258 _HighSpeedConfigDescriptor_PadByte:
   2472 00                 8259 	.db #0x00	; 0
   2473 00                 8260 	.db 0x00
   2474                    8261 _FullSpeedConfigDescriptor:
   2474 09                 8262 	.db #0x09	; 9
   2475 02                 8263 	.db #0x02	; 2
   2476 20                 8264 	.db #0x20	; 32
   2477 00                 8265 	.db #0x00	; 0
   2478 01                 8266 	.db #0x01	; 1
   2479 01                 8267 	.db #0x01	; 1
   247A 04                 8268 	.db #0x04	; 4
   247B C0                 8269 	.db #0xC0	; 192
   247C 32                 8270 	.db #0x32	; 50	'2'
   247D 09                 8271 	.db #0x09	; 9
   247E 04                 8272 	.db #0x04	; 4
   247F 00                 8273 	.db #0x00	; 0
   2480 00                 8274 	.db #0x00	; 0
   2481 02                 8275 	.db #0x02	; 2
   2482 FF                 8276 	.db #0xFF	; 255
   2483 FF                 8277 	.db #0xFF	; 255
   2484 FF                 8278 	.db #0xFF	; 255
   2485 00                 8279 	.db #0x00	; 0
   2486 07                 8280 	.db #0x07	; 7
   2487 05                 8281 	.db #0x05	; 5
   2488 81                 8282 	.db #0x81	; 129
   2489 02                 8283 	.db #0x02	; 2
   248A 40                 8284 	.db #0x40	; 64
   248B 00                 8285 	.db #0x00	; 0
   248C 00                 8286 	.db #0x00	; 0
   248D 07                 8287 	.db #0x07	; 7
   248E 05                 8288 	.db #0x05	; 5
   248F 01                 8289 	.db #0x01	; 1
   2490 02                 8290 	.db #0x02	; 2
   2491 40                 8291 	.db #0x40	; 64
   2492 00                 8292 	.db #0x00	; 0
   2493 00                 8293 	.db #0x00	; 0
   2494                    8294 _FullSpeedConfigDescriptor_PadByte:
   2494 00                 8295 	.db #0x00	; 0
   2495 00                 8296 	.db 0x00
   2496                    8297 _EmptyStringDescriptor:
   2496 04                 8298 	.db #0x04	; 4
   2497 03                 8299 	.db #0x03	; 3
   2498 00                 8300 	.db #0x00	; 0
   2499 00                 8301 	.db #0x00	; 0
                           8302 	.area XINIT   (CODE)
   249A                    8303 __xinit__ep0_payload_remaining:
   249A 00 00              8304 	.byte #0x00,#0x00	; 0
   249C                    8305 __xinit__ep0_payload_transfer:
   249C 00                 8306 	.db #0x00	; 0
   249D                    8307 __xinit__generatePwds:
   249D 00                 8308 	.db #0x00	; 0
   249E                    8309 __xinit__pwdLen:
   249E 00                 8310 	.db #0x00	; 0
   249F                    8311 __xinit__ep0_prev_setup_request:
   249F FF                 8312 	.db #0xFF	; 255
   24A0                    8313 __xinit__ep0_vendor_cmd_setup:
   24A0 00                 8314 	.db #0x00	; 0
   24A1                    8315 __xinit__ISOFRAME_COUNTER:
   24A1 00 00              8316 	.byte #0x00,#0x00	; 0
   24A3 00 00              8317 	.byte #0x00,#0x00	; 0
   24A5 00 00              8318 	.byte #0x00,#0x00	; 0
   24A7 00 00              8319 	.byte #0x00,#0x00	; 0
                           8320 	.area CABS    (ABS,CODE)
