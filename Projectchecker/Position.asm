Include Prototypes.inc

.data
pos1 byte"P1",0
pos2 byte"P2",0
pos1w byte"P1W",0
pos2w byte"P2W",0
.code
Check_Position PROC Player:dword
mov ebx,Player
.if ebx==25	;snake from 25 to 5
mov ebx,5
.elseif ebx==69	;snake from 69 to 34
mov ebx,34
.elseif ebx==99	;snake from 99 to 43
mov ebx,43
.elseif ebx==45	;snake from 45 to 23
mov ebx,23
.elseif ebx==81	;snake from 81 to 60
mov ebx,60
.elseif ebx==92	;snake from 92 to 66
mov ebx,66
.elseif ebx==6	;Ladder from 6 to 31
mov ebx,31
.elseif ebx==46	;Ladder from 46 to 64
mov ebx,64
.elseif ebx==77	;Ladder from 77 to 97
mov ebx,97
.elseif ebx==36	;Ladder from 36 to 68
mov ebx,68
.endif
ret
Check_Position ENDP

Display_Position1 PROC Player1:DWORD
mov ebx,Player1
mov eax,3
call settextcolor
.if ebx==1
mov dh,21
mov dl,2
call gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==2
mov dh,21
mov dl,7
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==3
mov dh,21
mov dl,12
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==4
mov dh,21
mov dl,17
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==5
mov dh,21
mov dl,22
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==6
mov dh,21
mov dl,27
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==7
mov dh,21
mov dl,32
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==8
mov dh,21
mov dl,37
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==9
mov dh,21
mov dl,42
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==10
mov dh,21
mov dl,47
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==11
mov dh,19
mov dl,47
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==12
mov dh,19
mov dl,42
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==13
mov dh,19
mov dl,37
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==14
mov dh,19
mov dl,32
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==15
mov dh,19
mov dl,27
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==16
mov dh,19
mov dl,22
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==17
mov dh,19
mov dl,17
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==18
mov dh,19
mov dl,12
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==19
mov dh,19
mov dl,7
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==20
mov dh,19
mov dl,2
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==21
mov dh,17
mov dl,2
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==22
mov dh,17
mov dl,7
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==23
mov dh,17
mov dl,12
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==24
mov dh,17
mov dl,17
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==25
mov dh,17
mov dl,22
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==26
mov dh,17
mov dl,27
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==27
mov dh,17
mov dl,32
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==28
mov dh,17
mov dl,37
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==29
mov dh,17
mov dl,42
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==30
mov dh,17
mov dl,47
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==31
mov dh,15
mov dl,47
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==32
mov dh,15
mov dl,42
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==33
mov dh,15
mov dl,37
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==34
mov dh,15
mov dl,32
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==35
mov dh,15
mov dl,27
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==36
mov dh,15
mov dl,22
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==37
mov dh,15
mov dl,17
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==38
mov dh,15
mov dl,12
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==39
mov dh,15
mov dl,7
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==40
mov dh,15
mov dl,2
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==41
mov dh,13
mov dl,2
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==42
mov dh,13
mov dl,7
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==43
mov dh,13
mov dl,12
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==44
mov dh,13
mov dl,17
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==45
mov dh,13
mov dl,22
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==46
mov dh,13
mov dl,27
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==47
mov dh,13
mov dl,32
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==48
mov dh,13
mov dl,37
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==49
mov dh,13
mov dl,42
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==50
mov dh,13
mov dl,47
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==51
mov dh,11
mov dl,47
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==52
mov dh,11
mov dl,42
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==53
mov dh,11
mov dl,37
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==54
mov dh,11
mov dl,32
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==55
mov dh,11
mov dl,27
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==56
mov dh,11
mov dl,22
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==57
mov dh,11
mov dl,17
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==58
mov dh,11
mov dl,12
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==59
mov dh,11
mov dl,7
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==60
mov dh,11
mov dl,2
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==61
mov dh,9
mov dl,2
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==62
mov dh,9
mov dl,7
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==63
mov dh,9
mov dl,12
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==64
mov dh,9
mov dl,17
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==65
mov dh,9
mov dl,22
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==66
mov dh,9
mov dl,27
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==67
mov dh,9
mov dl,32
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==68
mov dh,9
mov dl,37
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==69
mov dh,9
mov dl,42
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==70
mov dh,9
mov dl,47
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==71
mov dh,7
mov dl,47
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==72
mov dh,7
mov dl,42
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==73
mov dh,7
mov dl,37
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==74
mov dh,7
mov dl,32
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==75
mov dh,7
mov dl,27
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==76
mov dh,7
mov dl,22
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==77
mov dh,7
mov dl,17
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==78
mov dh,7
mov dl,12
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==79
mov dh,7
mov dl,7
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==80
mov dh,7
mov dl,2
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==81
mov dh,5
mov dl,2
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==82
mov dh,5
mov dl,7
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==83
mov dh,5
mov dl,12
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==84
mov dh,5
mov dl,17
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==85
mov dh,5
mov dl,22
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==86
mov dh,5
mov dl,27
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==87
mov dh,5
mov dl,32
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==88
mov dh,5
mov dl,37
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==89
mov dh,5
mov dl,42
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==90
mov dh,5
mov dl,47
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==91
mov dh,3
mov dl,47
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==92
mov dh,3
mov dl,42
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==93
mov dh,3
mov dl,37
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==94
mov dh,3
mov dl,32
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==95
mov dh,3
mov dl,27
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==96
mov dh,3
mov dl,22
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==97
mov dh,3
mov dl,17
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==98
mov dh,3
mov dl,12
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==99
mov dh,3
mov dl,7
call Gotoxy
mov edx,offset pos1
call writestring
.elseif ebx==100
mov dh,3
mov dl,1
call Gotoxy
mov edx,offset pos1w
call writestring
.endif
ret
Display_Position1 ENDP

