Set Talk Off
Do CheckFiles
! SmartDrv.exe /u/f > Nul
! Persian.com
If File([PassWord.ÿÿÿ])
Restore From PassWord.ÿÿÿ
If SubSTR(Lock,1,8)='EnablePW'
Define Window WellCome From 11,31 To 13,46 Title" ¤ø“ä ¥õ¤ " Double NoClose NoFloat NoGrow NoZoom
Activate Window WellCome
Q=0
Do While Q<3
PssWrd=Space(7)
@0,3 Get PssWrd
Read
If LastKey()=27
Q=3
EndIf
Q=Q+1
FilePW='A'
PW=Lock
Do PWFilter
If Lock='Locked'
Q=3
EndIf
If Lock=PW
Q=4
Else
Wait'–¨ –¨¤¢‘÷ ¤ø“ä üùõóî' NoWait Window
EndIf
EndDo
If Q=3
Wait'–¨ş÷ ü¨¤—¨¢ ñ“‘ì ùõ‘÷¤“' Window
Do Exit
EndIf
DeActivate Window WellCome
Release Windows WellCome
EndIf
Else
Wait 'PassWord File, Not Found; Press Any Key To Exit ...' Window
Do Exit
EndIF
Use Options
If Clock=.T.
Set Hours To 24
Set Clock To 1,1
Set Clock On
EndIf
If Monitor=.T.
Set Color On
Else
Set Color Off
EndIf
If Mouse=.T.
! GMouse.com
Set Mouse On
_DBCLICK=Rate
EndIf
Use
Set Century On
Set Date To YMD
Set Default To
Set Path TO
Set Bell On
Set Color On
Set Color To
Set Cursor On
Set Confirm Off
Set Help Off
Set Escape Off
Use Anbar.DBF
Set Device To Screen
Define Window Mwin From 0,0 To 24,79 Title" ôşŸ¤ó öõŸ¤ó ùóó ô¨“ " Footer" –‘ã¯ì ü¤¢¤‘“÷ ô—ş¨ " Double NoClose NoFloat NoGrow NoZoom Fill"±"
Activate Window MWin
Define Menu Mmnu
Define Pad MNU3 Of Mmnu Prompt[¤¥“\<] AT 0,29
Define Pad MNU2 Of Mmnu Prompt[ùã¯\<ì] AT 0,36
Define Pad MNU1 Of Mmnu Prompt[‘õ÷û\<¤] AT 0,42
Define Popup Smnu1 From 1,42 Shadow
Define Bar 1 Of Smnu1 Prompt[ íõ\<î ]
Define Bar 2 Of Smnu1 Prompt[\-]
Define Bar 3 Of Smnu1 Prompt[ F10 ö‘ş‘\<• ]
Define Popup Smnu2 From 1,36 Shadow
Define Bar 1 Of Smnu2 Prompt[ F5 ¢ø¤\<ø ]
Define Bar 2 Of Smnu2 Prompt[ F6 ¢ş¤\<¡ ] Skip For Reccount()=0
Define Bar 3 Of Smnu2 Prompt[ F7 ©ø¤\<ê ] Skip For Reccount()=0
Define Bar 4 Of Smnu2 Prompt[ F8 šø¤\<¡] Skip For Reccount()=0
Define Bar 5 Of Smnu2 Prompt[\-]
Define Bar 6 Of Smnu2 Prompt[ –¨ş\<ó  ] Skip For Reccount()=0
Define Popup Smnu3 From 1,29 Shadow
Define Bar 1 Of Smnu3 Prompt[ F4 ¤¥ê –¡\<¨ ]
Define Bar 2 Of Smnu3 Prompt[\-]
Define Bar 3 Of Smnu3 Prompt[ F9 –¤‹ş‹şç\<— ]
Define Popup Select11 From 2,55 Shadow
Define Bar 1 Of Select11 Prompt[ F2 üîõî –‘äò¯\< ]
Define Bar 2 Of Select11 Prompt[ F1 ... ù¤‘‹“¤\<¢ ]
Define Popup Select25 From 6,47 Shadow
Define Bar 1 Of Select25 Prompt[ üó‹\<î ]
Define Bar 2 Of Select25 Prompt[ ü¥\<›  ]
Define Popup Choice0 From 3,56 Shadow
Define Bar 1 Of Choice0 Prompt[ F3 ¤ø—ş÷‘\<õ ]
Define Bar 2 Of Choice0 Prompt[ ¤‹—‹÷‹ş¤‹\<• ] Skip For SYS(102)='OFF'
Define Bar 3 Of Choice0 Prompt[ ñ‹‹‹‹ş‘‹‹\<ê ]
Define Popup Choice1 From 8,56 Shadow
Define Bar 1 Of Choice1 Prompt[ ¤ø—ş÷‘\<õ ]
Define Bar 2 Of Choice1 Prompt[ ¤—÷‹ş¤\<• ] Skip For SYS(102)='OFF'
Define Bar 3 Of Choice1 Prompt[ ñ‹‹ş‘‹\<ê ]
On Pad MNU1 Of Mmnu Activate Popup Smnu1
On Pad MNU2 Of Mmnu Activate Popup Smnu2
On Pad MNU3 Of Mmnu Activate Popup Smnu3
On Bar 1 Of Smnu1 Activate Popup Select11
On Bar 6 Of Smnu2 Activate Popup Select25
On Bar 1 Of Select25 Activate Popup Choice0
On Bar 2 Of Select25 Activate Popup Choice1
On Selection Bar 1 Of Select11 Do Help
On Selection Bar 2 Of Select11 Do About
On Selection Bar 3 Of Smnu1 Do EXIT
On Selection Bar 1 Of Smnu2 Do New
On Selection Bar 2 Of Smnu2 Do Buy
On Selection Bar 3 Of Smnu2 Do Sell
On Selection Bar 4 Of Smnu2 Do Del
On Selection Bar 1 Of Choice0 Do MLST0
On Selection Bar 2 Of Choice0 Do PLST0
On Selection Bar 3 Of Choice0 Do FLST0
On Selection Bar 1 Of Choice1 Do MLST1
On Selection Bar 2 Of Choice1 Do PLST1
On Selection Bar 3 Of Choice1 Do FLST1
On Selection Bar 1 Of Smnu3 Do HardWare
On Selection Bar 3 Of Smnu3 Do Options
Do FuncSet
Do While InKey()=27 .OR. InKey()=0
Activate Menu Mmnu
EndDo


Procedure CheckFiles
LetSpace=' '
If File([Anbar.dbf])
Else
Wait 'Anabr.DBF Not Found; Press SpaceBar To Continue ...' To LetSpace Window
EndIF
If File([SmartDRV.exe])
Else
Wait 'SmartDRV.EXE Not Found; Press SpaceBar To Continue ...' To LetSpace Window
EndIF
If File([Options.dbf])
Else
Wait 'Options.DBF Not Found; Press SpaceBar To Continue ...' To LetSpace Window
EndIF
If File([English.com])
Else
Wait 'English.COM Not Found; Press SpaceBar To Continue ...' To LetSpace Window
EndIF
If File([Persian.com])
Else
Wait 'Persian.COM Not Found; Press SpaceBar To Continue ...' To LetSpace Window
EndIF
If File([GMouse.com])
Else
Wait 'GMouse.COM Not Found; Press SpaceBar To Continue ...' To LetSpace Window
EndIF
If LetSpace<>' '
Retry
EndIf
Return


