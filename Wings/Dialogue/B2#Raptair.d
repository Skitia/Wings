BEGIN ~B2#Rapt~

IF ~NumTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @0
  = @1
  = @2
  = @3
  = @4
  IF ~~ THEN EXTERN ~B2#COMW1~ 1
END

BEGIN ~B2#COMW1~

IF ~Global("B2#Rapt","GLOBAL",0)
~ THEN BEGIN 0
  SAY @5
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @6
  IF ~~ THEN EXTERN ~B2#Rapt~ 1
END

APPEND B2#Rapt
IF ~~ THEN BEGIN 1
  SAY @7
   = @8
   = @9
  IF ~~ THEN EXTERN ~B2#COMW1~ 2
END
END

APPEND B2#COMW1
IF ~~ THEN BEGIN 2
  SAY @10
  IF ~~ THEN EXTERN ~B2#Rapt~ 2
END
END

APPEND B2#Rapt
IF ~~ THEN BEGIN 2
  SAY @11
  = @12
  IF ~~ THEN GOTO 2A
END

IF ~~ THEN BEGIN 2A
  SAY @13
  IF ~~ THEN EXTERN ~B2#COMM1~ 1
END
END

INTERJECT B2#Rapt 2A B2#RapAer
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @14
END B2#COMM1 1

BEGIN ~B2#COMM1~

IF ~Global("B2#Rapt","GLOBAL",0)
~ THEN BEGIN 0
  SAY @15
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @16
  IF ~~ THEN EXTERN ~B2#Rapt~ 3
END

APPEND B2#Rapt
IF ~~ THEN BEGIN 3
  SAY @17
  = @18
  = @19
  IF ~~ THEN EXTERN ~B2#COMM1~ 2
END
END

APPEND B2#COMM1
IF ~~ THEN BEGIN 2
  SAY @20
  IF ~~ THEN EXTERN ~B2#Rapt~ 4
END
END

APPEND B2#Rapt
IF ~~ THEN BEGIN 4
  SAY @21
  IF ~~ THEN EXTERN ~B2#COMM1~ 3
END
END

APPEND B2#COMM1
IF ~~ THEN BEGIN 3
  SAY @22
  IF ~~ THEN EXTERN ~B2#Rapt~ 5
END
END

APPEND B2#Rapt
IF ~~ THEN BEGIN 5
  SAY @23
   = @24
  = @13
  IF ~~ THEN EXTERN ~B2#COMM2~ 1
END
END

BEGIN ~B2#COMM2~

IF ~Global("B2#Rapt","GLOBAL",2)
~ THEN BEGIN 0A
  SAY @25
   = @26
  IF ~~ THEN EXTERN ~B2#COMM1~ 5
END

IF ~Global("B2#Rapt","GLOBAL",0)
~ THEN BEGIN 0
  SAY @27
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @28
  IF ~~ THEN EXTERN ~B2#Rapt~ 6
END

APPEND B2#Rapt
IF ~~ THEN BEGIN 6
  SAY @29
  IF ~~ THEN EXTERN ~B2#COMM2~ 2
END
END

APPEND B2#COMM2
IF ~~ THEN BEGIN 2
  SAY @30
  IF ~~ THEN EXTERN ~B2#Rapt~ 7
END
END

APPEND B2#Rapt
IF ~~ THEN BEGIN 7
  SAY @31
  IF ~~ THEN EXTERN ~B2#COMM2~ 3
END
END

APPEND B2#COMM2
IF ~~ THEN BEGIN 3
  SAY @32
  IF ~~ THEN EXTERN ~B2#Rapt~ 8
END
END

APPEND B2#Rapt
IF ~~ THEN BEGIN 8
  SAY @33
  = @34
  = @35
  IF ~~ THEN DO ~SetGlobal("B2#RapEnc","GLOBAL",1)
~ EXIT
END

IF ~Global("B2#RapEnc","GLOBAL",1)
~ THEN BEGIN 9
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 10
  IF ~~ THEN REPLY @38 GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @39
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 10
  IF ~~ THEN REPLY @42 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @43
  IF ~~ THEN REPLY @41 GOTO 10
  IF ~~ THEN REPLY @44 GOTO 13
  IF ~~ THEN REPLY @45 GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @46
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14
  SAY @47
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 15
  SAY @48
   =  @49
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @50
  IF ~~ THEN DO ~~ EXIT
