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
        JTZ     INPUT    ;IF NO DATA, KEEP ON CHECKING
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