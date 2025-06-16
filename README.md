# Mark-8 Minicomputer

This repository contains schematics, PCBs, instructions and parts lists for the Mark-8 minicomputer build which can be found at [https://www.youtube.com/watch?v=rFcsYTjo3UA](https://www.youtube.com/watch?v=rFcsYTjo3UA). The instructions and parts for most of the boards can be found at [https://bytecollector.com/archive/mark_8/My_Mark-8_Info/Mark-8_Construction/RE_Mark-8_Const-NEW.pdf](https://bytecollector.com/archive/mark_8/My_Mark-8_Info/Mark-8_Construction/RE_Mark-8_Const-NEW.pdf)

## Backplane

The original Mark-8 did not have a backplane so this will be an improvement since boards can be removed if required.

* The backplane has ten 41-pin connectors for the bus; split and splice 2.54mm connectors to make up a 41-pin connector
* Only stuff the rear power connectors since the front ones conflict with boards above
* The 2x8 holes between bus connectors can be stuffed with a 16-position headers but they will require some bending since the holes are not standard header footprints

### Parts List

| Part                       | Source      | Part #                   |
| -------------------------- | ----------- | ------------------------ |
| 2.54mm FEMALE CONN (~15)   | Amazon      | B08DVGCTKT               |
| 3POS 2.54mm                | DigiKey     | WM4112-ND                |
| 4POS 2.54mm                | DigiKey     | WM4113-ND                |
| 2x8 HEADER                 | Amazon      | B07DJZVQMV               |
| 8 BLOCK JUMPER             | DigiKey     | 732-13625-ND             |

### Image

<img width="653" alt="Backplane" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/bba0ee8f-0920-436e-a3dd-f76492770627">

## Power Supply

Switching power supply unit that produces +5v and -12v: https://www.digikey.com/en/products/detail/artesyn-embedded-power/LPT102-M/2203686

### Parts List

| Part               | Source      | Part #             |
| ------------------ | ----------- | ------------------ |
| Power Supply Unit  | DigiKey     | 454-1459-ND        |
| INPUT CONN KIT     | DigiKey     | 454-1366-ND        |
| 4POS CONN RCPT     | DigiKey     | WM2002-ND          |
| 3POS CONN RCPT     | DigiKey     | 900-0022013037-ND  |
| 20 AWG CRIMP PINS  | DigiKey     | WM2756CT-ND        |
| 16 AWG CRIMP PINS  | DigiKey     | 455-1319-1-ND      |
| 16 AWG WIRE        | ANY         | N/A                |
| 20 AWG WIRE        | ANY         | N/A                |

### Power Conversion Board

The following is the schematic for the power conversion board that converts -12v to -9v and passes through +5v. This board connects directly to the above power supply on the input side and to the Mark-8 backplane on the output side. I have a few PCBs available for sale at [www.kalinchuk.com](www.kalinchuk.com).

<img width="653" alt="Power Conversion Board Schematic" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/556f7abd-6658-4ac2-aff0-98889fd8b4e7">

<img width="653" alt="Power Conversion Board PCB" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/9ec51d69-70be-4264-95fc-43de139e07fd">

<img width="653" alt="Power Supply & Power Conversion Board" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/cf440c30-65d1-444c-910f-ee6a4f296a58">

#### Parts List

| Part       | Spec        | Source    | Part #                   |
| ---------- | ----------- | --------- | ------------------------ |
| U1         | LT1033CT    | DigiKey   | LT1033CT#PBF-ND          |
| R1         | 100 ohm     | DigiKey   | 749-2061-1-ND            |
| R2         | 620 ohm     | DigiKey   | 13-MFR50SFTE52-620RCT-ND |
| C1         | 10 uF       | DigiKey   | 478-1840-ND              |
| C2         | 2.2 uF      | DigiKey   | 478-8969-1-ND            |
| D1-D2      | DO201AD     | DigiKey   | 1N5400GDICT-ND           |
| J2         | 8POS 3.96mm | DigiKey   | 455-B8P-VH-ND            |
| J3         | 3POS 2.54mm | DigiKey   | WM4112-ND                |
| J4         | 3POS 3.96mm | DigiKey   | 455-B3P-VH-ND            |
| J5         | 4POS 2.54mm | DigiKey   | WM4113-ND                |

## LED Register Display Board

The LED Register Display board is used for displaying the address and contents of memory and output ports. It consists of 32 LEDs (8 for the high address, 8 for the low address, 8 for the address data and 8 for the output data).

* Split and splice a 40-pin connector to create a 41-pin connector
* Split 40-position dual right-angle connectors to create 8-position dual connectors

### Parts List

| Part       | Spec        | Source    | Part #                   |
| ---------- | ----------- | --------- | ------------------------ |
| C1         | 100 uF      | DigiKey   | 1189-1300-ND             |
| C2-C4      | 0.1 uF      | DigiKey   | 478-11712-ND             |
| D1-D32     | 5mm 643nm   | Jameco    | 333973                   |
| R1-R32     | 220 ohm     | Jameco    | 690700                   |
| IC1-IC6    | 7404        | Jameco    | 49040                    |
| IC7-IC8    | 7475        | Jameco    | 50577                    |
| IC9        | 7442        | Jameco    | 50374                    |
| IC10       | 7402        | Jameco    | 49015                    |
| 16POS CONN | 2x8 2.54mm  | Amazon    | B015K47OIQ               |
| 41POS CONN | Male R-A    | Amazon    | B01461DQ6S               |

### Image

<img width="653" alt="LED Register Display Board" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/4e50ebfc-eacb-4052-83f5-30fafeab7729">

## Output Board

The output board is used for outputting data from the computer. It's a fairly simple board consisting of mostly ICs.

* Split and splice a 40-pin connector to create a 41-pin connector
* Install jumper wire and output ports jumpers
* Split 40-position dual right-angle connectors to create 8-position dual connectors

### Jumpers

Install jumpers for output ports. The following is the default configuration. Additional output ports will need to be jumpered differently. Refer to original instructions for more information.

<img width="300" alt="Output Board Jumpers" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/1f419c5a-f58a-47f8-bc96-b34f7444e964">

### Parts List

| Part       | Spec        | Source    | Part #                   |
| ---------- | ----------- | --------- | ------------------------ |
| C1-C3      | 0.1 uF      | DigiKey   | 478-11712-ND             |
| IC1-IC8    | 7475        | Jameco    | 50577                    |
| IC9-IC10   | 7404        | Jameco    | 49040                    |
| IC11       | 7402        | Jameco    | 49015                    |
| IC12       | 7442        | Jameco    | 50374                    |
| 16POS CONN | 2x8 2.54mm  | Amazon    | B015K47OIQ               |
| 41POS CONN | Male R-A    | Amazon    | B01461DQ6S               |

### Image

<img width="653" alt="Output Board" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/aecd6b36-c755-4408-ba32-7a9d2cb83943">

## Memory Board

The memory board accepts 32-1101 SRAM ICs but requires a minimum of 8 of them. Multiple memory boards can be installed into the Mark-8 computer and linked together.

* Install a minimum of 8-1101 SRAM ICs (starting from IC1-IC8)
* Split and splice a 40-pin connector to create a 41-pin connector
* Split 40-position dual right-angle connectors to create a 8-position & 2-position dual connectors

### Jumpers

For the first and only memory board, install all of the resistors, A jumpers, 0 jumper and block codes as illustrated in the following image. Refer to original instructions if adding additional memory boards.

<img width="300" alt="Memory Board Jumpers" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/3cdcb5ae-1115-4da0-9939-27507b1c660b">

### Parts List

| Part            | Spec        | Source    | Part #                   |
| --------------- | ----------- | --------- | ------------------------ |
| C1-C3           | 0.1 uF      | DigiKey   | 478-11712-ND             |
| R1-R11, R20-R21 | 1K Ohm      | Jameco    | 690865                   |
| R12-R19         | 10K Ohm     | Jameco    | 691104                   |
| IC1-IC32        | 1101(A)     | eBay      | N/A                      |
| IC33            | 7442        | Jameco    | 50374                    |
| IC34            | 7400        | Jameco    | 48979                    |
| 4POS CONN       | 2x2 2.54mm  | Amazon    | B015K47OIQ               |
| 16POS CONN      | 2x8 2.54mm  | Amazon    | B015K47OIQ               |
| 41POS CONN      | Male R-A    | Amazon    | B01461DQ6S               |

### Image

<img width="653" alt="Memory Board" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/603d6b28-f445-4845-97a1-8694dda697e9">

## Address Latch Board

The address latch board latches addresses specified by the end-user which are then relayed to the memory board.

* The board that we're using here seems to have a mistake in the top connectors placement so, when installing the top connectors, pull them out slightly so that mating connectors could fit
* Install pull-up resistors on pin 4 of IC8-IC11 since the count down pin must be held high while the up pin is pulsed (ref: https://www.ti.com/lit/ds/symlink/sn54ls193-sp.pdf)
* Split and splice a 40-pin connector to create a 41-pin connector
* Split 40-position dual right-angle connectors to create a 8-position, 6-position & 5-position dual connectors
* Install two jumpers required by the board - better to install them early in the process

### Parts List

| Part       | Spec        | Source    | Part #                   |
| ---------- | ----------- | --------- | ------------------------ |
| C1-C6      | 0.01 uF     | DigiKey   | 399-13905-2-ND           |
| C7         | 680 pF      | DigiKey   | BC1023TR-ND              |
| R1-R3      | 10K Ohm     | Jameco    | 691104                   |
| R4         | 22K Ohm     | Jameco    | 691180                   |
| R5-R16     | 1K Ohm      | Jameco    | 690865                   |
| IC1-IC2    | 74123       | Jameco    | 49357                    |
| IC3-IC7    | 7400        | Jameco    | 48979                    |
| IC8-IC11   | 74193       | Jameco    | 49939                    |
| 10POS CONN | 2x5 2.54mm  | Amazon    | B015K47OIQ               |
| 12POS CONN | 2x6 2.54mm  | Amazon    | B015K47OIQ               |
| 16POS CONN | 2x8 2.54mm  | Amazon    | B015K47OIQ               |
| 41POS CONN | Male R-A    | Amazon    | B01461DQ6S               |

### Image

<img width="653" alt="Address Latch Board" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/1ed006fa-e405-4090-8672-74457bb6d690">

Pull up resistors installed on pin 4 of IC8-IC11:

<img width="653" alt="Address Latch Board Pull-Up Resistors" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/99d8e1ce-ba6f-4dbd-9f21-165a7fb97349">

## Input Multiplexer Board

The input multiplexer board controls all data flowing into the computer.

* C2 should be 100 uF (instead of 1 uF as the original document states)
* Do not use an 8266 instead of an 8267 - the computer will not operate
* Install two jumpers required by the board - better to install them early in the process
* Split and splice a 40-pin connector to create a 41-pin connector
* Split 40-position dual right-angle connectors to create 8-position dual connectors

### Parts List

| Part           | Spec        | Source    | Part #                   |
| -------------- | ----------- | --------- | ------------------------ |
| C1, C3-C4      | 0.1 uF      | DigiKey   | 478-11712-ND             |
| C2             | 100 uF      | DigiKey   | 1189-1300-ND             |
| R1             | 1K Ohm      | Jameco    | 690865                   |
| IC1-IC2        | 8263 MUX    | eBay      | N/A                      |
| IC3            | 7400        | Jameco    | 48979                    |
| IC4-IC5        | 8267 MUX    | eBay      | N/A                      |
| IC6            | 7402        | Jameco    | 49015                    |
| IC7            | 7442        | Jameco    | 50374                    |
| 16POS CONN x 4 | 2x8 2.54mm  | Amazon    | B015K47OIQ               |
| 41POS CONN     | Male R-A    | Amazon    | B01461DQ6S               |

### Image

<img width="653" alt="Input Multiplexer Board" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/c1fa90bb-b4ab-498c-a886-acdfac3ac342">

## CPU Board

The CPU board contains the 8008 microprocessor and is the "brain" of the computer.

* Don't install the 8008 until after doing the test outlined in the original instructions
* 74xx ICs can be substituted with an LS variant (e.g. 74L04/7404 can be substituted with 74LS04)
* Install two jumpers required by the board - better to install them early in the process
* Split and splice a 40-pin connector to create a 41-pin connector
* Split 40-position dual right-angle connectors to create 8-position dual connectors

### Parts List

| Part            | Spec          | Source    | Part #                   |
| --------------- | ------------- | --------- | ------------------------ |
| C1              | 33 pF         | Jameco    | 332217                   |
| C2-C6           | 0.1 uF        | DigiKey   | 478-11712-ND             |
| R1-R2           | 220 ohm       | Jameco    | 690700                   |
| R3              | 560 ohm       | Jameco    | 690806                   |
| R4              | 1.8K Ohm      | Jameco    | 690929                   |
| R5-R8, R17      | 1K Ohm        | Jameco    | 690865                   |
| R9-R16          | 22K Ohm       | Jameco    | 691180                   |
| IC1, IC4, IC6-IC7, IC9, IC13, IC17, IC19        | 7400          | Jameco    | 48979                    |       
| IC2-IC3, IC14   | 7476          | Jameco    | 48039                    |
| IC5, IC11, IC16, IC20, IC21 | 7404          | Jameco    | 49040                    |
| IC8, IC12       | 7474          | Jameco    | 50551                    |
| IC22-IC23, IC25 | 74L04         | Jameco    | 46316                    |
| IC10, IC18      | 7410          | Jameco    | 49189                    |
| IC15            | 7420          | Jameco    | 50008                    |
| IC24            | Intel 8008    | eBay      | N/A                      |
| IC26            | 7442          | Jameco    | 50374                    |
| XTAL 1          | 4 MHz crystal | eBay      | N/A                      |
| 41POS CONN      | Male R-A      | Amazon    | B01461DQ6S               |

### Image

<img width="653" alt="CPU Board" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/b3cf8cd2-aa3c-438a-bff9-9c254fb20b81">

## Switch Board

The switch board was designed based on the switch pinouts from the original document and several supporting documents. The original set of boards did not include a switch board. To properly assemble the switch PCB, a switch panel/board for the case will be needed to correctly space the LEDs.

I have a few PCBs available for sale at [www.kalinchuk.com](www.kalinchuk.com).

* Reference the [original Mark-8 assembly instructions](https://bytecollector.com/archive/mark_8/My_Mark-8_Info/Mark-8_Construction/RE_Mark-8_Const-NEW.pdf) for the switch pinouts
* Reference the [Mark-8 connection info document](https://bytecollector.com/archive/mark_8/My_Mark-8_Info/Mark-8_Construction/Mark_8_connection_info.pdf) for switch connection information
* The switch panel (to which the switch board mounts) has the dimensions of 10-1/2" x 4-3/4" and 1/8" thick
* The PCB dimensions are 9-1/8" x 3-1/2"

### Schematic and PCB

The following are the schematic and PCB layout for the Mark-8 switch board. If interested, the [Gerber file](https://github.com/kalinchuk/mark_8_minicomputer/files/13846576/Gerber.3.zip) can also be downloaded.

<img width="653" alt="Switch Board Schematic" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/797033e7-e30b-48fd-8582-35699c7eba69">
<img width="653" alt="Switch Board PCB" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/c739b773-601e-4dcc-b1dd-1a490600c284">

### Parts List

| Part                 | Spec                          | Source    | Part #                   |
| -------------------- | ----------------------------- | --------- | ------------------------ |
| R1                   | 220 ohm                       | Jameco    | 690700                   |
| R2                   | 470 ohm                       | Jameco    | 690785                   |
| D1                   | 5mm LED (+5v)                 | Jameco    | 333973                   |
| D2                   | 5mm LED (-9v)                 | Jameco    | 34825                    |
| SW1                  | SPDT (125v)                   | DigiKey   | 679-2462-ND              |
| SW2-SW9, SW14, SW17  | SPDT                          | DigiKey   | 679-2463-ND              |
| SW10-SW13, SW15-SW16 | SPDT MOM                      | DigiKey   | 5232ZAB-ND               |
| J1                   | 24 (2x12) POS HEADER (2.54mm) | DigiKey   | AHK24H-ND                |
| J2                   | 4 POS HEADER (3.96mm)         | DigiKey   | 455-B4P-VH-ND            |

### J1 Pinouts

The following is the pinout for the J1 header. Each pin of the J1 header goes to a specific pin of the top connectors located on top of the Mark-8 boards (aside from some power connections). Use the [Mark-8 connection info document](https://bytecollector.com/archive/mark_8/My_Mark-8_Info/Mark-8_Construction/Mark_8_connection_info.pdf) as reference when routing each letter to a pin.

| J1 Pin   | Mark-8 Pin |
| -------- | ---------- |
| 1        | K          |
| 2        | GND        |
| 3        | J          |
| 4        | JAM        |
| 5        | G          |
| 6        | -9v        |
| 7        | H          |
| 8        | MPX 7      |
| 9        | A          |
| 10       | MPX 6      |
| 11       | B          |
| 12       | MPX 5      |
| 13       | D          |
| 14       | MPX 4      |
| 15       | C          |
| 16       | MPX 3      |
| 17       | F          |
| 18       | MPX 2      |
| 19       | E          |
| 20       | MPX 1      |
| 21       | M          |
| 22       | +5v        |
| 23       | N          |
| 24       | MPX 0      |

### Image

<img width="653" alt="Switch Board" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/7b2b464a-85dd-4a73-a8b1-0cd922c3f786">

## Serial Board

I designed a serial board for the Mark-8 minicomputer clone. You can find information about it [here](serial_board/README.md). I have these boards available for sale at [www.kalinchuk.com](www.kalinchuk.com).

## RAM/ROM Board

Len Bayles design a RAM/ROM board for the Mark-8 but it was designed for the 3.96mm backplane. Leor Weinstein took Len's PCB and redesigned it for the 2.96mm backplane so that it would fit this clone computer. You can find the KiCAD files for that [here](ram_rom). All credit goes to Len for designing the board and Leor for converting it to the clone version.

## Video Board

Len Bayles design a Video board for the Mark-8 but it was designed for the 3.96mm backplane. Leor Weinstein took Len's PCB and redesigned it for the 2.96mm backplane so that it would fit this clone computer. You can find the KiCAD files for that [here](video). All credit goes to Len for designing the board and Leor for converting it to the clone version.

## Case

You will find drawings, parts lists and additional information regarding the case in this section.

### Drawings

The overall case layout ([PDF](https://github.com/kalinchuk/mark_8_minicomputer/files/13861999/CaseGeneral.pdf)):

<img width="653" alt="Case Generic" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/ae3d60a8-ef38-4d75-9cf4-547920b42302">

The rear panel ([PDF](https://github.com/kalinchuk/mark_8_minicomputer/files/13862011/RearPanel.pdf)):

<img width="653" alt="Case Rear Panel" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/fdfa2d89-5a9e-481f-85ad-0b89772249a4">

The rear panel template ([PDF](https://github.com/kalinchuk/mark_8_minicomputer/files/13862021/RearPanelTemplate.pdf) - note that the X's annotate parts to be removed and not the center):

<img width="653" alt="Case Rear Panel Template" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/2ea81848-828a-49b8-8c4d-4c7f2e8b4258">

The top panel ([PDF](https://github.com/kalinchuk/mark_8_minicomputer/files/13862029/CaseTop.pdf)):

<img width="653" alt="Case Top Panel" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/e71dad43-a272-432b-a667-fe926af688cc">

### Labels

Control panel label (right-click and save):

<img width="653" alt="Front Panel Label" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/7e36f4e1-2b84-41dc-9189-004bebbda20d">

Front panel label (right-click and save):

<img width="653" alt="Control Panel Label" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/0edbd6c9-81d2-4042-bab0-ffaf60ed7f50">

### Parts List

| Part                 | Spec                          | Source    | Part #                   |
| -------------------- | ----------------------------- | --------- | ------------------------ |
| Hardwood Boards      | Maple (1/4" & 1/8")           | Lumberyard, Amazon    | N/A          |
| LED Holders (2)      | 5mm LED, for switch panel     | Amazon    | B08FBVRL8V               |
| Fan                  | 80mmx80mm                     | DigiKey   | F8025E05B-FHR-ND         |
| Fan Guard            | 80mm square                   | DigiKey   | Q1011-ND                 |
| Cable Gland          | 1/2" - for power cable        | Amazon    | B08JMCVJRV               |
| Fuse Holder          | 1/2" diameter, 5mmx20mm fuse  | DigiKey   | 486-2061-ND              |
| Fuse                 | 4A, 125V, 5mmx20mm            | DigiKey   | 507-1268-ND              |
| I/O Panel (2)        | 2-DB25 Sub Panel              | DigiKey   | 5073-USP234B-ND          |
| Bolts                | M3-14mm, M3-20mm, M4-20mm     | Hardware  | N/A                      |
| Panel Nails          | N/A                           | Hardware  | N/A                      |
| Rubber Feet          | N/A                           | Amazon    | B07MBN4WSR               |
| 28 AWG Wire          | Switch Board Harness          | Amazon    | N/A                      |
| 14-16 AWG Wire       | High Voltage Lines            | Amazon    | N/A                      |
| Plexiglass Box       | 9in L x 9in W x 8in H         | shoppopdisplays.com | 5-Sided Acrylic Box |
| Metal Plate          | 10in x 6in                    | Hardware  | N/A                      |
| 40-POS Connector     | Switch Board Connection (2.54mm) | DigiKey | AKC24B-ND               |
| 3-POS Connector      | Fan Power                     | DigiKey   | 455-3982-ND              |
| 4-POS Connector      | Power Switch (3.96mm)         | DigiKey   | 455-3990-ND              |
| 3-Pole Terminal Block | 120v; 14-16 AWG              | Amazon    | N/A                      |

### Image

<img width="653" alt="Case" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/6f7a28c0-d5d9-46db-9864-4df54c00940c">

## Final Product

<img width="653" alt="Mark-8 Minicomputer 1" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/240f0fa7-5fd0-4b6e-9b0b-c94bc1831012">
<img width="653" alt="Mark-8 Minicomputer 2" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/48f14089-d7e3-47fc-8fe6-770a23f54021">
<img width="653" alt="Mark-8 Minicomputer 3" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/e3b74a2e-efe9-4e55-a587-a9e0f04a3128">