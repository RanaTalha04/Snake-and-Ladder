Include Prototypes.inc
.code

RollDice_pos PROC Player:dword

    mov ebx,Player

    .if ebx<=94

    mov eax, 6                 
    call RandomRange           
    add eax, 1
    add ebx,eax
    .else
        mov eax,6
        call randomrange
        add eax,1
        add ebx,eax
        .if ebx>100
        sub ebx,eax
        .endif
    .endif
    ret
RollDice_pos ENDP
end