Procedure FuncSet
On Key Label F1 Do About
On Key Label F2 Do Help
If RecCount()=0
On Key Label F3 Null=0
On Key Label F6 Null=0
On Key Label F7 Null=0
On Key Label F8 Null=0
Else
On Key Label F3 Do MLST0
On Key Label F6 Do Buy
On Key Label F7 Do Sell
On Key Label F8 Do Del
EndIf
On Key Label F4 Do HardWare
On Key Label F5 Do New
On Key Label F9 Do Options
On Key Label F10 Do Exit
Return


Procedure FuncNull
On Key Label F1 Null=0
On Key Label F2 Null=0
On Key Label F3 Null=0
On Key Label F4 Null=0
On Key Label F5 Null=0
On Key Label F6 Null=0
On Key Label F7 Null=0
On Key Label F8 Null=0
On Key Label F9 Null=0
On Key Label F10 Null=0
Return


Procedure Exit
If File([TempARPT.$$$])
Erase TempARPT.$$$
Flush
EndIf
! English.com
Quit


Procedure NotFND
Define Window NotFnd From 9,8 To 15,71 Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window NotFnd
?" ! ¢ª‘“ üõ÷ ¢ø›øõ ¤‘“÷ ¤¢","[",AllTrim(P1),"]","ü ùã¯ì"
@3,27 Prompt" ¢şş‘— "
Menu To None
DeActivate Window NotFnd
Release Windows NotFnd
Return


Procedure New
Do FuncNull
SLCT=2
Do While SLCT=2
Define Window New From 3,19 To 20,59 Title" ¢ş¢› ùã¯ì " Panel NoClose NoFloat NoGrow Shadow NoZoom
Activate Window New
A=Space(23)
B=Space(254)
Go Bottom
@1,13 Say Reccount()+1
@1,25 Say": ¢¤øî¤ ù¤‘õª"
@3,25 Say":    ùã¯ì ô‘÷"
@5,25 Say":     –‘Ÿş®ø—"
@3,1 Get A
Read
@6,1 Get B
Read
SLCT=2
@14,7 Prompt' øç\<ó '
@14,14 Prompt' ü¢ã“ ùã¯\<ì ' 
@14,27 Prompt' –“\<™ '
Menu To SLCT
If LastKey()=27
Do New
EndIf
Do Case
Case SLCT=2 .OR. SLCT=3
Locate For Part_Name=A All
If EOF()=.F.
Define Window New From 9,8 To 15,70 Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window New
?" ! ¢ª‘“ üõ ¢ø›øõ ¤‘“÷ ¤¢","[",AllTrim(A),"]","ü ùã¯ì"
SLCT=2
@3,27 Prompt" ¢şş‘— "
Menu To Done
Else
Append Blank
Replace Part_No With RecNo(),Part_Name With A,Note With AllTrim(B),Apply With 0
Flush
EndIf
EndCase
DeActivate Window New
Release Windows New
EndDo
Do FuncSet
Return


Procedure Buy
Do FuncNull
SLCT=2
Do While SLCT=2
Q=0
Define Window Enter From 8,14 To 16,64 Title" ùã¯ì ô‘÷ " Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window Enter
?" : ¢şş‘õ÷ ¢¤ø ü¤¢ş¤¡ ü¤“ ¤ ¤à÷ ¢¤øõ ùã¯ì ô‘÷"
P1=Space(23)
@ 3,13 Get P1
Read
None=2
@5,3 Prompt" øç\<ó "
@5,10 Prompt" ¢şş‘\<— "
Menu To None
If LastKey()=27
Do Buy
EndIf
DeActivate Window Enter
Release Windows Enter
If None=2
Locate For Part_Name=P1 All
If EOF()=.F.
If Apply=1
Define Window War From 9,15 To 15,64 Title" ¤¢ªû " Panel NoClose NoFloat NoGrow Shadow NoZoom
Activate Window War
?" ù¢ª÷ ù—¡ø¤ê","[",AllTrim(P1),"]","ü ùã¯ì"
@3,20 Prompt" ¢şş‘— "
Menu To None
Do Buy
DeActivate Window War
Release Windows War
Return
EndIf
Do Strt
Do While Q=0
Define Window Buy From 3,9 To 20,69 Title" ¢ş¤¡ " Panel NoClose NoFloat NoGrow Shadow NoZoom
Activate Window Buy
A={0000/00/00}
B=0
C=0
D=Space(254)
@1,44 Say": ¢¤øî¤ ù¤‘õª"
@1,33 Say RecNo()
@1,25 Say": ùã¯ì ô‘÷"
@1,1 Say P1
@3,42 Say": ü¤¢ş¤¡  ş¤‘—"
@5,45 Say": ¢ş¤¡ ¢¢ã—"
@5,15 Say": ¢ş¤¡ ¢Ÿø –õşì"
@7,48 Say": –‘Ÿş®ø—"
@3,31 Get A
Read
@5,39 Get B Picture '99999'
Read
@5,8 Get C Picture '999999'
Read
@8,1 Get D
Read
SLCT=2
@14,14 Prompt' øç\<ó '
@14,24 Prompt' ü¢ã“ ùã¯\<ì '
@14,40 Prompt' –“\<™ '
Menu To SLCT
Do Case
Case SLCT=2 .OR. SLCT=3
Do Case
Case B+QTY=99999 .OR. B+QTY<99999
Replace Part_No With RecNo(),LastBuy_DT With A,Buy_QTY With B,BPrice With C,QTY With B+QTY,LB_Price With B*C,Note With AllTrim(Note)+AllTrim(D)
If QTY=99999
Replace Apply With 1
Else
Replace Apply With 9
EndIf
Flush
Q=1
Case B+QTY>99999
Q=0
Define Window Full From 9,4 To 15,76 Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window Full
?" ! ¢ª‘“ üõ ¤‘“÷ –şê¤à ¥ ©ş“","[",AllTrim(P1),"]","ü ùã¯ì ¢¢ã—"
@3,32 Prompt" ¢şş‘— "
Menu To Done
DeActivate Window Full
Release Windows Full
EndCase
Case SLCT=1
Q=1
EndCase
EndDo
Else
Do NotFND
EndIf
Else
SLCT=0
EndIf
EndDo
DeActivate Window Buy
Release Windows Buy
Do FuncSet
Return


