# Mark-8 Minicomputer

This repository contains schematics, PCBs, instructions and parts lists for the Mark-8 minicomputer build which can be found at [https://www.youtube.com/watch?v=rFcsYTjo3UA](https://www.youtube.com/watch?v=rFcsYTjo3UA). The instructions and parts for most of the boards can be found at [https://bytecollector.com/archive/mark_8/My_Mark-8_Info/Mark-8_Construction/RE_Mark-8_Const-NEW.pdf](https://bytecollector.com/archive/mark_8/My_Mark-8_Info/Mark-8_Construction/RE_Mark-8_Const-NEW.pdf)

## Power Supply

Switching power supply unit that produces +5v and -12v: https://www.digikey.com/en/products/detail/artesyn-embedded-power/LPT102-M/2203686

### Parts

| Part               | Source      | Part #             |
| ------------------ | ----------- | ------------------ |
| INPUT CONN KIT     | DigiKey     | 454-1366-ND        |
| 4POS CONN RCPT     | DigiKey     | WM2002-ND          |
| 3POS CONN RCPT     | DigiKey     | 900-0022013037-ND  |
| 20 AWG CRIMP PINS  | DigiKey     | WM2756CT-ND        |
| 16 AWG CRIMP PINS  | DigiKey     | 455-1319-1-ND      |
| 16 AWG WIRE        | ANY         | N/A                |
| 20 AWG WIRE        | ANY         | N/A                |

### Power Conversion Board

The following is the schematic for the power conversion board that converts -12v to -9v and passes through +5v. This board connects directly to the above power supply on the input side and to the Mark-8 backplane on the output side.

<img width="653" alt="Screenshot 2023-12-14 at 12 52 46 PM" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/556f7abd-6658-4ac2-aff0-98889fd8b4e7">

<img width="653" alt="Screenshot 2023-12-14 at 12 53 37 PM" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/9ec51d69-70be-4264-95fc-43de139e07fd">

![IMG_3756](https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/cf440c30-65d1-444c-910f-ee6a4f296a58)


#### Parts

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