END
END

INTERJECT B2#Rapt 9 B2#RapAer1
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @51
  == B2#Rapt IF ~IsValidForPartyDialog("AERIE")~ THEN
    @52
  = @53
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @54
  = @55
  == B2#Rapt IF ~IsValidForPartyDialog("AERIE")~ THEN
    @56
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @57
  == B2#Rapt IF ~IsValidForPartyDialog("AERIE")~ THEN
    @58
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @59
  == B2#Rapt IF ~IsValidForPartyDialog("AERIE")~ THEN
    @60
  = @61
  = @62
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @63
  == B2#Rapt IF ~IsValidForPartyDialog("AERIE")~ THEN
    @64
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @65
END B2#Rapt 17

APPEND B2#Rapt
IF ~~ THEN BEGIN 17
  SAY @66
   = @67
   = @68
  IF ~~ THEN EXTERN ~AERIEJ~ B2#RapAer2
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#RapAer2
  SAY @69
  IF ~~ THEN DO ~SetGlobal("B2#RapEnc","GLOBAL",2)
~ EXIT
END
END

APPEND B2#Rapt
IF ~Global("B2#RapEnc","GLOBAL",2)
~ THEN BEGIN 18
  SAY @70
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global("B2#RapEnc","GLOBAL",3)
~ THEN BEGIN 19
  SAY @71
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @39
  IF ~~ THEN DO ~~ EXIT
END
END

INTERJECT B2#Rapt 19 B2#RapAer3
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @72
  == B2#Rapt IF ~IsValidForPartyDialog("AERIE")~ THEN
    @73
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @74
  == B2#Rapt IF ~IsValidForPartyDialog("AERIE")~ THEN
    @75
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @76
  = @77
  == B2#Rapt IF ~IsValidForPartyDialog("AERIE")~ THEN
    @78
  = @79
END AERIEJ B2#RapAer4

APPEND AERIEJ
IF ~~ THEN BEGIN B2#RapAer4
  SAY @80
   = @81
  IF ~~ THEN EXTERN ~B2#COMW1~ 3
END
END

APPEND B2#COMW1
IF ~~ THEN BEGIN 3
  SAY @82
  IF ~~ THEN EXTERN ~B2#Rapt~ 21
END
END

APPEND B2#Rapt
IF ~~ THEN BEGIN 21
  SAY @83
   = @84
   = @85
   = @86
   = @87
  IF ~~ THEN EXTERN ~AERIEJ~ B2#RapAer5
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#RapAer5
  SAY @88
  IF ~~ THEN EXTERN ~B2#Rapt~ 22
END
END

APPEND B2#Rapt
IF ~~ THEN BEGIN 22
  SAY @89
  IF ~~ THEN EXTERN ~AERIEJ~ B2#RapAer6
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#RapAer6
  SAY @90
  IF ~~ THEN EXTERN ~B2#Phil~ 1
END
END

BEGIN ~B2#Phil~

IF ~Global("B2#PHIL","GLOBAL",2)
~ THEN BEGIN 0A
  SAY @91
  IF ~~ THEN EXTERN ~AERIEJ~ B2#PhilAer2
END

IF ~Global("B2#PHIL","GLOBAL",0)
~ THEN BEGIN 0
  SAY @92
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @93
  IF ~~ THEN EXTERN ~B2#Kath~ 1
END

BEGIN ~B2#Kath~

IF ~Global("B2#Rapt","GLOBAL",0)
~ THEN BEGIN 0
  SAY @94
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @95
  = @96
  IF ~~ THEN EXTERN ~AERIEJ~ B2#PhilAer
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#PhilAer
  SAY @97
  IF ~~ THEN EXTERN ~B2#Rapt~ 23
END
END

APPEND B2#Rapt
IF ~~ THEN BEGIN 23
  SAY @98
   = @99
   = @100
  IF ~~ THEN EXTERN ~B2#Phil~ 2
END
END

APPEND B2#Phil
IF ~~ THEN BEGIN 2
  SAY @101
  IF ~~ THEN EXTERN ~B2#Rapt~ 24
END
END

