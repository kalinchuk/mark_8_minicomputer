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

The following is the schematic for the power conversion board that converts -12v to -9v and passes through +5v. This board connects directly to the above power supply on the input side and to the Mark-8 backplane on the output side.

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
* Split 40-position dual right-angle connectors to create 8-position dual connectors

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

<img width="653" alt="Output Board" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/fb3a4e2b-db8f-4eed-837a-d1a25c6fb121">

## Memory Board

The memory board accepts 32-1101 SRAM ICs but requires a minimum of 8 of them. Multiple memory boards can be installed into the Mark-8 computer and linked together.

* Install a minimum of 8-1101 SRAM ICs (starting from IC1-IC8)
* Split and splice a 40-pin connector to create a 41-pin connector
* Split 40-position dual right-angle connectors to create a 8-position & 2-position dual connectors

### Jumpers

For the first and only memory board, install all of the resisters, A jumpers, 0 jumper and block codes as illustrated in the following image. Refer to original instructions if adding additional memory boards.

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
* Split and splice a 40-pin connector to create a 41-pin connector
* Split 40-position dual right-angle connectors to create a 8-position, 6-position & 5-position dual connectors
* Install two jumpers required by the board

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
