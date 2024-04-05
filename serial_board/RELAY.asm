RDA   EQU   01H
TBE   EQU   02H

; INITIALISE
        LDAI    03H       ;006 003
        OUT1              ;123
        LDAI    11H       ;006 021 
        OUT1              ;123

; INPUT ROUTINE
INPUT:
        IN0               ;101
        LBA               ;310
        LDAI    RDA       ;006 001
        NDB               ;241
        JTZ     INPUT     ;150 006 000
        IN1               ;103
        LCA               ;320

; OUTPUT ROUTINE
OUTPUT:
        IN0               ;101
        LBA               ;310
        LDAI    TBE       ;006 002
        NDB               ;241
        JTZ     OUTPUT    ;150 020 000
        LAC               ;302
        OUT2              ;125
        JMP     INPUT     ;104 006 000