# Mark-8 Minicomputer Serial Interface Board

This board enables the Mark-8 minicomputer to communicate via a serial interface. The board has a single serial port and requires two input and two output ports. You can purchase an [unstuffed board](https://www.kalinchuk.com/product-page/mark-8-minicomputer-serial-board) or a [kit with all the required parts](https://www.kalinchuk.com/product-page/mark-8-minicomputer-serial-board-kit) at [kalinchuk.com](https://kalinchuk.com).

This board layout and connections were made to support the boards that were created by [Budgetronics](https://www.budgetronics.eu/en/building-kits/mark-8-minicomputer-pcb-set-7-pieces/a-25789-20). A new version of this board will be available for original boards in the future.

<img height="500" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/09c7380c-1829-4fc0-b21c-0f34709ee598"/>

## Assembly Instructions

Refer to the [YouTube video]() for assembly instructions.

## Schematics

You can find the schematics PDF [here](https://github.com/kalinchuk/mark_8_minicomputer/files/14727726/Mark8SerialBoard.pdf).

Since the board does not have a silkscreen, the [parts layout](https://github.com/kalinchuk/mark_8_minicomputer/files/14727736/Layout.pdf) can be used to determine the location of each part when assembling.

## Parts List

All connectors have a 2.54mm pitch.

| Designator        | Quantity | Designation         |
|-------------------|----------|---------------------|
| C1                | 1        | 120pF ceramic       |
| C2,C4-C23         | 21       | 0.1uF ceramic       |
| C3                | 1        | 100uF electrolytic  |
| R1,R2,R3          | 3        | 10K                 |
| R4,R5             | 2        | 330ohm              |
| R6,R7             | 2        | 2.2K                |
| J1                | 1        | Conn_02x13_Odd_Even |
| J2,J3,J4,J5       | 4        | Conn_02x08_Odd_Even |
| J6                | 1        | Conn_01x41          |
| J7                | 1        | Conn_02x02_Odd_Even |
| SW4               | 1        | SW_DIP_x10          |
| U1,U2,U3,U4,U10   | 5        | 74LS367             |
| U5                | 1        | MC6850              |
| U6,U15            | 2        | 74LS00              |
| U7                | 1        | 74LS161             |
| U8,U9             | 2        | 74LS393             |
| U13,U12,U11       | 3        | 74LS85              |
| U14               | 1        | 74LS04              |
| U16               | 1        | 74LS86              |
| U17               | 1        | MC1489AN            |
| U18               | 1        | MC1488N             |
| U19,U20           | 2        | 74157               |
| X1                | 1        | 4.9152 MHz crystal  |

### Other parts

Four 16 position connectors and cables will be required to connect the serial board to the Mark-8 minicomputer input and output ports. A [serial cable & connector (DB25 to IDC26)](https://amzn.to/4cslUFx) can be used for connecting serial devices.

## Configuration

The serial board does not require much configuration. The only thing that can be configured on revision 1 is the baud rate. IMPORTANT: Only a single baud rate can be enabled at a time.

The +12v and -12v inputs support voltages between +15v and -15v.

## Testing

After assembly, you can verify the operation of the board by running the `RELAY.asm` program listed below. It's a simple program that listens for input on the serial port and responds back with what it receives. This will verify the input and output operations of the board.

```
RDA   EQU   01H
TBE   EQU   02H

; INITIALISE
        LDAI    03H       ;RESET 6850 UART
        OUT1
        LDAI    11H       ;8N2 
        OUT1

; INPUT ROUTINE
INPUT:
        IN0               ;READ STATUS REGISTER
        LBA               ;LOAD STATUS TO B
        LDAI    RDA
        NDB               ;CHECK IF SERIAL PORT HAS DATA
        JTZ     INPUT     ;IF NO DATA, KEEP ON CHECKING
        IN1               ;IF DATA IS PRESENT, READ THE DATA
        LCA               ;MOVE IT TO C

; OUTPUT ROUTINE
OUTPUT:
        IN0               ;READ STATUS REGISTER
        LBA               ;LOAD STATUS TO B
        LDAI    TBE
        NDB               ;CHECK IF SERIAL PORT CAN RECEIVE DATA
        JTZ     OUTPUT    ;IF CANNOT, KEEP ON CHECKING
        LAC               ;IF CAN, MOVE DATA FROM C BACK TO A
        OUT2              ;OUTPUT A TO SERIAL PORT
        JMP     INPUT     ;JUMP BACK TO LISTEN FOR MOVE INPUT
```

The octal code for the program is as follows:

```
006 003
123
006 021
123
101
310
006 001
241
150 006 000
103
320
101
310
006 002
241
150 020 000
302
125
104 006 000
```

## Design Considerations

* The board has a single serial port due to the Mark-8 only having two input ports. Since two input ports are required (one for status and one for data) for serial communication, only a single serial port can be used at a time. This can be improved by modifying the original Input Ports board for the Mark-8 minicomputer to allow input from more than two ports.
* The board has explicit connections for both input ports and output ports. While it would be ideal to utilize the data lines on the bus, it cannot be done with the existing Input Ports board because of the way it's designed. The output ports could utilize the bus data lines but, for consistency, the serial board was designed to accept two input and two output ports.
* The board uses input ports 0 and 1 and output ports 1 and 2 (output port 0 is the LED register display). This is not configurable (in revision 1, at least). Ideally, it would be best to have the ports configurable so that the Mark-8 could utilize whichever ports the serial board is configured to work with. Revision 1 was hard-wired since the original Mark-8 can only use two input ports so there was no good reason to make it configurable. If the original Input Ports board is modified to accept more than two ports, the serial board could be made configurable but, even then, the maximum number of input and output ports would be eight (or four serial ports).
* The board has inputs for +12v and -12v. It was done this way since the original Mark-8 did not support those voltages and did not have them on the bus (it used +5v and -9v). While it could be possible to utilize +5v and -5v, many older equipment do not support that. Then again, any voltage (within -15v and +15v) can be supplied to those lines. Since the power supply that I used for the Mark-8 had a +12v and -12v, I used those directly.