Procedure Sell
Do FuncNull
SLCT=2
Do While SLCT=2
Q=0
Define Window Enter From 8,16 To 16,63 Title" ùã¯ì ô‘÷ " Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window Enter
?" : ¢şş‘õ÷ ¢¤ø ©ø¤ê ü¤“ ¤ ¤à÷ ¢¤øõ ùã¯ì ô‘÷"
P1=Space(23)
@ 3,13 Get P1
Read
None=2
@5,3 Prompt" øçó "
@5,10 Prompt" ¢şş‘— "
Menu To None
If LastKey()=27
Do Sell
EndIf
DeActivate Window Enter
Release Windows Enter
If None=2
Locate For Part_Name=P1 All
If EOF()=.F.
If Apply=0
Define Window War From 9,15 To 15,64 Title" ¤¢ªû " Panel NoClose NoFloat NoGrow Shadow NoZoom
Activate Window War
?" ù¢ª÷ ù¢ş¤¡","[",AllTrim(P1),"]","ü ùã¯ì "
@3,20 Prompt" ¢şş‘— "
Menu To Done
DeActivate Window War
Release Windows War
Do Sell
Return
EndIf
Do Strt
Do While Q=0
Define Window Sell From 3,9 To 20,69 Title" ©ø¤ê " Panel NoClose NoFloat NoGrow Shadow NoZoom
Activate Window Sell
A={0000/00/00}
B=0
C=0
D=Space(254)
@1,44 Say": ¢¤øî¤ ù¤‘õª"
@1,33 Say RecNo()
@1,25 Say": ùã¯ì ô‘÷"
@1,1 Say P1
@3,45 Say": ©ø¤ê  ş¤‘—"
@5,45 Say": ©ø¤ê ¢¢ã—"
@5,15 Say": ©ø¤ê ¢Ÿø –õşì"
@7,48 Say": –‘Ÿş®ø—"
@3,31 Get A
Read
@5,39 Get B Picture '99999'
Read
@5,8 Get C Picture '999999'
Read
@8,1 Get D
Read
SLCT=2
@14,14 Prompt' øç\<ó '
@14,24 Prompt' ü¢ã“ ùã¯\<ì '
@14,40 Prompt' –“\<™ '
Menu To SLCT
Do Case
Case SLCT=2 .OR. SLCT=3
Do Case
Case QTY-B=0 .OR. QTY-B>0
Replace Part_No With RecNo(),LastSel_DT With A,Sell_QTY With B,SPrice With C,QTY With QTY-B,LS_Price With B*C,Note With AllTrim(Note)+AllTrim(D)
If QTY=0
Replace Apply With 0
Else
Replace Apply With 9
EndIf
Flush
Q=1
Case QTY-B<0
Q=0
Define Window Full From 9,3 To 15,76 Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window Full
?" ! ¢ª‘“ üõ ¤‘“÷ ü¢ø›øõ ¥ ©ş“","[",AllTrim(P1),"]","ü ùã¯ì ¢¢ã—"
@3,32 Prompt" ¢şş‘— "
Menu To Done
DeActivate Window Full
Release Windows Full
EndCase
Case SLCT=1
Q=1
EndCase
EndDo
Else
Do NotFND
EndIf
Else
SLCT=0
EndIf
EndDo
DeActivate Window Sell
Release Windows Sell
Do FuncSet
Return


Procedure Del
Do FuncNull
SLCT=2
Do While SLCT=2
Define Window Enter From 8,16 To 16,62 Title" ùã¯ì é£Ÿ " Panel NoClose NoFloat NoGrow Shadow NoZoom
Activate Window Enter
?" : ¢şş‘õ÷ ¢¤ø é£Ÿ ü¤“ ¤ ¤à÷ ¢¤øõ ùã¯ì ô‘÷"
P1=Space(23)
@ 3,12 Get P1
Read
None=2
@5,2 Prompt" øç\<ó "
@5,9 Prompt" ¢şş‘\<— "
Menu To None
DeActivate Window Enter
Release Windows Enter
Do Case
Case None=2
Locate For Part_Name=P1 All
If EOF()=.T.
Define Window NotFnd From 9,8 To 15,71 Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window NotFnd
?" ! ¢ª‘“ üõ÷ ¢ø›øõ ¤‘“÷ ¤¢","[",AllTrim(P1),"]","ü ùã¯ì"
@3,27 Prompt" ¢şş‘— "
Menu To Done
DeActivate Window NotFnd
Release Windows NotFnd
Else
Do Case
Case Apply=0
Define Window Del From 7,15 To 16,63 Title" ¢şş‘— " Panel NoClose NoFloat NoGrow Shadow NoZoom
Activate Window Del
?" : ¢ş÷î ”ş‘— ¤ # OK # ü ùõóî ¤ş¥ ¤¢‘î ¤¢ ‘ê¯ó"
DLT=Space(2)
Ok=0
Do While Ok=0
@3,1 Get DLT
Read
Do While DLT='OK' .OR. DLT='ok' .OR. DLT='Ok' .OR. DLT='oK'
SLCT=2
@6,10 Prompt' øç\<ó '
@6,18 Prompt' ü¢ã“ ùã¯\<ì ' 
@6,32 Prompt' é£\<Ÿ '
Menu To SLCT
If LastKey()=27
Ok=0
Else
Ok=1
EndIf
Do Case
Case SLCT=2 .OR. SLCT=3
Ok=1
Delete
Pack
Flush
EndCase
DLT='Ko'
EndDO
EndDO
Case Apply<>0
Define Window NotFnd From 9,11 To 15,68 Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window NotFnd
?" ¢¨¤“ ©ø¤ê“","[",AllTrim(P1),"]","–‘ã¯ì ô‘õ— ¢ş‘“"
@3,25 Prompt" ¢şş‘— "
Menu To Done
DeActivate Window NotFnd
Release Windows NotFnd
EndCase
EndIf
Case None=1
SLCT=0
EndCase
EndDo
DeActivate Window Del
Release Windows Del
Do FuncSet
Return


Procedure MLST0
Do FuncNull
SLCTCS='M0'
SLCT=2
Go Top
Do Show
Do While SLCT=2 .OR. SLCT=3
If EOF()=.F.
@17,24 Prompt' øç\<ó '
@17,33 Prompt' ü¢ã\<“ '
@17,43 Prompt' üó“\<ì '
Menu To SLCT
Do Case
Case SLCT=2
Skip +1
Do Show
Case SLCT=3
If RecNo()<>1
Skip -1
Do Show
Else
SLCT=0
EndIf
EndCase
Else
SLCT=0
EndIf
EndDO
DeActivate Window List
Release Windows List
Do FuncSet
Return


Procedure MLST1
Do FuncNull
SLCTCS='M1'
SLCT=2
Do List
Do While SLCT=2
@17,5 Prompt' øç\<ó '
@17,14 Prompt' ü¢ã\<“ '
Menu To SLCT
Do Case
Case SLCT=2
Do List
EndCase
EndDo
DeActivate Window List
Release Windows List
Do FuncSet
Return


Procedure PLST0
Do FuncNull
SLCTCS='P0'
If Sys(102)='OFF'
Define Window War From 9,29 To 15,50 Title" ”‘ " Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window War
?"  –¨ş÷ ù¢‘õ ¤ğ•‘  "
@3,7 Prompt" ¢şş‘— "
Menu To Done
DeActivate Window War
Release Windows War
Else
Define Window  Print From 9,22 To 15,56 Title" í÷‘“ ”‘ " Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window Print
None=2
?" ¢÷ ù¢‘õ ”‘ ü¤“ ‘û¢¤øî¤ ô‘õ—"
@3,10 Prompt' øç\<ó '
@3,20 Prompt' ”‘\< '
Menu To None
DeActivate Window Print
Release Windows Print
Do Case
Case None=2
Go Top
Do Show
Do While EOF()=.F.
Skip +1
Do Show
EndDo
EndCase
If None=2
DeActivate Window War
Release Windows War
DeActivate Window List
Release Windows List
Set Device To Screen
Define Window War From 9,29 To 15,50 Title" –şìêøõ " Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window War
?"  ¢ª ô‘õ— í÷‘“ ”‘"
@3,7 Prompt" ¢şş‘— "
Menu To Done
DeActivate Window War
Release Windows War
EndIf
EndIf
Return


Procedure PLST1
Do FuncNull
SLCTCS='P1'
If Sys(102)='OFF'
Define Window War From 9,29 To 15,50 Title" ”‘ " Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window War
?"  –¨ş÷ ù¢‘õ ¤ğ•‘"
@3,7 Prompt" ¢şş‘— "
Menu To Done
DeActivate Window War
Release Windows War
Else
SLCT=2
Do List
Do While SLCT=2
If EOF()=.F.
@17,24 Prompt' øç\<ó '
@17,33 Prompt' ü¢ã\<“ '
@17,43 Prompt' ”‘\< '
Menu To SLCT
Do Case
Case SLCT=2
Skip +1
Do List
Case SLCT=3
Do Show
DeActivate Window List
Release Windows List
Set Device To Screen
Do FuncSet
Return
EndCase
Else
SLCT=0
EndIf
EndDo
DeActivate Window List
Release Windows List
Set Device To Screen
EndIf
Do FuncSet
Return


