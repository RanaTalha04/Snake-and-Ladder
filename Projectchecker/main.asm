Include Prototypes.inc
.386
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
    rolled_number byte "Rolled Number was: ",0
    Player1 dword 0
    Player2 dword 0
    dice_count dword ?
    player1_turn byte "Player 1 Turn",13,10,0
    player2_turn byte "Player 2 Turn",13,10,0
    roll_dice byte "Press any key to Roll the Dice: ",13,10,0
    input_char byte ?
    number dword 0
.code
main PROC
again:
mov Player1,0
mov Player2,0

.while Player1<100 && Player2<100
call clrscr
invoke Display_Layout
invoke Display_Position1 ,Player1
invoke Display_Position2 ,Player2
mov eax,5
call settextcolor
mov dh,14
mov dl,80
call Gotoxy
mov edx,offset rolled_number
call writestring
mov eax,number
call writedec

mov dh,12
mov dl,81
call Gotoxy
;0=black
;1=blue
;2=green
;3=sky blue
;4=red
;5=purple
;6=yellow
;7=white
;8=grey
mov eax,3
call settextcolor
mov edx,offset player1_turn
call writestring
call crlf

mov dh,13
mov dl,75
call Gotoxy

mov edx,offset roll_dice
call writestring

mov dh,13
mov dl,106
call Gotoxy
mov ecx,1
call readchar

invoke RollDice_pos ,Player1
mov Player1,ebx
mov number,eax

invoke Display_Position1 ,Player1

invoke Check_Position ,Player1
mov Player1,ebx
.if Player1==100
jmp winn
.endif
call Clrscr
invoke Display_Layout 
invoke Display_Position1 ,Player1
invoke Display_Position2 ,Player2
mov eax,3
call settextcolor
mov dh,14
mov dl,80
call Gotoxy
mov edx,offset rolled_number
call writestring
mov eax,number
call writedec

mov dh,12
mov dl,81
call Gotoxy
mov eax,5
call settextcolor
mov edx,offset player2_turn
call writestring
call crlf

mov dh,13
mov dl,75
call Gotoxy

mov edx,offset roll_dice
call writestring

mov dh,13
mov dl,106
call Gotoxy
mov ecx,1
call readchar

invoke RollDice_pos,Player2
mov Player2,ebx
mov number,eax

invoke Display_Position2 ,Player2

invoke Check_Position ,Player2
mov Player2,ebx

.endw
winn:
.if Player1>=100
call clrscr
invoke Display_Layout
invoke Display_Position1 ,Player1
invoke Display_Position2 ,Player2
invoke Display_Congrats_Player1
.else
call clrscr
invoke Display_Layout
invoke Display_Position1 ,Player1
invoke Display_Position2 ,Player2
invoke Display_Congrats_Player2
.endif

invoke Display_Play_Again
cmp al,'1'
je finishh
jmp again
finishh:
invoke ExitProcess, 0
main ENDP
END main