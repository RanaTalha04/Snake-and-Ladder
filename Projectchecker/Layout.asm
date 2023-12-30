Include Prototypes.inc
mwritestring Macro buffer
push edx
mov edx,offset buffer
call writestring
pop edx
endm
.data
rolled_number byte "Rolled Number was: ",0
snake_H byte "^^",0
str_B  byte "||",0
str_LT byte "\\",0
str_RT byte "//",0
snake_T byte "V",0

str_Ladder byte "|-|",0
str_LLT byte "\-\",0
str_LRT byte "/-/",0

str_line byte"//=========================================\\",13,10,0
play_again byte"||---------Press Any Key to Play Again-------||",13,10,0
str_quit byte"\\---------Press 1 to Exit the Game--------//",13,10,0
str_line2 byte "\\=======================================//",13,10,0
str_name byte "            Snake and Ladder Game",13,10,0
str_bar byte"---------------------------------------------------",13,10,0
    str10 byte"|100 | 99 | 98 | 97 | 96 | 95 | 94 | 93 | 92 | 91 |",13,10,0
    str9 byte "| 81 | 82 | 83 | 84 | 85 | 86 | 87 |88  | 89 | 90 |                              Submitted by:",13,10,0
    str8 byte "|    | 79 |  78| 77 | 76 | 75 | 74 | 73 | 72 | 71 |                     Muhammad Zaid Latif     2022-CS-617",13,10,0
    str7 byte "|    | 62 |    | 64 | 65 | 66 | 67 | 68 | 69 | 70 |                     Rana Muhammad Talha     2022-CS-630",13,10,0
    str6 byte "| 60 | 59 |    | 57 | 56 | 55 | 54 | 53 | 52 | 51 |",13,10,0
    str5 byte "| 41 | 42 | 43 | 44 | 45 | 46 | 47 | 48 | 49 | 50 |",13,10,0
    str4 byte "| 40 | 39 | 38 |37  | 36 | 35 | 34 | 33 | 32 | 31 |",13,10,0
    str3 byte "| 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 | 29 | 30 |",13,10,0
    str2 byte "| 20 | 19 | 18 | 17 | 16 | 15 |14  | 13 | 12 | 11 |",13,10,0
    str1 byte "|  1 |  2 |  3 |  4 |  5 |  6 |  7 |  8 |  9 | 10 |",13,10,0
    str11 byte"___________________________________________________",13,10,0
    str12 byte"|----|----|----|----|----|----|----|----|----|----|",13,10,0
    str_equal byte"//===============================================\\",13,10,0
    congrats byte"//----------------Congratulations------------------\\",13,10,0
    str_player1_wins byte "\\-------------Player 1 wins the game--------------//",13,10,0
    str_player2_wins byte "||---------------Player 2 wins the game--------------||",13,10,0
    str_equal2 byte"\\===============================================//",13,10,0
.code

Display_Congrats_Player1 PROC
mov eax,6
call settextcolor
mov dh,16
mov dl,64
call Gotoxy

mov edx,offset str_equal
call writestring
call crlf

mov dh,17
mov dl,63
call Gotoxy

mov edx,offset congrats
call writestring
call crlf

mov dh,18
mov dl,63
call Gotoxy

mov edx,offset str_Player1_wins
call writestring
call crlf

mov dh,19
mov dl,64
call Gotoxy

mov edx,offset str_equal2
call writestring
call crlf

ret
Display_Congrats_Player1 ENDP

Display_Congrats_Player2 PROC
mov eax,6
call settextcolor
mov dh,16
mov dl,64
call Gotoxy

mov edx,offset str_equal
call writestring
call crlf

mov dh,17
mov dl,63
call Gotoxy

mov edx,offset congrats
call writestring
call crlf

mov dh,18
mov dl,63
call Gotoxy

mov edx,offset str_Player2_wins
call writestring
call crlf

mov dh,19
mov dl,64
call Gotoxy

mov edx,offset str_equal2
call writestring
call crlf

ret
Display_Congrats_Player2 ENDP

Display_Layout PROC 
mov eax,7
call settextcolor

mov edx,offset str_name
call writestring

mov edx,offset str11
call writestring

mov edx,offset str12
call writestring

mov edx,offset str10
call writestring

mov edx,offset str12
call writestring

mov edx,offset str9
call writestring

mov edx,offset str12
call writestring

mov edx,offset str8
call writestring

mov edx,offset str12
call writestring

mov edx,offset str7
call writestring

mov edx,offset str12
call writestring

mov edx,offset str6
call writestring

mov edx,offset str12
call writestring

mov edx,offset str5
call writestring

mov edx,offset str12
call writestring

mov edx,offset str4
call writestring

mov edx,offset str12
call writestring

mov edx,offset str3
call writestring

mov edx,offset str12
call writestring

mov edx,offset str2
call writestring

mov edx,offset str12
call writestring

mov edx,offset str1
call writestring

mov edx,offset str12
call writestring

mov edx,offset str11
call writestring

mov dh,4
mov dl,41
call Gotoxy
mov eax,4
call settextcolor
mwritestring snake_H