APPEND B2#Rapt
IF ~~ THEN BEGIN 24
  SAY @102
  IF ~~ THEN EXTERN ~AERIEJ~ B2#PhilAer1
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#PhilAer1
  SAY @103
  = @104
  IF ~~ THEN DO ~SetGlobal("B2#PHIL","GLOBAL",1)
~ EXIT
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#PhilAer2
  SAY @105
  IF ~~ THEN EXTERN ~B2#Kath~ 2
END
END

APPEND B2#Kath
IF ~~ THEN BEGIN 2
  SAY @106
  IF ~~ THEN EXTERN ~AERIEJ~ B2#PhilAer3
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#PhilAer3
  SAY @107
   = @108
   = @109
  IF ~~ THEN EXTERN ~B2#COMM1~ 4
END
END

APPEND B2#COMM1
IF ~~ THEN BEGIN 4
  SAY @110
  IF ~~ THEN EXTERN ~B2#Rapt~ 25
END
END

APPEND B2#Rapt
IF ~~ THEN BEGIN 25
  SAY @111
   = @112
   = @113
  IF ~~ THEN EXTERN ~AERIEJ~ B2#RapAer7
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#RapAer7
  SAY @114
  IF ~~ THEN EXTERN ~B2#Rapt~ 26
END
END

APPEND B2#Rapt
IF ~~ THEN BEGIN 26
  SAY @115
  IF ~~ THEN DO ~CreateVisualEffectObject("SPCLOUD2",Myself)
SetGlobal("B2#Rapt","GLOBAL",1)
SetGlobal("B2#RapEnc","GLOBAL",4)
JumpToPoint([920.1645])
~ EXIT
END
END

APPEND B2#COMM1
IF ~~ THEN BEGIN 5
  SAY @116
   = @117
  IF ~~ THEN EXTERN ~B2#COMM2~ 5
END
END

APPEND B2#COMM2
IF ~~ THEN BEGIN 5
  SAY @118
  IF ~~ THEN EXTERN ~B2#COMM1~ 6
END
END

APPEND B2#COMM1
IF ~~ THEN BEGIN 6
  SAY @119
  IF ~~ THEN EXTERN ~AERIEJ~ B2#RapAer8
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#RapAer8
  SAY @120
   = @121
  IF ~~ THEN REPLY @122 GOTO B2#RapAer9
  IF ~~ THEN REPLY @123 GOTO B2#RapAer10
  IF ~~ THEN REPLY @124 GOTO B2#RapAer11
END

IF ~~ THEN BEGIN B2#RapAer9
  SAY @125
   = @126
   = @127
   = @128
  IF ~~ THEN GOTO B2#RapAer12
END

IF ~~ THEN BEGIN B2#RapAer10
  SAY @129
   = @128
  IF ~~ THEN GOTO B2#RapAer12
END

IF ~~ THEN BEGIN B2#RapAer11
  SAY @130
   = @131
   = @132
  IF ~~ THEN GOTO B2#RapAer12
END

IF ~~ THEN BEGIN B2#RapAer12
  SAY @133
  IF ~~ THEN DO ~SetGlobal("B2#Rapt","GLOBAL",2)
~ EXIT
END
END

APPEND B2#Rapt
IF ~Global("B2#Rapt","GLOBAL",2)
~ THEN BEGIN 27
  SAY @134
   = @135
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @136
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @137
   = @138
   = @139
  IF ~~ THEN DO ~CreateVisualEffectObject("SPCLOUD2",Myself)
CreateCreature("ELAIR01",[1015.1640],0)
CreateCreature("ELAIR01",[910.1740],12)
CreateCreature("B2#PHNX",[-1.-1],14)
CreateVisualEffectObject("SPFLSRIN","B2#PHNX")
SetGlobal("B2#Rapt","GLOBAL",3)
DestroySelf()
~ EXIT
END
END