Display_Position2 PROC Player2:DWORD
mov ebx,Player2
mov eax,5
call settextcolor
.if ebx==1
mov dh,21
mov dl,2
call gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==2
mov dh,21
mov dl,7
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==3
mov dh,21
mov dl,12
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==4
mov dh,21
mov dl,17
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==5
mov dh,21
mov dl,22
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==6
mov dh,21
mov dl,27
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==7
mov dh,21
mov dl,32
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==8
mov dh,21
mov dl,37
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==9
mov dh,21
mov dl,42
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==10
mov dh,21
mov dl,47
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==11
mov dh,19
mov dl,47
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==12
mov dh,19
mov dl,42
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==13
mov dh,19
mov dl,37
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==14
mov dh,19
mov dl,32
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==15
mov dh,19
mov dl,27
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==16
mov dh,19
mov dl,22
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==17
mov dh,19
mov dl,17
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==18
mov dh,19
mov dl,12
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==19
mov dh,19
mov dl,7
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==20
mov dh,19
mov dl,2
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==21
mov dh,17
mov dl,2
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==22
mov dh,17
mov dl,7
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==23
mov dh,17
mov dl,12
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==24
mov dh,17
mov dl,17
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==25
mov dh,17
mov dl,22
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==26
mov dh,17
mov dl,27
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==27
mov dh,17
mov dl,32
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==28
mov dh,17
mov dl,37
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==29
mov dh,17
mov dl,42
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==30
mov dh,17
mov dl,47
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==31
mov dh,15
mov dl,47
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==32
mov dh,15
mov dl,42
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==33
mov dh,15
mov dl,37
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==34
mov dh,15
mov dl,32
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==35
mov dh,15
mov dl,27
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==36
mov dh,15
mov dl,22
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==37
mov dh,15
mov dl,17
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==38
mov dh,15
mov dl,12
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==39
mov dh,15
mov dl,7
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==40
mov dh,15
mov dl,2
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==41
mov dh,13
mov dl,2
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==42
mov dh,13
mov dl,7
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==43
mov dh,13
mov dl,12
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==44
mov dh,13
mov dl,17
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==45
mov dh,13
mov dl,22
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==46
mov dh,13
mov dl,27
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==47
mov dh,13
mov dl,32
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==48
mov dh,13
mov dl,37
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==49
mov dh,13
mov dl,42
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==50
mov dh,13
mov dl,47
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==51
mov dh,11
mov dl,47
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==52
mov dh,11
mov dl,42
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==53
mov dh,11
mov dl,37
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==54
mov dh,11
mov dl,32
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==55
mov dh,11
mov dl,27
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==56
mov dh,11
mov dl,22
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==57
mov dh,11
mov dl,17
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==58
mov dh,11
mov dl,12
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==59
mov dh,11
mov dl,7
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==60
mov dh,11
mov dl,2
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==61
mov dh,9
mov dl,2
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==62
mov dh,9
mov dl,7
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==63
mov dh,9
mov dl,12
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==64
mov dh,9
mov dl,17
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==65
mov dh,9
mov dl,22
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==66
mov dh,9
mov dl,27
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==67
mov dh,9
mov dl,32
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==68
mov dh,9
mov dl,37
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==69
mov dh,9
mov dl,42
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==70
mov dh,9
mov dl,47
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==71
mov dh,7
mov dl,47
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==72
mov dh,7
mov dl,42
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==73
mov dh,7
mov dl,37
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==74
mov dh,7
mov dl,32
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==75
mov dh,7
mov dl,27
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==76
mov dh,7
mov dl,22
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==77
mov dh,7
mov dl,17
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==78
mov dh,7
mov dl,12
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==79
mov dh,7
mov dl,7
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==80
mov dh,7
mov dl,2
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==81
mov dh,5
mov dl,2
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==82
mov dh,5
mov dl,7
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==83
mov dh,5
mov dl,12
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==84
mov dh,5
mov dl,17
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==85
mov dh,5
mov dl,22
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==86
mov dh,5
mov dl,27
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==87
mov dh,5
mov dl,32
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==88
mov dh,5
mov dl,37
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==89
mov dh,5
mov dl,42
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==90
mov dh,5
mov dl,47
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==91
mov dh,3
mov dl,47
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==92
mov dh,3
mov dl,42
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==93
mov dh,3
mov dl,37
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==94
mov dh,3
mov dl,32
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==95
mov dh,3
mov dl,27
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==96
mov dh,3
mov dl,22
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==97
mov dh,3
mov dl,17
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==98
mov dh,3
mov dl,12
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==99
mov dh,3
mov dl,7
call Gotoxy
mov edx,offset pos2
call writestring
.elseif ebx==100
mov dh,3
mov dl,1
call Gotoxy
mov edx,offset pos2w
call writestring
.endif
ret
Display_Position2 ENDP

end