Procedure FLST0
Do FuncNull
If File([Anbar1.RPT])
Erase Anbar1.RPT
EndIf
If File([Anbar0.RPT])
Rename Anbar0.RPT To Anbar1.RPT
EndIF
If File([Anbar.RPT])
Rename Anbar.RPT To Anbar0.RPT
EndIf
SLCTCS='F0'
Define Window War From 9,14 To 15,65 Title" –ş¨ó " Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window War
?" Œ ¢øª –“™  Anbar.rpt ñş‘ê ¤¢ ‘û¢¤øî¤ ô‘õ— –¨şó"
None=2
@3,4 Prompt" øç\<ó "
@3,11 Prompt" ¢şş‘\<— "
Menu To None
DeActivate Window War
Release Windows War
Do Case
Case None=2
Go Top
Do Show
Do While EOF()=.F.
Skip +1
Do Show
EndDo
EndCase
DeActivate Window War
Release Windows War
DeActivate Window List
Release Windows List
Set Device To Screen
If None=2
Define Window War From 9,29 To 15,50 Title" –şìêøõ " Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window War
?"  ¢ª ô‘õ— í÷‘“  –“™"
@3,7 Prompt" ¢şş‘— "
Menu To Done
DeActivate Window War
Release Windows War
EndIf
Do FuncSet
Return


Procedure FLST1
Do FuncNull
If File([Anbar1.RPT])
Erase Anbar1.RPT
EndIf
If File([Anbar0.RPT])
Rename Anbar0.RPT To Anbar1.RPT
EndIF
If File([Anbar.RPT])
Rename Anbar.RPT To Anbar0.RPT
EndIf
SLCTCS='F1'
Do Smart
SLCT=2
A=.T.
Do List
Do While SLCT=2
If EOF()=.F.
A=.T.
@17,24 Prompt' øç\<ó '
@17,33 Prompt' ü¢ã\<“ '
@17,43 Prompt' –“\<™ '
Menu To SLCT
Do Case
Case SLCT=2
Skip +1
Do List
Case SLCT=3
Do Show
DeActivate Window List
Release Windows List
Set Device To Screen
Do FuncSet
Return
EndCase
EndIf
EndDo
DeActivate Window List
Release Windows List
Set Device To Screen
Do FuncSet
Return


Procedure Strt
SLCTCS='$'
Do Show
@17,34 Prompt'¢şş‘\<— '
Menu To Done
DeActivate Window List
Release Windows List
Return


Procedure List
Define Window Enter From 8,13 To 16,65 Title" ùã¯ì ô‘÷ " Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window Enter
?" : ¢şş‘õ÷ ¢¤ø ü¤şğ –¨şó ü¤“ ¤ ¤à÷ ¢¤øõ ùã¯ì ô‘÷"
P1=Space(23)
@ 3,13 Get P1
Read
None=2
@5,3 Prompt" øç\<ó "
@5,10 Prompt" ¢şş‘\<— "
Menu To None
If LastKey()=27
ReTry
EndIf
DeActivate Window Enter
Release Windows Enter
If None=2
Locate For Part_Name=P1 All
If EOF()=.F.
Do Show
Else
Do NotFND
Retry
EndIf
Else
SLCT=0
EndIf
Return


Procedure Show
Do Case
Case SLCTCS='P1' .OR. SLCTCS='P0'
Set Device To Printer
Case SLCTCS='F0'
Do Smart
Set Device To File TempARPT.$$$
Case SLCTCS='F1'
If A=.T.
Set Device To File TempARPT.$$$
EndIf
EndCase
Define Window List From 2,2 To 22,77 Title" ©ş‘õ÷ " Panel NoClose NoFloat NoGrow Shadow NoZoom
Activate Window List
If SLCTCS='F0'
Define Window War From 10,27 To 14,52 Title" –¨şó –“™ " Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window War
?" .... ¢ş÷î ¤“¬ üõî ‘ê¯ó"
EndIf
Replace Part_No With RecNo()
Flush
@1,59 Say": ¢¤øî¤ ù¤‘õª"
@1,52 Say Part_NO
@1,28 Say": ùã¯ì ô‘÷"
@1,3 Say Part_Name
?
@3,64 Say": ü¢ø›øõ"
@3,57 Say QTY
?
@5,54 Say": ¢ş¤¡ öş¤¡  ş¤‘—"
@5,42 Say LastBuy_DT
@5,17 Say": ¢ş¤¡ öş¤¡ ¢Ÿø –õşì"
@5,9 Say BPrice
@6,54 Say": ¢ş¤¡ öş¤¡ ¢¢ã—"
@6,47 Say Buy_QTY
@6,17 Say": ¢ş¤¡ öş¤¡ ñî –õşì"
@6,4 Say LB_Price
?
@8,54 Say": ©ø¤ê öş¤¡  ş¤‘—"
@8,42 Say LastSel_DT
@8,17 Say": ©ø¤ê öş¤¡ ¢Ÿø –õşì"
@8,9 Say SPrice
@9,54 Say": ©ø¤ê öş¤¡ ¢¢ã—"
@9,47 Say Sell_QTY
@9,17 Say": ©ø¤ê öş¤¡ ñî –õşì"
@9,4 Say LS_Price
?
@11,63 Say": –‘Ÿş®ø—"
@12,1 Say Note
Do Case
Case SLCTCS='P0'
Define Window War From 10,27 To 14,52 Title" ”‘ " Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window War
?" .... ¢ş÷î ¤“¬ üõî ‘ê¯ó"
Case SLCTCS='F1'
If A=.T.
A=.F.
Do Smart
Retry
EndIf
EndCase
Return


Procedure Smart
Set Device To Screen
If File([TempARPT.$$$])
! Type TempARPT.$$$>>Anbar.RPT
Erase TempARPT.$$$
Flush
EndIf
Return


