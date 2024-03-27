;DISPLAYS ASCII CHARACTERS ON THE SCREEN, ONE AT A TIME

TBE   EQU   02H

; INITIALISE
        LDAI    03H       ;006 003
        OUT1              ;123
        LDAI    11H       ;006 021 
        OUT1              ;123

; LOAD CHARACTER
LOAD:
        LDAI    ' '       ;006 040
        LCA               ;320

; OUTPUT ROUTINE
OUTPUT:
        IN0               ;101
        LBA               ;310
        LDAI    TBE       ;006 002
        NDB               ;241
        JTZ     OUTPUT    ;150 011 000
        LAC               ;302
        OUT2              ;125
        INC               ;020

        LDAI    255       ;006 777
        LBA               ;310
; DELAY ROUTINE
DELAY:
        DCB               ;011
        JFZ     DELAY     ;110 027 000

;HALT ROUTINE
HALT:
        LDAI    '~'       ;006 176
        NDC               ;242
        JTZ     OUTPUT    ;150 011 000
        HLT               ;777