mov dh,5
mov dl,38
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_RT

mov dh,6
mov dl,35
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_RT

mov dh,7
mov dl,32
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_RT

mov dh,8
mov dl,30
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_RT

mov dh,9
mov dl,29
call Gotoxy
mov eax,4
call settextcolor
mwritestring snake_t

mov dh,14
mov dl,24
call Gotoxy
mov eax,2
call settextcolor
mwritestring str_LRT

mov dh,12
mov dl,30
call Gotoxy
mov eax,2
call settextcolor
mwritestring str_LRT

mov dh,11
mov dl,32
call Gotoxy
mov eax,2
call settextcolor
mwritestring str_LRT

mov dh,10
mov dl,35
call Gotoxy
mov eax,2
call settextcolor
mwritestring str_LRT


mov dh,10
mov dl,18
call Gotoxy
mov eax,2
call settextcolor
mwritestring str_LLT

mov dh,11
mov dl,21
call Gotoxy
mov eax,2
call settextcolor
mwritestring str_LLT

mov dh,12
mov dl,24
call Gotoxy
mov eax,2
call settextcolor
mwritestring str_LLT

mov dh,11
mov dl,39
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_RT

mov dh,12
mov dl,38
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_RT

mov dh,13
mov dl,36
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_RT

mov dh,14
mov dl,34
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_RT

mov dh,15
mov dl,18
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_RT

mov dh,16
mov dl,15
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_RT


mov dh,20
mov dl,29
call Gotoxy
mov eax,2
call settextcolor
mwritestring str_LRT

mov dh,19
mov dl,33
call Gotoxy
mov eax,2
call settextcolor
mwritestring str_LRT

mov dh,18
mov dl,37
call Gotoxy
mov eax,2
call settextcolor
mwritestring str_LRT

mov dh,17
mov dl,41
call Gotoxy
mov eax,2
call settextcolor
mwritestring str_LRT

mov dh,16
mov dl,45
call Gotoxy
mov eax,2
call settextcolor
mwritestring str_LRT

mov dh,18
mov dl,22
call Gotoxy
mov eax,4
call settextcolor
mwritestring snake_H

mov dh,10
mov dl,41
call Gotoxy
mov eax,4
call settextcolor
mwritestring snake_H

mov dh,17
mov dl,14
call Gotoxy
mov eax,4
call settextcolor
mwritestring snake_T

mov dh,4
mov dl,8
call Gotoxy
mov eax,4
call settextcolor
mwritestring snake_H

mov dh,12
mov dl,13
call Gotoxy
mov eax,4
call settextcolor
mwritestring snake_T

mov dh,14
mov dl,21
call Gotoxy
mov eax,4
call settextcolor
mwritestring snake_H

mov dh,15
mov dl,34
call Gotoxy
mov eax,4
call settextcolor
mwritestring snake_T

mov dh,6
mov dl,2
call Gotoxy
mov eax,4
call settextcolor
mwritestring snake_h

mov dh,8
mov dl,2
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_B

mov dh,10
mov dl,2
call Gotoxy
mov eax,4
call settextcolor
mwritestring snake_t

mov dh,19
mov dl,22
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_B

mov dh,20
mov dl,22
call Gotoxy
mov eax,4
call settextcolor
mwritestring snake_T

mov dh,9
mov dl,2
call Gotoxy
mov eax,4
call settextcolor
mov edx,offset str_B
call writestring

mov dh,7
mov dl,2
call Gotoxy
mov eax,4
call settextcolor
mov edx,offset str_B
call writestring



mov dh,4
mov dl,16
call Gotoxy
mov eax,2
call settextcolor
mwritestring str_Ladder

mov dh,5
mov dl,16
call Gotoxy
mov eax,2
call settextcolor
mwritestring str_Ladder

mov dh,6
mov dl,16
call Gotoxy
mov eax,2
call settextcolor
mwritestring str_Ladder

mov dh,7
mov dl,11
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_LT

mov dh,6
mov dl,10
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_LT

mov dh,5
mov dl,9
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_LT

mov dh,9
mov dl,12
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_B

mov dh,8
mov dl,12
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_B

mov dh,10
mov dl,12
call Gotoxy
mov eax,4
call settextcolor
mwritestring str_B



mov dh,11
mov dl,12
call Gotoxy
mov eax,4
call settextcolor
mov edx,offset str_B
call writestring

ret
Display_Layout ENDP

Display_Play_Again PROC
mov eax,1
call settextcolor
mov dh,21
mov dl,67
call Gotoxy

mov edx,offset str_line
call writestring
call crlf


mov dh,22
mov dl,66
call Gotoxy

mov edx,offset play_again
call writestring
call crlf

mov dh,23
mov dl,67
call Gotoxy

mov edx,offset str_quit
call writestring
call crlf

mov dh,24
mov dl,68
call Gotoxy

mov edx,offset str_line2
call writestring
call crlf

mov dh,25
mov dl,68
call Gotoxy
mov ecx,1
call readchar
ret
Display_Play_Again ENDP
end