Procedure HardWare
Do FuncNull
Use
Define Window HRDWR From 2,2 To 22,76 Title" ü¤¥ê –¡¨ –¨— " Footer" ô—¨ş¨ üóãê ¤¥ê –¡¨ " Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window HRDWR
@0,1 Say"-----------------------------------------------------------------------"
@1,58 Say": ù¢÷¥¢¤•¥ş¤"
@1,45 Say SYS(17)
?" -----------------------------------------------------------------------"
@3,20 Say" :                        §¤—¨¢ ñ“‘ì ü ùàê‘Ÿ ö¥şõ"
@3,2 Say '–ş‘“  '+SYS(1001)
@4,20 Say" :     ¤“¤‘î ¯¨ø— ù¢ª ù¢‘ê—¨ Conventional ü ùàê‘Ÿ"
@4,2 Say '–ş‘“  '+SYS(1016)
@5,20 Say" :           ü¨¤—¨¢ ñ“‘ì Conventional ü ùàê‘Ÿ ö¥şõ"
@5,2 Say '–ş‘“  '+SYS(12)
@6,20 Say" :                      Conventional ü ùàê‘Ÿ ö¥şõ "
@6,2 Say '–ş‘“  655360'
?" -----------------------------------------------------------------------"
@8,38 Say": ¤—øş•õ‘î ¤ø—ş÷‘õ ø üîşê¤ğ –¤‘î"
@8,14 Say SYS(2006)
@9,59 Say": üóãê ü›ø¤¡"
Do Case
Case SYS(101)='SCREEN'
@9,47 Say"©ş‘õ÷ ùŸê¬"
Case SYS(101)='PRINT'
@9,52 Say"¤ğ•‘"
Case SYS(101)='FILE'
@9,51 Say"ù¢÷ø¤•"
EndCase
@9,22 Say": Console –şã®ø"
Do Case
Case SYS(100)='ON'
@9,16 Say"öªø¤"
Case SYS(100)='OFF'
@9,15 Say"©øõ‘¡"
EndCase
?" -----------------------------------------------------------------------"
@11,59 Say": ü¤‘› øş¤¢"
@11,58 Say SYS(5)
@11,47 Say": ñî ô›Ÿ"
@11,33 Say SYS(2020)+' b'
@11,16 Say": ¤—¨òî ¤û ô›Ÿ"
@11,6 Say '|'+SYS(2022)+' b'
Do Case
Case SYS(2022)='32768'
@11,1 Say 'FAT32'
Case SYS(2022)='65536'
@11,1 Say 'FAT16'
EndCase
?" -----------------------------------------------------------------------"
@13,58 Say": ¤ğ•‘ –şã®ø"
@13,45 Say SYS(102)+'ø '+SYS(13)
@13,22 Say": ¤ğ•‘ ù‘ğ¤¢"
@13,15 Say SYS(6)
?" -----------------------------------------------------------------------"
@15,60 Say": ùî“ª ¢ø›ø"
Do Case
Case NetWork()=.F.
@15,54 Say"¤ş¡"
Case NetWork()=.T.
@15,54 Say"ùó“"
EndCase
@15,22 Say": ü¤‘î ù‘ğ—¨ş ô‘÷ ø ù¤‘õª"
@15,1 Say SYS(0)
?" -----------------------------------------------------------------------"
@17,33 Prompt" ¢şş‘— "
Menu To Done
DeActivate Window HRDWR
Release Windows HRDWR
Use Anbar.DBF
Do FuncSet
Return


Procedure Options
Do FuncNull
Use Options.dbf
rESTORE fROM password.ÿÿÿ aDDITIVE
Mode=substr(Lock,1,8)
PssWrd=Space(7)
Define Window Set From 2,2 To 22,76 None NoClose NoFloat NoGrow Shadow NoZoom
Activate Window Set
@1,64 Say'–ä‘¨'
@3,52 Say': ©ş‘õ÷ ùŸê¬ áø÷'
@5,54 Say'ï÷¤ í—'
@5,42 Say'üğ÷¤'
@7,62 Say'* §ø‘õ'
@9,56 Say'* ü¨¤—¨¢ ¥õ¤'
@1,70 Say'[ ]'
@5,61 Say'( )'
@5,47 Say'( )'
@7,70 Say'[ ]'
@9,70 Say'[ ]'
SetCase=0
Clck=Clock
Mntr=Monitor
Ms=Mouse
Do While SetCase<=5
If Clck=.T.
@1,71 Prompt'²'
Else
@1,71 Prompt' '
EndIf
If Mntr=.T.
@5,62 Prompt' '
@5,48 Prompt'°'
Else
@5,62 Prompt'°'
@5,48 Prompt' '
EndIf
If Ms=.T.
@7,71 Prompt'²'
Else
@7,71 Prompt' '
EndIf
If Mode='EnablePW'
@9,71 Prompt'²'
EndIf
If Mode=' Disable'
@9,71 Prompt' '
EndIf
@2,4 Prompt' ô\<¢ '
@5,4 Prompt' –ìø\<õ '
@8,4 Prompt' ø‹ç\<ó '
Menu To SetCase
If LastKey()=27
SetCase=8
EndIf
Do Case
Case SetCase=1
If Clck=.T.
Clck=.F.
Else
Clck=.T.
EndIf
Case SetCase=2 .OR. SetCase=3
If Mntr=.T.
Mntr=.F.
Else
Mntr=.T.
EndIf
Case SetCase=4
If Ms=.T.
Ms=.F.
Else
Ms=.T.
EndIf
Case SetCase=5
Do Case
Case Mode='EnablePW'
ZZZ=0
Do ePssWrd
Case Mode=' Disable'
If SetCase=5
ZZZ=1
Do ePssWrd
EndIf
EndCase
EndCase
EndDo
DeActivate Window Set
Release Windows Set
If SetCase<>8
If Clck=.F.
Clck=.F.
Set Clock Off
Else
Clck=.T.
Set Hours To 24
Set Clock To 1,1
Set Clock On
EndIf
If Mntr=.F.
Mntr=.F.
Set Color Off
Else
Mntr=.T.
Set Color On
EndIf
If Ms=.F.
Ms=.F.
Set Mouse Off
! GMouse.com /u
Else
Ms=.T.
! GMouse.com
Set Mouse On
_DBCLICK=Rate
EndIf
If SetCase=6 .AND. Mode=' Disable'
Lock=Mode
If File([PassWord.ÿÿÿ])
Erase PassWord.ÿÿÿ
EndIf
Save To PassWord.ÿÿÿ All Like Lock
EndIf
If SetCase=6 .AND. Mode='EnablePW'
FilePW='A'
Do PWFilter
If File([PassWord.ÿÿÿ])
Erase PassWord.ÿÿÿ
EndIf
Save To PassWord.ÿÿÿ All Like Lock
EndIf
Replace Clock With Clck,Monitor With Mntr,Mouse With Ms
If Ms=.T.
Do MouseRate
Replace Rate With _DBCLICK
Flush
EndIf
EndIf
If SetCase=7
If Ms=.T.
Do MouseRate
EndIf
EndIf
Use Anbar.dbf
Do FuncSet
Return


Procedure ePssWrd
Z=0
PssWrd=Space(7)
Define Window Enter From 11,44 To 12,50 None NoClose NoFloat NoGrow NoZoom
Activate Window Enter
Restore From PassWord.ÿÿÿ Additive
If SUBSTR(Lock,1,8)='EnablePW'
Wait'¢ş÷î ¢¤ø ¤ ü‹óãê ¥õ¤' NoWait Window
@0,0 Get PssWrd
Read
If LastKey()=27
DeActivate Window Enter
Release Windows Enter
Return
EndIf
FilePW='A'
PssWrd=Upper(Alltrim(PssWrd))
Do PWFilter
Current=Lock
Restore From PassWord.ÿÿÿ Additive
If Lock<>Current .OR. Current<>Lock
Do ePssWrd
Else
If ZZZ=0
Mode=' Disable'
DeActivate Window Enter
Release Windows Enter
Z=1
EndIf
EndIf
EndIf
If Z=1
Return
EndIf
ZXC='\'
Do While ZXC='\'
Wait'¢ş÷î ¢¤ø ¤ ¤ø‹“ä ¥õ¤' NoWait Window
PssWrd=Space(7)
@0,0 Get PssWrd
Read
If LastKey()=27
DeActivate Window Enter
Release Windows Enter
Z=1
Return
EndIf
ReEnter=PssWrd
FilePW=''
Do PWFilter
EndDo
PssWrd=Space(7)
Wait'¢ş÷î ¢şş‘— ¤ ¤ø“ä ¥õ¤' NoWait Window
@0,0 Get PssWrd
Read
If LastKey()=27
DeActivate Window Enter
Release Windows Enter
Z=1
Return
EndIf
If PssWrd=ReEnter
?""
Wait'¢ª ñ‘ãê ¤ø“ä ¥õ¤' Window
Mode='EnablePW'
Z=1
Else
?""
Wait'¢ª÷ ¢şş‘— ¤ø“ä ¥õ¤' Window
Z=1
EndIf
DeActivate Window Enter
Release Windows Enter
Return