INTERJECT B2#Rapt 27 B2#RapAer13
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @140
  == B2#Rapt IF ~IsValidForPartyDialog("AERIE")~ THEN
    @141
  = @142
  = @143
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @144
  = @145 
  == B2#Rapt IF ~IsValidForPartyDialog("AERIE")~ THEN
    @146
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @147
  == B2#Rapt IF ~IsValidForPartyDialog("AERIE")~ THEN
    @148
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @149
  == B2#Rapt IF ~IsValidForPartyDialog("AERIE")~ THEN
    @150
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @151
  == B2#Rapt IF ~IsValidForPartyDialog("AERIE")~ THEN
    @152
  = @153
  = @154
  = @155
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @156
  = @157
  == B2#Rapt IF ~IsValidForPartyDialog("AERIE")~ THEN
    @158
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @159
  = @160
END B2#Rapt 29

APPEND AERIEJ
IF ~Global("B2#Rapt","GLOBAL",3)
~ THEN BEGIN B2#RapAer14
  SAY @161
   = @162
  IF ~~ THEN REPLY @163 GOTO B2#RapAer15
  IF ~~ THEN REPLY @164 GOTO B2#RapAer16
  IF ~~ THEN REPLY @165 GOTO B2#RapAer17
  IF ~~ THEN REPLY @166 GOTO B2#RapAer28
END

IF ~~ THEN BEGIN B2#RapAer15
  SAY @167
  IF ~~ THEN REPLY @168 GOTO B2#RapAer18
END

IF ~~ THEN BEGIN B2#RapAer16
  SAY @169
  IF ~~ THEN GOTO B2#RapAer17
END

IF ~~ THEN BEGIN B2#RapAer17
  SAY @170
  IF ~~ THEN GOTO B2#RapAer19
END

IF ~~ THEN BEGIN B2#RapAer18
  SAY @171
  IF ~~ THEN GOTO B2#RapAer19
END

IF ~~ THEN BEGIN B2#RapAer19
  SAY @172
  IF ~~ THEN REPLY @173 GOTO B2#RapAer20
END

IF ~~ THEN BEGIN B2#RapAer20
  SAY @174
   = @175
  IF ~~ THEN REPLY @176 GOTO B2#RapAer21
  IF ~~ THEN REPLY @177 GOTO B2#RapAer21
  IF ~~ THEN REPLY @178 GOTO B2#RapAer21
END

IF ~~ THEN BEGIN B2#RapAer21
  SAY @179
  IF ~~ THEN REPLY @180 GOTO B2#RapAer22
END

IF ~~ THEN BEGIN B2#RapAer22
  SAY @181
   = @182
  IF ~~ THEN REPLY @183 GOTO B2#RapAer25
  IF ~~ THEN REPLY @184 GOTO B2#RapAer25
  IF ~~ THEN REPLY @185 GOTO B2#RapAer23
  IF ~~ THEN REPLY @186 GOTO B2#RapAer24
END

IF ~~ THEN BEGIN B2#RapAer23
  SAY @187
  IF ~~ THEN REPLY @188 GOTO B2#RapAer25
  IF ~~ THEN REPLY @189 GOTO B2#RapAer24
END

IF ~~ THEN BEGIN B2#RapAer24
  SAY @190
  IF ~Global("TalkedDegardan","GLOBAL",3)~ THEN REPLY @191 GOTO B2#RapAer27
  IF ~~ THEN REPLY @192 GOTO B2#RapAer25
  IF ~~ THEN REPLY @193 GOTO B2#RapAer25
  IF ~~ THEN REPLY @194 GOTO B2#RapAer25
  IF ~~ THEN REPLY @195 GOTO B2#RapAer26
END

IF ~~ THEN BEGIN B2#RapAer25
  SAY @196
  IF ~~ THEN DO ~SetGlobal("B2#Rapt","GLOBAL",4)
GiveItemCreate("B2#PHNX","AERIE",0,0,0)
SetGlobalTimer("B2#PHNXReturns","GLOBAL",THREE_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN B2#RapAer26
  SAY @197
  IF ~~ THEN DO ~SetGlobal("B2#Rapt","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN B2#RapAer27
  SAY @198
  IF ~~ THEN REPLY @192 GOTO B2#RapAer25
  IF ~~ THEN REPLY @193 GOTO B2#RapAer25
  IF ~~ THEN REPLY @194 GOTO B2#RapAer25
  IF ~~ THEN REPLY @195 GOTO B2#RapAer26
END

IF ~~ THEN BEGIN B2#RapAer28
  SAY @199
   = @200
   = @201
  IF ~~ THEN GOTO B2#RapAer19
END
END