Procedure MouseRate
Define Window SetMs From 10,11 To 13,67 Title" §ø‘õ Double Click –ä¤¨ ôşà÷— " Panel NoClose NoFloat NoGrow Shadow NoZoom
Activate Window SetMs
Do Case
Case _DBCLICK=.05
Done=110
Case _DBCLICK=.1
Done=109
Case _DBCLICK=.15
Done=108
Case _DBCLICK=.2
Done=107
Case _DBCLICK=.25
Done=106
Case _DBCLICK=.3
Done=105
Case _DBCLICK=.35
Done=104
Case _DBCLICK=.4
Done=103
Case _DBCLICK=.45
Done=102
Case _DBCLICK=.5
Done=101
Case _DBCLICK=.55
Done=100
Case _DBCLICK=.6
Done=99
Case _DBCLICK=.65
Done=98
Case _DBCLICK=.7
Done=97
Case _DBCLICK=.75
Done=96
Case _DBCLICK=.8
Done=95
Case _DBCLICK=.85
Done=94
Case _DBCLICK=.9
Done=93
Case _DBCLICK=.95
Done=92
Case _DBCLICK=1
Done=91
Case _DBCLICK=1.05
Done=90
Case _DBCLICK=1.1
Done=89
Case _DBCLICK=1.15
Done=88
Case _DBCLICK=1.2
Done=87
Case _DBCLICK=1.25
Done=86
Case _DBCLICK=1.3
Done=85
Case _DBCLICK=1.35
Done=84
Case _DBCLICK=1.4
Done=83
Case _DBCLICK=1.45
Done=82
Case _DBCLICK=1.5
Done=81
Case _DBCLICK=1.55
Done=80
Case _DBCLICK=1.6
Done=79
Case _DBCLICK=1.65
Done=78
Case _DBCLICK=1.7
Done=77
Case _DBCLICK=1.75
Done=76
Case _DBCLICK=1.8
Done=75
Case _DBCLICK=1.85
Done=74
Case _DBCLICK=1.9
Done=73
Case _DBCLICK=1.95
Done=72
Case _DBCLICK=2
Done=71
Case _DBCLICK=2.05
Done=70
Case _DBCLICK=2.1
Done=69
Case _DBCLICK=2.15
Done=68
Case _DBCLICK=2.2
Done=67
Case _DBCLICK=2.25
Done=66
Case _DBCLICK=2.3
Done=65
Case _DBCLICK=2.35
Done=64
Case _DBCLICK=2.4
Done=63
Case _DBCLICK=2.45
Done=62
Case _DBCLICK=2.5
Done=61
Case _DBCLICK=2.55
Done=60
Case _DBCLICK=2.6
Done=59
Case _DBCLICK=2.65
Done=58
Case _DBCLICK=2.7
Done=57
Case _DBCLICK=2.75
Done=56
Case _DBCLICK=2.8
Done=55
Case _DBCLICK=2.85
Done=54
Case _DBCLICK=2.9
Done=53
Case _DBCLICK=2.95
Done=52
Case _DBCLICK=3
Done=51
Case _DBCLICK=3.05
Done=50
Case _DBCLICK=3.1
Done=49
Case _DBCLICK=3.15
Done=48
Case _DBCLICK=3.2
Done=47
Case _DBCLICK=3.25
Done=46
Case _DBCLICK=3.3
Done=45
Case _DBCLICK=3.35
Done=44
Case _DBCLICK=3.4
Done=43
Case _DBCLICK=3.45
Done=42
Case _DBCLICK=3.5
Done=41
Case _DBCLICK=3.55
Done=40
Case _DBCLICK=3.6
Done=39
Case _DBCLICK=3.65
Done=38
Case _DBCLICK=3.7
Done=37
Case _DBCLICK=3.75
Done=36
Case _DBCLICK=3.8
Done=35
Case _DBCLICK=3.85
Done=34
Case _DBCLICK=3.9
Done=33
Case _DBCLICK=3.95
Done=32
Case _DBCLICK=4
Done=31
Case _DBCLICK=4.05
Done=30
Case _DBCLICK=4.1
Done=29
Case _DBCLICK=4.15
Done=28
Case _DBCLICK=4.2
Done=27
Case _DBCLICK=4.25
Done=26
Case _DBCLICK=4.3
Done=25
Case _DBCLICK=4.35
Done=24
Case _DBCLICK=4.4
Done=23
Case _DBCLICK=4.45
Done=22
Case _DBCLICK=4.5
Done=21
Case _DBCLICK=4.55
Done=20
Case _DBCLICK=4.6
Done=19
Case _DBCLICK=4.65
Done=18
Case _DBCLICK=4.7
Done=17
Case _DBCLICK=4.75
Done=16
Case _DBCLICK=4.8
Done=15
Case _DBCLICK=4.85
Done=14
Case _DBCLICK=4.9
Done=13
Case _DBCLICK=4.95
Done=12
Case _DBCLICK=5
Done=11
Case _DBCLICK=5.05
Done=10
Case _DBCLICK=5.1
Done=9
Case _DBCLICK=5.15
Done=8
Case _DBCLICK=5.2
Done=7
Case _DBCLICK=5.25
Done=6
Case _DBCLICK=5.3
Done=5
Case _DBCLICK=5.35
Done=4
Case _DBCLICK=5.4
Done=3
Case _DBCLICK=5.45
Done=2
Case _DBCLICK=5.5
Done=1
EndCase
@0,0 Prompt' '
@0,1 Prompt' '
@0,2 Prompt' '
@0,3 Prompt' '
@0,4 Prompt' '
@0,5 Prompt' '
@0,6 Prompt' '
@0,7 Prompt' '
@0,8 Prompt' '
@0,9 Prompt' '
@0,10 Prompt' '
@0,11 Prompt' '
@0,12 Prompt' '
@0,13 Prompt' '
@0,14 Prompt' '
@0,15 Prompt' '
@0,16 Prompt' '
@0,17 Prompt' '
@0,18 Prompt' '
@0,19 Prompt' '
@0,20 Prompt' '
@0,21 Prompt' '
@0,22 Prompt' '
@0,23 Prompt' '
@0,24 Prompt' '
@0,25 Prompt' '
@0,26 Prompt' '
@0,27 Prompt' '
@0,28 Prompt' '
@0,29 Prompt' '
@0,30 Prompt' '
@0,31 Prompt' '
@0,32 Prompt' '
@0,33 Prompt' '
@0,34 Prompt' '
@0,35 Prompt' '
@0,36 Prompt' '
@0,37 Prompt' '
@0,38 Prompt' '
@0,39 Prompt' '
@0,40 Prompt' '
@0,41 Prompt' '
@0,42 Prompt' '
@0,43 Prompt' '
@0,44 Prompt' '
@0,45 Prompt' '
@0,46 Prompt' '
@0,47 Prompt' '
@0,48 Prompt' '
@0,49 Prompt' '
@0,50 Prompt' '
@0,51 Prompt' '
@0,52 Prompt' '
@0,53 Prompt' '
@0,54 Prompt' '
@1,0 Prompt' '
@1,1 Prompt' '
@1,2 Prompt' '
@1,3 Prompt' '
@1,4 Prompt' '
@1,5 Prompt' '
@1,6 Prompt' '
@1,7 Prompt' '
@1,8 Prompt' '
@1,9 Prompt' '
@1,10 Prompt' '
@1,11 Prompt' '
@1,12 Prompt' '
@1,13 Prompt' '
@1,14 Prompt' '
@1,15 Prompt' '
@1,16 Prompt' '
@1,17 Prompt' '
@1,18 Prompt' '
@1,19 Prompt' '
@1,20 Prompt' '
@1,21 Prompt' '
@1,22 Prompt' '
@1,23 Prompt' '
@1,24 Prompt' '
@1,25 Prompt' '
@1,26 Prompt' '
@1,27 Prompt' '
@1,28 Prompt' '
@1,29 Prompt' '
@1,30 Prompt' '
@1,31 Prompt' '
@1,32 Prompt' '
@1,33 Prompt' '
@1,34 Prompt' '
@1,35 Prompt' '
@1,36 Prompt' '
@1,37 Prompt' '
@1,38 Prompt' '
@1,39 Prompt' '
@1,40 Prompt' '
@1,41 Prompt' '
@1,42 Prompt' '
@1,43 Prompt' '
@1,44 Prompt' '
@1,45 Prompt' '
@1,46 Prompt' '
@1,47 Prompt' '
@1,48 Prompt' '
@1,49 Prompt' '
@1,50 Prompt' '
@1,51 Prompt' '
@1,52 Prompt' '
@1,53 Prompt' '
@1,54 Prompt' '
Menu To Done
Do Case
Case Done=110
_DBCLICK=.05
Case Done=109
_DBCLICK=.1
Case Done=108
_DBCLICK=.15
Case Done=107
_DBCLICK=.2
Case Done=106
_DBCLICK=.25
Case Done=105
_DBCLICK=.3
Case Done=104
_DBCLICK=.35
Case Done=103
_DBCLICK=.4
Case Done=102
_DBCLICK=.45
Case Done=101
_DBCLICK=.5
Case Done=100
_DBCLICK=.55
Case Done=99
_DBCLICK=.6
Case Done=98
_DBCLICK=.65
Case Done=97
_DBCLICK=.7
Case Done=96
_DBCLICK=.75
Case Done=95
_DBCLICK=.8
Case Done=94
_DBCLICK=.85
Case Done=93
_DBCLICK=.9
Case Done=92
_DBCLICK=.95
Case Done=91
_DBCLICK=1
Case Done=90
_DBCLICK=1.05
Case Done=89
_DBCLICK=1.1
Case Done=88
_DBCLICK=1.15
Case Done=87
_DBCLICK=1.2
Case Done=86
_DBCLICK=1.25
Case Done=85
_DBCLICK=1.3
Case Done=84
_DBCLICK=1.35
Case Done=83
_DBCLICK=1.4
Case Done=82
_DBCLICK=1.45
Case Done=81
_DBCLICK=1.5
Case Done=80
_DBCLICK=1.55
Case Done=79
_DBCLICK=1.6
Case Done=78
_DBCLICK=1.65
Case Done=77
_DBCLICK=1.7
Case Done=76
_DBCLICK=1.75
Case Done=75
_DBCLICK=1.8
Case Done=74
_DBCLICK=1.85
Case Done=73
_DBCLICK=1.9
Case Done=72
_DBCLICK=1.95
Case Done=71
_DBCLICK=2
Case Done=70
_DBCLICK=2.05
Case Done=69
_DBCLICK=2.1
Case Done=68
_DBCLICK=2.15
Case Done=67
_DBCLICK=2.2
Case Done=66
_DBCLICK=2.25
Case Done=65
_DBCLICK=2.3
Case Done=64
_DBCLICK=2.35
Case Done=63
_DBCLICK=2.4
Case Done=62
_DBCLICK=2.45
Case Done=61
_DBCLICK=2.5
Case Done=60
_DBCLICK=2.55
Case Done=59
_DBCLICK=2.6
Case Done=58
_DBCLICK=2.65
Case Done=57
_DBCLICK=2.7
Case Done=56
_DBCLICK=2.75
Case Done=55
_DBCLICK=2.8
Case Done=54
_DBCLICK=2.85
Case Done=53
_DBCLICK=2.9
Case Done=52
_DBCLICK=2.95
Case Done=51
_DBCLICK=3
Case Done=50
_DBCLICK=3.05
Case Done=49
_DBCLICK=3.1
Case Done=48
_DBCLICK=3.15
Case Done=47
_DBCLICK=3.2
Case Done=46
_DBCLICK=3.25
Case Done=45
_DBCLICK=3.3
Case Done=44
_DBCLICK=3.35
Case Done=43
_DBCLICK=3.4
Case Done=42
_DBCLICK=3.45
Case Done=41
_DBCLICK=3.5
Case Done=40
_DBCLICK=3.55
Case Done=39
_DBCLICK=3.6
Case Done=38
_DBCLICK=3.65
Case Done=37
_DBCLICK=3.7
Case Done=36
_DBCLICK=3.75
Case Done=35
_DBCLICK=3.8
Case Done=34
_DBCLICK=3.85
Case Done=33
_DBCLICK=3.9
Case Done=32
_DBCLICK=3.95
Case Done=31
_DBCLICK=4
Case Done=30
_DBCLICK=4.05
Case Done=29
_DBCLICK=4.1
Case Done=28
_DBCLICK=4.15
Case Done=27
_DBCLICK=4.2
Case Done=26
_DBCLICK=4.25
Case Done=25
_DBCLICK=4.3
Case Done=24
_DBCLICK=4.35
Case Done=23
_DBCLICK=4.4
Case Done=22
_DBCLICK=4.45
Case Done=21
_DBCLICK=4.5
Case Done=20
_DBCLICK=4.55
Case Done=19
_DBCLICK=4.6
Case Done=18
_DBCLICK=4.65
Case Done=17
_DBCLICK=4.7
Case Done=16
_DBCLICK=4.75
Case Done=15
_DBCLICK=4.8
Case Done=14
_DBCLICK=4.85
Case Done=13
_DBCLICK=4.9
Case Done=12
_DBCLICK=4.95
Case Done=11
_DBCLICK=5
Case Done=10
_DBCLICK=5.05
Case Done=9
_DBCLICK=5.1
Case Done=8
_DBCLICK=5.15
Case Done=7
_DBCLICK=5.2
Case Done=6
_DBCLICK=5.25
Case Done=5
_DBCLICK=5.3
Case Done=4
_DBCLICK=5.35
Case Done=3
_DBCLICK=5.4
Case Done=2
_DBCLICK=5.45
Case Done=1
_DBCLICK=5.5
EndCase
DeActivate Window SetMs
Release Windows SetMs
Return


Procedure PWFilter
PssWrd=Upper(Alltrim(PssWrd))
Do Case
Case Len(Alltrim(Psswrd))=1
ASD1=substr(PssWrd,1,1)
ZXC=ASD1
Do Encoder_Decoder
ASD1=ZXC
If FilePW='A'
Lock='EnablePW'+ASD1
Return
EndIf
Case Len(Psswrd)=2
ASD1=substr(PssWrd,1,1)
ZXC=ASD1
Do Encoder_Decoder
ASD1=ZXC
ASD2=substr(PssWrd,2,1)
ZXC=ASD2
Do Encoder_Decoder
ASD2=ZXC
If FilePW='A'
Lock='EnablePW'+ASD1+ASD2
Return
EndIf
Case Len(Psswrd)=3
ASD1=substr(PssWrd,1,1)
ZXC=ASD1
Do Encoder_Decoder
ASD1=ZXC
ASD2=substr(PssWrd,2,1)
ZXC=ASD2
Do Encoder_Decoder
ASD2=ZXC
ASD3=substr(PssWrd,3,1)
ZXC=ASD3
Do Encoder_Decoder
ASD3=ZXC
If FilePW='A'
Lock='EnablePW'+ASD1+ASD2+ASD3
Return
EndIf
Case Len(Psswrd)=4
ASD1=substr(PssWrd,1,1)
ZXC=ASD1
Do Encoder_Decoder
ASD1=ZXC
ASD2=substr(PssWrd,2,1)
ZXC=ASD2
Do Encoder_Decoder
ASD2=ZXC
ASD3=substr(PssWrd,3,1)
ZXC=ASD3
Do Encoder_Decoder
ASD3=ZXC
ASD4=substr(PssWrd,4,1)
ZXC=ASD4
Do Encoder_Decoder
ASD4=ZXC
If FilePW='A'
Lock='EnablePW'+ASD1+ASD2+ASD3+ASD4
Return
EndIf
Case Len(Psswrd)=5
ASD1=substr(PssWrd,1,1)
ZXC=ASD1
Do Encoder_Decoder
ASD1=ZXC
ASD2=substr(PssWrd,2,1)
ZXC=ASD2
Do Encoder_Decoder
ASD2=ZXC
ASD3=substr(PssWrd,3,1)
ZXC=ASD3
Do Encoder_Decoder
ASD3=ZXC
ASD4=substr(PssWrd,4,1)
ZXC=ASD4
Do Encoder_Decoder
ASD4=ZXC
ASD5=substr(PssWrd,5,1)
ZXC=ASD5
Do Encoder_Decoder
ASD5=ZXC
If FilePW='A'
Lock='EnablePW'+ASD1+ASD2+ASD3+ASD4+ASD5
Return
EndIf
Case Len(Psswrd)=6
ASD1=substr(PssWrd,1,1)
ZXC=ASD1
Do Encoder_Decoder
ASD1=ZXC
ASD2=substr(PssWrd,2,1)
ZXC=ASD2
Do Encoder_Decoder
ASD2=ZXC
ASD3=substr(PssWrd,3,1)
ZXC=ASD3
Do Encoder_Decoder
ASD3=ZXC
ASD4=substr(PssWrd,4,1)
ZXC=ASD4
Do Encoder_Decoder
ASD4=ZXC
ASD5=substr(PssWrd,5,1)
ZXC=ASD5
Do Encoder_Decoder
ASD5=ZXC
ASD6=substr(PssWrd,6,1)
ZXC=ASD6
Do Encoder_Decoder
ASD6=ZXC
If FilePW='A'
Lock='EnablePW'+ASD1+ASD2+ASD3+ASD4+ASD5+ASD6
Return
EndIf
Case Len(Psswrd)=7
ASD1=substr(PssWrd,1,1)
ZXC=ASD1
Do Encoder_Decoder
ASD1=ZXC
ASD2=substr(PssWrd,2,1)
ZXC=ASD2
Do Encoder_Decoder
ASD2=ZXC
ASD3=substr(PssWrd,3,1)
ZXC=ASD3
Do Encoder_Decoder
ASD3=ZXC
ASD4=substr(PssWrd,4,1)
ZXC=ASD4
Do Encoder_Decoder
ASD4=ZXC
ASD5=substr(PssWrd,5,1)
ZXC=ASD5
Do Encoder_Decoder
ASD5=ZXC
ASD6=substr(PssWrd,6,1)
ZXC=ASD6
Do Encoder_Decoder
ASD6=ZXC
ASD7=substr(PssWrd,7,1)
ZXC=ASD7
Do Encoder_Decoder
ASD7=ZXC
If FilePW='A'
Lock='EnablePW'+ASD1+ASD2+ASD3+ASD4+ASD5+ASD6+ASD7
Return
EndIf
OtherWise
Lock='Locked'
EndCase
Return

Procedure EnCoder_DeCoder
Do Case
Case ZXC='0'
ZXC='11011110'
Case ZXC='1'
ZXC='11011111'
Case ZXC='2'
ZXC='11011101'
Case ZXC='3'
ZXC='11011100'
Case ZXC='4'
ZXC='11010100'
Case ZXC='5'
ZXC='11010101'
Case ZXC='6'
ZXC='11010111'
Case ZXC='7'
ZXC='11010110'
Case ZXC='8'
ZXC='11010010'
Case ZXC='9'
ZXC='11010011'
Case ZXC='A'
ZXC='11110111'
Case ZXC='B'
ZXC='11110101'
Case ZXC='C'
ZXC='11110100'
Case ZXC='D'
ZXC='11111100'
Case ZXC='E'
ZXC='11111101'
Case ZXC='F'
ZXC='11111111'
Case ZXC='G'
ZXC='11111110'
Case ZXC='H'
ZXC='11111010'
Case ZXC='I'
ZXC='11111011'
Case ZXC='J'
ZXC='11111001'
Case ZXC='K'
ZXC='11111000'
Case ZXC='L'
ZXC='11101000'
Case ZXC='M'
ZXC='11101001'
Case ZXC='N'
ZXC='11101011'
Case ZXC='O'
ZXC='11101010'
Case ZXC='P'
ZXC='11101110'
Case ZXC='Q'
ZXC='11101111'
Case ZXC='R'
ZXC='11101101'
Case ZXC='S'
ZXC='11101100'
Case ZXC='T'
ZXC='11100100'
Case ZXC='U'
ZXC='11100101'
Case ZXC='V'
ZXC='11100111'
Case ZXC='W'
ZXC='11100110'
Case ZXC='X'
ZXC='11100010'
Case ZXC='Y'
ZXC='11100011'
Case ZXC='Z'
ZXC='11100001'
OtherWise
?""
Wait 'ù¢ª ¢¤ø ¥‘›õ¤şè ¤—î¤‘î' Window
ZXC='\'
EndCase
Return


Procedure Help
Do FuncNull
Define Window HLP From 4,24 To 20,54 Title" ‘û¢şóî éş‘àø " Footer" íõî " Panel NoClose NoFloat NoGrow Shadow NoZoom
Activate Window HLP
@0,0 Say'ÉÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»'
?'º ¢şóî º   ¢¤îóõä          º'
?'ÌÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹'
?'º  F1  º        ... ù¤‘“¤¢ º'
?'º  F2  º       üîõî –‘äò¯ º'
?'º  F3  º        –‘ã¯ì –¨şó º'
?'º  F4  º     üõ—¨ş¨ –‘äò¯ º'
?'º  F5  º ¢ş¢› ùã¯ì ô‘÷ –“™ º'
?'º  F6  º        –‘ã¯ì ¢ş¤¡ º'
?'º  F7  º        –‘ã¯ì ©ø¤ê º'
?'º  F8  º      ùã¯ì ô‘÷ é£Ÿ º'
?'º  F9  º           –¤şşç— º'
?'º  F10 º    ùõ‘÷¤“ ¥ šø¤¡ º'
?'ÈÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼'
@14,11 Prompt" ¢şş‘— "
Menu To Done
DeActivate Window HLP
Release Windows HLP
Do FuncSet
Return


Procedure About
Do FuncNull
Define Window ABT From 8,22 To 16,56 Title" ùõ‘÷¤“ ù¤‘“¤¢ " Footer" ü¨şø÷ ùõ‘÷¤“ " Double NoClose NoFloat NoGrow Shadow NoZoom
Activate Window ABT
@2,8 Say "ü‘“‘“ ë¢‘¬ ¢õŸõ"
@5,13 Prompt" ¢şş‘— "
Menu To Non
DeActivate Window ABT
Release Windows ABT
Do FuncSet
Return