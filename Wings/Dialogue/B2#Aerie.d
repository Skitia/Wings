APPEND BAERIE

IF WEIGHT #-41
~ See(Player1)
  !StateCheck(Player1,STATE_SLEEPING)
  !AreaType(DUNGEON)
  CombatCounter(0)
  !See([ENEMY])
  Global("B2#AerieW","LOCALS",2)
  OR(2)
  Global("AerieRomanceActive","GLOBAL",1)
  Global("B2#AerieFriend","GLOBAL",2)
~ THEN BEGIN B2#AerW1
 SAY @0
  IF ~~ THEN REPLY @1 GOTO B2#AerW1a
  IF ~~ THEN REPLY @2 GOTO B2#AerW1b
END

IF ~~ THEN BEGIN B2#AerW1a
  SAY @3
  IF ~~ THEN REPLY @4 GOTO B2#AerW1c
  IF ~~ THEN REPLY @5 GOTO B2#AerW1d
END

IF ~~ THEN BEGIN B2#AerW1b
  SAY @6
  IF ~~ THEN REPLY @4 GOTO B2#AerW1c
  IF ~~ THEN REPLY @5 GOTO B2#AerW1d
  IF ~~ THEN REPLY @7 GOTO B2#AerW1g
END

IF ~~ THEN BEGIN B2#AerW1c
  SAY @8
  IF ~~ THEN REPLY @5 GOTO B2#AerW1d
END

IF ~~ THEN BEGIN B2#AerW1d
  SAY @9
   IF ~~ THEN REPLY @10 GOTO B2#AerW1e
   IF ~~ THEN REPLY @11 GOTO B2#AerW1f
   IF ~~ THEN REPLY @12 GOTO B2#AerW1g
END

IF ~~ THEN BEGIN B2#AerW1e
  SAY @13
  IF ~~ THEN GOTO B2#AerW1h
END

IF ~~ THEN BEGIN B2#AerW1f
  SAY @14
  IF ~~ THEN GOTO B2#AerW1h
END

IF ~~ THEN BEGIN B2#AerW1g
  SAY @15
   IF ~Global("AerieRomanceActive","GLOBAL",0)~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)~ EXIT
   IF ~Global("AerieRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
   SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN B2#AerW1h
  SAY @16
  = @17
   IF ~~ THEN REPLY @18 GOTO B2#AerW1i
   IF ~~ THEN REPLY @19 GOTO B2#AerW1j
   IF ~~ THEN REPLY @20 GOTO B2#AerW1k
END

IF ~~ THEN BEGIN B2#AerW1i
  SAY @21
  = @22
  = @23
   IF ~~ THEN REPLY @19 GOTO B2#AerW1j
   IF ~~ THEN REPLY @24 GOTO B2#AerW1k
END

IF ~~ THEN BEGIN B2#AerW1j
  SAY @25
  = @26
  = @27
  = @28
   IF ~~ THEN REPLY @29 GOTO B2#AerW1l
   IF ~~ THEN REPLY @30 GOTO B2#AerW1m
   IF ~~ THEN REPLY @31 GOTO B2#AerW1k
END

IF ~~ THEN BEGIN B2#AerW1k
  SAY @32
   IF ~Global("AerieRomanceActive","GLOBAL",0)~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)~ EXIT
   IF ~Global("AerieRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
   SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN B2#AerW1l
  SAY @33
  = @34
  IF ~~ THEN GOTO B2#AerW1n
END

IF ~~ THEN BEGIN B2#AerW1m
  SAY @35
  IF ~~ THEN GOTO B2#AerW1n
END

IF ~~ THEN BEGIN B2#AerW1n
  SAY @36
   IF ~Global("AerieRomanceActive","GLOBAL",0)~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)~ EXIT
   IF ~Global("AerieRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("B2#AerieW","LOCALS",4)
   SetGlobal("LoveTalk","LOCALS",1)
   RealSetGlobalTimer("AerieRomance","GLOBAL",3600)~ EXIT
END

IF WEIGHT #-40
~ See(Player1)
  !StateCheck(Player1,STATE_SLEEPING)
  !AreaType(DUNGEON)
  CombatCounter(0)
  !See([ENEMY])
  Global("B2#AerieW","LOCALS",4)
  OR(2)
  Global("AerieRomanceActive","GLOBAL",1)
  Global("B2#AerieFriend","GLOBAL",2)
~ THEN BEGIN B2#AerW2
 SAY @37
  IF ~~ THEN REPLY @38 GOTO B2#AerW2a
  IF ~~ THEN REPLY @39 GOTO B2#AerW2b
  IF ~~ THEN REPLY @40 GOTO B2#AerW2c
END

IF ~~ THEN BEGIN B2#AerW2a
  SAY @41
   = @42
   = @43
   = @44
  IF ~~ THEN REPLY @45 GOTO B2#AerW2d
  IF ~~ THEN REPLY @46 GOTO B2#AerW2e
  IF ~~ THEN REPLY @47 GOTO B2#AerW2f
  IF ~~ THEN REPLY @48 GOTO B2#AerW2g
  IF ~~ THEN REPLY @49 GOTO B2#AerW2j
END

IF ~~ THEN BEGIN B2#AerW2b
  SAY @50
  IF ~~ THEN GOTO B2#AerW2a
END

IF ~~ THEN BEGIN B2#AerW2c
  SAY @51
   IF ~Global("AerieRomanceActive","GLOBAL",0)~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)~ EXIT
   IF ~Global("AerieRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
   SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN B2#AerW2d
  SAY @52
  IF ~~ THEN GOTO B2#AerW2h
END

IF ~~ THEN BEGIN B2#AerW2e
  SAY @53
  IF ~~ THEN GOTO B2#AerW2h
END

IF ~~ THEN BEGIN B2#AerW2f
  SAY @54
   = @55
   = @56
   IF ~Global("AerieRomanceActive","GLOBAL",0)~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)~ EXIT
   IF ~Global("AerieRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("B2#AerieW","LOCALS",6)
   SetGlobal("LoveTalk","LOCALS",1)
   RealSetGlobalTimer("AerieRomance","GLOBAL",3600)~ EXIT
END

IF ~~ THEN BEGIN B2#AerW2g
  SAY @57
   = @58
  IF ~~ THEN REPLY @59 GOTO B2#AerW2i
  IF ~~ THEN REPLY @60 GOTO B2#AerW2f
  IF ~~ THEN REPLY @61 GOTO B2#AerW2j
END

IF ~~ THEN BEGIN B2#AerW2h
  SAY @62
   = @63
   = @64
   IF ~Global("AerieRomanceActive","GLOBAL",0)~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)~ EXIT
   IF ~Global("AerieRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("B2#AerieW","LOCALS",6)
   SetGlobal("LoveTalk","LOCALS",1)
   RealSetGlobalTimer("AerieRomance","GLOBAL",3600)~ EXIT
END

IF ~~ THEN BEGIN B2#AerW2i
  SAY @65
  IF ~~ THEN GOTO B2#AerW2h
END

IF ~~ THEN BEGIN B2#AerW2j
  SAY @66
   IF ~Global("AerieRomanceActive","GLOBAL",0)~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)~ EXIT
   IF ~Global("AerieRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
   SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF WEIGHT #-39
~ See(Player1)
  !StateCheck(Player1,STATE_SLEEPING)
  !AreaType(DUNGEON)
  CombatCounter(0)
  !See([ENEMY])
  Global("B2#AerieW","LOCALS",6)
  OR(2)
  Global("AerieRomanceActive","GLOBAL",1)
  Global("B2#AerieFriend","GLOBAL",2)
~ THEN BEGIN B2#AerW3
 SAY @67
  = @68
  IF ~~ THEN REPLY @69 GOTO B2#AerW3a
  IF ~~ THEN REPLY @70 GOTO B2#AerW3b
  IF ~~ THEN REPLY @71 GOTO B2#AerW3c
  IF ~~ THEN REPLY @72 GOTO B2#AerW3d
END

IF ~~ THEN BEGIN B2#AerW3a
  SAY @73
  IF ~~ THEN GOTO B2#AerW3e
END

IF ~~ THEN BEGIN B2#AerW3b
  SAY @74
  IF ~~ THEN GOTO B2#AerW3e
END

IF ~~ THEN BEGIN B2#AerW3c
  SAY @75
  IF ~~ THEN GOTO B2#AerW3e
END

IF ~~ THEN BEGIN B2#AerW3d
  SAY @76
   IF ~Global("AerieRomanceActive","GLOBAL",0)~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)~ EXIT
   IF ~Global("AerieRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
   SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN B2#AerW3e
  SAY @77
  IF ~~ THEN REPLY @78 GOTO B2#AerW3f
  IF ~~ THEN REPLY @79 GOTO B2#AerW3d
END

IF ~~ THEN BEGIN B2#AerW3f
  SAY @80
  = @81
  IF ~~ THEN REPLY @82 GOTO B2#AerW3g
  IF ~~ THEN REPLY @83 GOTO B2#AerW3l
  IF ~~ THEN REPLY @84 GOTO B2#AerW3h
END

IF ~~ THEN BEGIN B2#AerW3g
  SAY @85
  IF ~~ THEN REPLY @86 GOTO B2#AerW3j
  IF ~~ THEN REPLY @87 GOTO B2#AerW3k
END

IF ~~ THEN BEGIN B2#AerW3h
  SAY @88
   IF ~Global("AerieRomanceActive","GLOBAL",0)~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)~ EXIT
   IF ~Global("AerieRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
   SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN B2#AerW3j
  SAY @89
  IF ~~ THEN GOTO B2#AerW3l
END

IF ~~ THEN BEGIN B2#AerW3k
  SAY @90
  = @91
  IF ~~ THEN GOTO B2#AerW3l
END

IF ~~ THEN BEGIN B2#AerW3l
  SAY @92
  = @93
  = @94
  = @95
  IF ~~ THEN REPLY @96 GOTO B2#AerW3m
  IF ~~ THEN REPLY @97 GOTO B2#AerW3h
END

IF ~~ THEN BEGIN B2#AerW3m
  SAY @98
  = @99
  = @100
  IF ~~ THEN REPLY @101 GOTO B2#AerW3n
END

IF ~~ THEN BEGIN B2#AerW3n
  SAY @102
   = @103
   = @104
   = @105
  IF ~~ THEN REPLY @106 GOTO B2#AerW3o
  IF ~~ THEN REPLY @107 GOTO B2#AerW3p
  IF ~~ THEN REPLY @108 GOTO B2#AerW3q
END

IF ~~ THEN BEGIN B2#AerW3o
  SAY @109
  IF ~~ THEN GOTO B2#AerW3r
END

IF ~~ THEN BEGIN B2#AerW3p
  SAY @110
  IF ~~ THEN GOTO B2#AerW3r
END

IF ~~ THEN BEGIN B2#AerW3q
  SAY @111
   IF ~Global("AerieRomanceActive","GLOBAL",0)~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)~ EXIT
   IF ~Global("AerieRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
   SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN B2#AerW3r
  SAY @112
  IF ~~ THEN REPLY @113 GOTO B2#AerW3s
  IF ~~ THEN REPLY @114 GOTO B2#AerW3s
  IF ~~ THEN REPLY @115 GOTO B2#AerW3q
END

IF ~~ THEN BEGIN B2#AerW3s
  SAY @116
  IF ~~ THEN REPLY @117 GOTO B2#AerW3t
  IF ~~ THEN REPLY @118 GOTO B2#AerW3t
  IF ~~ THEN REPLY @119 GOTO B2#AerW3u
END

IF ~~ THEN BEGIN B2#AerW3t
  SAY @120
   = @121
   = @122
   IF ~Global("AerieRomanceActive","GLOBAL",0)~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)~ EXIT
   IF ~Global("AerieRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("B2#AerieW","LOCALS",7)
   SetGlobal("LoveTalk","LOCALS",1)
   RealSetGlobalTimer("AerieRomance","GLOBAL",3600)~ EXIT
END

IF ~~ THEN BEGIN B2#AerW3u
  SAY @123
   IF ~Global("AerieRomanceActive","GLOBAL",0)~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)~ EXIT
   IF ~Global("AerieRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
   SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF WEIGHT #-38
~Global("JaheiraRomanceActive","GLOBAL",2)
Global("AerieRomanceActive","GLOBAL",3)
Global("B2#AerieFriend","GLOBAL",5)
!Dead("jaheira")
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerFrnd1
  SAY @124
  IF ~~ THEN REPLY @125 GOTO B2#AerFrnd1a
  IF ~~ THEN REPLY @126 GOTO B2#AerFrnd1b
  IF ~~ THEN REPLY @127 GOTO B2#AerFrnd1c
END

IF ~~ THEN BEGIN B2#AerFrnd1a
  SAY @128
  IF ~~ THEN GOTO B2#AerFrnd1d
END

IF ~~ THEN BEGIN B2#AerFrnd1b
  SAY @129
  IF ~~ THEN GOTO B2#AerFrnd1d
END

IF ~~ THEN BEGIN B2#AerFrnd1c
  SAY @130
  IF ~~ THEN GOTO B2#AerFrnd1d
END

IF ~~ THEN BEGIN B2#AerFrnd1d
  SAY @131
   = @132
   = @133
  IF ~~ THEN REPLY @134 GOTO B2#AerFrnd1e
  IF ~~ THEN REPLY @135 GOTO B2#AerFrnd1f
  IF ~~ THEN REPLY @136 GOTO B2#AerFrnd1g
END

IF ~~ THEN BEGIN B2#AerFrnd1e
  SAY @137
  IF ~~ THEN REPLY @138 GOTO B2#AerFrnd1f
  IF ~~ THEN REPLY @136 GOTO B2#AerFrnd1g
END

IF ~~ THEN BEGIN B2#AerFrnd1f
  SAY @139
   = @140
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",2)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerFrnd1g
  SAY @141
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF WEIGHT #-37
~Global("ViconiaRomanceActive","GLOBAL",2)
Global("AerieRomanceActive","GLOBAL",3)
Global("B2#AerieFriend","GLOBAL",5)
!Dead("Viconia")
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerFrnd2
  SAY @142
  IF ~~ THEN REPLY @143 GOTO B2#AerFrnd2a
  IF ~~ THEN REPLY @144 GOTO B2#AerFrnd2b
  IF ~~ THEN REPLY @145 GOTO B2#AerFrnd2c
END

IF ~~ THEN BEGIN B2#AerFrnd2a
  SAY @146
  IF ~~ THEN GOTO B2#AerFrnd2d
END

IF ~~ THEN BEGIN B2#AerFrnd2b
  SAY @147
  IF ~~ THEN GOTO B2#AerFrnd2d
END

IF ~~ THEN BEGIN B2#AerFrnd2c
  SAY @148
  IF ~~ THEN GOTO B2#AerFrnd2d
END

IF ~~ THEN BEGIN B2#AerFrnd2d
  SAY @149
   = @150
  IF ~~ THEN REPLY @151 GOTO B2#AerFrnd2e
  IF ~~ THEN REPLY @152 GOTO B2#AerFrnd2f
  IF ~~ THEN REPLY @153 GOTO B2#AerFrnd2g
  IF ~~ THEN REPLY @136 GOTO B2#AerFrnd2i
END

IF ~~ THEN BEGIN B2#AerFrnd2e
  SAY @154
  IF ~~ THEN GOTO B2#AerFrnd2h
END

IF ~~ THEN BEGIN B2#AerFrnd2f
  SAY @155
  IF ~~ THEN GOTO B2#AerFrnd2h
END

IF ~~ THEN BEGIN B2#AerFrnd2g
  SAY @156
  IF ~~ THEN GOTO B2#AerFrnd2h
END

IF ~~ THEN BEGIN B2#AerFrnd2h
  SAY @157
   = @158
  IF ~~ THEN REPLY @159 GOTO B2#AerFrnd2j
  IF ~~ THEN REPLY @160 GOTO B2#AerFrnd2i
END

IF ~~ THEN BEGIN B2#AerFrnd2i
  SAY @141
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerFrnd2j
  SAY @161
   = @162
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",2)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF WEIGHT #-36
~Global("NeeraRomanceActive","GLOBAL",2)
Global("AerieRomanceActive","GLOBAL",3)
Global("B2#AerieFriend","GLOBAL",5)
!Dead("NEERA")
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerFrnd3
  SAY @163
  IF ~~ THEN REPLY @164 GOTO B2#AerFrnd3a
  IF ~~ THEN REPLY @165 GOTO B2#AerFrnd3b
  IF ~~ THEN REPLY @166 GOTO B2#AerFrnd3c
END

IF ~~ THEN BEGIN B2#AerFrnd3a
  SAY @167
  IF ~~ THEN GOTO B2#AerFrnd3d
END

IF ~~ THEN BEGIN B2#AerFrnd3b
  SAY @168
  IF ~~ THEN GOTO B2#AerFrnd3d
END

IF ~~ THEN BEGIN B2#AerFrnd3c
  SAY @169
  IF ~~ THEN GOTO B2#AerFrnd3d
END

IF ~~ THEN BEGIN B2#AerFrnd3d
  SAY @170
   = @171
   = @172
  IF ~~ THEN REPLY @173 GOTO B2#AerFrnd3e
  IF ~~ THEN REPLY @174 GOTO B2#AerFrnd3f
END

IF ~~ THEN BEGIN B2#AerFrnd3e
  SAY @161
   = @175
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",2)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerFrnd3f
  SAY @141
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF WEIGHT #-35
~Global("DornRomanceActive","GLOBAL",2)
Global("AerieRomanceActive","GLOBAL",3)
Global("B2#AerieFriend","GLOBAL",5)
!Dead("DORN")
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerFrnd4
  SAY @176
  IF ~~ THEN REPLY @177 GOTO B2#AerFrnd4a
  IF ~~ THEN REPLY @178 GOTO B2#AerFrnd4b
  IF ~~ THEN REPLY @144 GOTO B2#AerFrnd4c
END

IF ~~ THEN BEGIN B2#AerFrnd4a
  SAY @179
  IF ~~ THEN GOTO B2#AerFrnd4d
END

IF ~~ THEN BEGIN B2#AerFrnd4b
  SAY @180
  IF ~~ THEN GOTO B2#AerFrnd4d
END

IF ~~ THEN BEGIN B2#AerFrnd4c
  SAY @181
  IF ~~ THEN GOTO B2#AerFrnd4d
END

IF ~~ THEN BEGIN B2#AerFrnd4d
  SAY @182
   = @183
  IF ~~ THEN REPLY @184 GOTO B2#AerFrnd4e
  IF ~~ THEN REPLY @185 GOTO B2#AerFrnd4f
END

IF ~~ THEN BEGIN B2#AerFrnd4e
  SAY @186
   = @175
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",2)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerFrnd4f
  SAY @141
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF WEIGHT #-34
~Global("HaerDalisRomanceActive","GLOBAL",2)
Global("AerieRomanceActive","GLOBAL",3)
Global("B2#AerieFriend","GLOBAL",5)
!Dead("HaerDalis")
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerFrnd5
  SAY @187
  IF ~~ THEN REPLY @188 GOTO B2#AerFrnd5a
  IF ~~ THEN REPLY @189 GOTO B2#AerFrnd5a
  IF ~~ THEN REPLY @190 GOTO B2#AerFrnd5b
END

IF ~~ THEN BEGIN B2#AerFrnd5a
  SAY @191
   = @192
   = @193
   = @194
  IF ~~ THEN REPLY @195 GOTO B2#AerFrnd5c
  IF ~~ THEN REPLY @196 GOTO B2#AerFrnd5b
END

IF ~~ THEN BEGIN B2#AerFrnd5b
  SAY @197
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerFrnd5c
  SAY @198
   = @199
   = @200
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",2)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF WEIGHT #-33
~Global("HaerDalisRomanceActive","GLOBAL",3)
Global("AerieRomanceActive","GLOBAL",3)
Global("B2#AerieFriend","GLOBAL",5)
!Dead("HaerDalis")
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerFrnd7
  SAY @187
  IF ~~ THEN REPLY @188 GOTO B2#AerFrnd7a
  IF ~~ THEN REPLY @201 GOTO B2#AerFrnd7a
  IF ~~ THEN REPLY @190 GOTO B2#AerFrnd7b
END

IF ~~ THEN BEGIN B2#AerFrnd7a
  SAY @191
  IF ~~ THEN REPLY @202 GOTO B2#AerFrnd7c
  IF ~~ THEN REPLY @203 GOTO B2#AerFrnd7b
END

IF ~~ THEN BEGIN B2#AerFrnd7b
  SAY @197
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerFrnd7c
  SAY @204
   = @193
   = @205
  IF ~~ THEN REPLY @206 GOTO B2#AerFrnd7d
  IF ~~ THEN REPLY @207 GOTO B2#AerFrnd7b
END

IF ~~ THEN BEGIN B2#AerFrnd7d
  SAY @208
   = @199
   = @200
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",2)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF WEIGHT #-32
~Global("AerieRomanceActive","GLOBAL",3)
Global("B2#AerieFriend","GLOBAL",5)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerFrnd8
  SAY @209
  IF ~~ THEN REPLY @210 GOTO B2#AerFrnd8a
  IF ~~ THEN REPLY @190 GOTO B2#AerFrnd8b
END

IF ~~ THEN BEGIN B2#AerFrnd8a
  SAY @211
   = @212
   = @213
   = @214
  IF ~~ THEN REPLY @215 GOTO B2#AerFrnd8c
  IF ~~ THEN REPLY @216 GOTO B2#AerFrnd8d
END

IF ~~ THEN BEGIN B2#AerFrnd8b
  SAY @217
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerFrnd8c
  SAY @218
   = @219
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",2)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerFrnd8d
  SAY @220
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF WEIGHT #-31
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",8)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW4
  SAY @221
  IF ~~ THEN REPLY @222 GOTO B2#AerW4a
  IF ~~ THEN REPLY @223 GOTO B2#AerW4b
  IF ~OR(2)
Global("chapter","GLOBAL",2)
Global("chapter","GLOBAL",3)~ THEN REPLY @224 GOTO B2#AerW4c
  IF ~OR(4)
Global("chapter","GLOBAL",4)
Global("chapter","GLOBAL",5)
Global("chapter","GLOBAL",6)
Global("chapter","GLOBAL",7)~ THEN REPLY @224 GOTO B2#AerW4d
END

IF ~~ THEN BEGIN B2#AerW4a
  SAY @225
  IF ~~ THEN GOTO B2#AerW4i
END

IF ~~ THEN BEGIN B2#AerW4b
  SAY @226
  IF ~~ THEN GOTO B2#AerW4i
END

IF ~~ THEN BEGIN B2#AerW4c
  SAY @227
  IF ~~ THEN REPLY @228 GOTO B2#AerW4e
  IF ~~ THEN REPLY @229 GOTO B2#AerW4f
  IF ~~ THEN REPLY @230 GOTO B2#AerW4g
END

IF ~~ THEN BEGIN B2#AerW4d
  SAY @231
  IF ~~ THEN REPLY @232 GOTO B2#AerW4e
  IF ~~ THEN REPLY @233 GOTO B2#AerW4h
END

IF ~~ THEN BEGIN B2#AerW4e
  SAY @234
  IF ~~ THEN GOTO B2#AerW4i
END

IF ~~ THEN BEGIN B2#AerW4f
  SAY @235
   = @236
  IF ~~ THEN GOTO B2#AerW4i
END

IF ~~ THEN BEGIN B2#AerW4g
  SAY @237
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW4h
  SAY @238
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW4i
  SAY @239
  IF ~!Dead("Quaylem")
!Dead("Quayle")~ THEN REPLY @240 GOTO B2#AerW4j
  IF ~~ THEN REPLY @241 GOTO B2#AerW4k
  IF ~~ THEN REPLY @242 GOTO B2#AerW4l
END

IF ~~ THEN BEGIN B2#AerW4j
  SAY @243
   = @244
  IF ~~ THEN REPLY @245 GOTO B2#AerW4k
  IF ~~ THEN REPLY @246 GOTO B2#AerW4n
END

IF ~~ THEN BEGIN B2#AerW4k
  SAY @247
   = @248
  IF ~OR(2)
Global("chapter","GLOBAL",2)
Global("chapter","GLOBAL",3)~ THEN GOTO B2#AerW4o
  IF ~OR(4)
Global("chapter","GLOBAL",4)
Global("chapter","GLOBAL",5)
Global("chapter","GLOBAL",6)
Global("chapter","GLOBAL",7)~ THEN GOTO B2#AerW4p
END

IF ~~ THEN BEGIN B2#AerW4l
  SAY @249
  IF ~~ THEN REPLY @250 GOTO B2#AerW4m
  IF ~~ THEN REPLY @251 GOTO B2#AerW4n
END

IF ~~ THEN BEGIN B2#AerW4m
  SAY @252
   = @253
  IF ~~ THEN REPLY @254 GOTO B2#AerW4k
END

IF ~~ THEN BEGIN B2#AerW4n
  SAY @255
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW4o
  SAY @256
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW4p
  SAY @257
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF WEIGHT #-30
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",10)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW5
  SAY #3273 /* ~Have you... have you ever heard of my people? The Avariel?~ [AERIE89] */
  IF ~~ THEN REPLY #3275 /* ~The winged elves?  Very little.  I thought they were all gone.~ */ GOTO B2#AerW5a
  IF ~~ THEN REPLY #3276 /* ~I really don't have time to discuss that right now, Aerie.~ */ GOTO B2#AerW5d
END

IF ~~ THEN BEGIN B2#AerW5a
  SAY #3277 /* ~Most of us were, according to what I remember my mother telling me.  Killed by the dragons before the First Flowering.  But some of us still survive in isolated places.~ */
  IF ~~ THEN GOTO B2#AerW5b
END

IF ~~ THEN BEGIN B2#AerW5b
  SAY #3278 /* ~My own people live high in the mountains to the far south, in a place called Faenya-Dail, separated from contact with others. It is... was... a grand and majestic place.~ */
  IF ~~ THEN GOTO B2#AerW5c
END

IF ~~ THEN BEGIN B2#AerW5c
  SAY #3279 /* ~My memory is dim, but whenever the thought of it crosses my mind, my eyes still blur with tears.~ */
  IF ~~ THEN REPLY #3280 /* ~Tell me more about your people, Aerie.~ */ GOTO B2#AerW5e
  IF ~~ THEN REPLY #3281 /* ~Well, we should really get moving on.~ */ GOTO B2#AerW5d
  IF ~~ THEN REPLY #3282 /* ~Must you always be so melodramatic?  It makes me ill.~ */ GOTO B2#AerW5k
END

IF ~~ THEN BEGIN B2#AerW5d
  SAY #3284 /* ~Oh... of course, <CHARNAME>. I didn't mean to bother you.~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW5e
  SAY #3285 /* ~Our... our homes were open places of marble pillars and vistas from which you could watch the entire mountain range below. There was no place you could not spread your wings...~ */
  IF ~~ THEN GOTO B2#AerW5f
END

IF ~~ THEN BEGIN B2#AerW5f
  SAY #3286 /* ~We cherished the wind and the rains... we breathed in life, <CHARNAME>, and lived in peace with each other.~ */
  IF ~~ THEN GOTO B2#AerW5g
END

IF ~~ THEN BEGIN B2#AerW5g
  SAY #3288 /* ~There were distinct societies among us, as I remember. There were... great aerial warriors who defended us, possessing glass weapons that radiated in the sunlight...~ */
  IF ~~ THEN GOTO B2#AerW5h
END

IF ~~ THEN BEGIN B2#AerW5h
  SAY #3289 /* ~And my own class pursued art and knowledge, building the great buildings and filling them with glorious wonders. It... it was...~ */
  IF ~  Dead("QUAYLE")
~ THEN GOTO B2#AerW5i
  IF ~  !Dead("QUAYLE")
~ THEN GOTO B2#AerW5j
END

IF ~~ THEN BEGIN B2#AerW5i
  SAY #3290 /* ~... I am sorry, <CHARNAME>, I can speak of it no longer. I think of my lost home and I am reminded of my poor uncle Quayle. It... it simply wrenches my heart...~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW5j
  SAY #3291 /* ~... I am sorry, <CHARNAME>, I can speak of it no longer. I am suddenly homesick, as silly as that seems. I miss... so much, it makes me ache. I suppose I must seem very foolish to you.~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW5k
  SAY #3292 /* ~I... I must seem very foolish to you, I suppose. I will not bother you again, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF WEIGHT #-29
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",12)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW6
  SAY #3293 /* ~I... everyone here seems too unhappy and severe... I am so unused to living this way. In the circus, we always were cheerful. Or, at least, Uncle Quayle was determined to be.~ [AERIE90] */
  IF ~~ THEN GOTO B2#AerW6a
END

IF ~~ THEN BEGIN B2#AerW6a
  SAY #3294 /* ~He used to say that a frown would never get anything useful done.  I think everyone could use some cheering up... what about you, <CHARNAME>?~ */
  IF ~!Global("B2#TirAer","GLOBAL",5)~ THEN REPLY #61142 /* ~Whatever.  Just don't go turning anyone into a chicken or anything foolish like that.~ */ GOTO B2#AerW6b
  IF ~Global("B2#TirAer","GLOBAL",5)~ THEN REPLY @258 GOTO B2#AerW6f
  IF ~~ THEN REPLY #61143 /* ~I have more serious things to worry about, Aerie.~ */ GOTO B2#AerW6c
  IF ~~ THEN REPLY #61144 /* ~I think that's the stupidest thing I've ever heard.~ */ GOTO B2#AerW6d
  IF ~~ THEN REPLY #61145 /* ~Heh... you're probably right.  If only things were so easy.~ */ GOTO B2#AerW6e
END

IF ~~ THEN BEGIN B2#AerW6b
  SAY @259
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW6c
  SAY #3297 /* ~(sigh)  I suppose that's true.  It's too bad... Quayle used to go out of his way to make sure I laughed.  Even in the worst of times.  But I suppose it can't be helped.~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW6d
  SAY #3299 /* ~Oh.  I... I suppose it is... rather silly, after all.  Quayle was, still, a... a wonderful man.  But... I suppose you are not interested...~ */
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW6e
  SAY #3300 /* ~Yes, I suppose your... recent life would leave little to laugh about.  One day... one day this will all be over for you, <CHARNAME>.  And then maybe we can *all* laugh.~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW6f
  SAY @260
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF WEIGHT #-28
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",14)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW7
  SAY @261
  IF ~~ THEN REPLY @262 GOTO B2#AerW7a
END

IF ~~ THEN BEGIN B2#AerW7a
  SAY @263
  IF ~~ THEN REPLY @264 GOTO B2#AerW7b
  IF ~~ THEN REPLY @265 GOTO B2#AerW7c
END

IF ~~ THEN BEGIN B2#AerW7b
  SAY @266
  IF ~~ THEN REPLY @267 GOTO B2#AerW7d
  IF ~~ THEN REPLY @268 GOTO B2#AerW7c
END

IF ~~ THEN BEGIN B2#AerW7c
  SAY @51
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW7d
  SAY @269
  IF ~~ THEN REPLY @270 GOTO B2#AerW7e
  IF ~~ THEN REPLY @271 GOTO B2#AerW7f
  IF ~~ THEN REPLY @272 GOTO B2#AerW7e
END

IF ~~ THEN BEGIN B2#AerW7e
  SAY @273
  IF ~~ THEN GOTO B2#AerW7g
END

IF ~~ THEN BEGIN B2#AerW7f
  SAY @274
  IF ~~ THEN GOTO B2#AerW7g
END

IF ~~ THEN BEGIN B2#AerW7g
  SAY @275
   = @276
   = @277
   = @278
  IF ~~ THEN REPLY @279 GOTO B2#AerW7h
  IF ~~ THEN REPLY @280 GOTO B2#AerW7i
  IF ~~ THEN REPLY @281 GOTO B2#AerW7m
END

IF ~~ THEN BEGIN B2#AerW7h
  SAY @282
  IF ~~ THEN GOTO B2#AerW7i
END

IF ~~ THEN BEGIN B2#AerW7i
  SAY @283
  IF ~~ THEN REPLY @284 GOTO B2#AerW7j
  IF ~~ THEN REPLY @285 GOTO B2#AerW7m
END

IF ~~ THEN BEGIN B2#AerW7j
  SAY @286
  = @287
  = @288
  = @289
  IF ~~ THEN REPLY @290 GOTO B2#AerW7k
END

IF ~~ THEN BEGIN B2#AerW7k
  SAY @291
  = @292
  = @293
  = @294
  IF ~~ THEN REPLY @295 GOTO B2#AerW7l
  IF ~~ THEN REPLY @296 GOTO B2#AerW7m
END

IF ~~ THEN BEGIN B2#AerW7l
  SAY @297
  = @298
  = @299
  = @300
  = @301
  = @302
  = @303
  = @304
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW7m
  SAY @305
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF WEIGHT #-27
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",16)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW8
  SAY #3335 /* ~Have I told you of how I was captured and enslaved, initially?~ [AERIE92] */
  IF ~~ THEN REPLY #3336 /* ~No, you haven't.~ */ GOTO B2#AerW8a
  IF ~~ THEN REPLY #3337 /* ~No... but I have no time to hear the story now.~ */ GOTO B2#AerW8g
END

IF ~~ THEN BEGIN B2#AerW8a
  SAY #3338 /* ~It was... my fault, really. I was away from Faenya-Dail, flying just for the glory of it. I... spotted a large group of armed men assaulting some humans on the ground below.~ */
  IF ~~ THEN GOTO B2#AerW8b
END

IF ~~ THEN BEGIN B2#AerW8b
  SAY #3339 /* ~They were slavers, although I didn't know that at the time.  When I saw a human child crying and desperately trying to run away from them, my heart clenched with concern.~ */
  IF ~~ THEN GOTO B2#AerW8c
END

IF ~~ THEN BEGIN B2#AerW8c
  SAY #3340 /* ~I was distraught. My mother had always warned me to be wary of outsiders... but I did not heed her warnings this time. I flew down to aid the child, swooping to carry him away.~ */
  IF ~~ THEN GOTO B2#AerW8d
END

IF ~~ THEN BEGIN B2#AerW8d
  SAY #3341 /* ~The child was surprised and frightened, and his struggles slowed me... enough so that a slaver struck me with an arrow. I plummeted to the ground and was knocked unconscious.~ */
  IF ~~ THEN GOTO B2#AerW8e
END

IF ~~ THEN BEGIN B2#AerW8e
  SAY #3342 /* ~When I awoke... I was in my cage. I was the prize of the slavers... to be sold to the highest bidder. They were pleased to sell me to the circus for a great amount of gold...~ */
  IF ~~ THEN GOTO B2#AerW8f
END

IF ~~ THEN BEGIN B2#AerW8f
  SAY #3343 /* ~I... I suppose... I suppose I was glad to learn that the child escaped, after all. He ran away after my fall. Hopefully, he survived...~ */
  IF ~~ THEN REPLY #3344 /* ~What else could you have done?  It's not your fault it turned out as it did, Aerie.~ */ GOTO B2#AerW8h
  IF ~~ THEN REPLY #3345 /* ~That was noble of you, if foolish.~ */ GOTO B2#AerW8k
  IF ~~ THEN REPLY #3346 /* ~You were an idiot to take such a risk for a child.  I suppose you paid for it, however.~ */ GOTO B2#AerW8l
END

IF ~~ THEN BEGIN B2#AerW8g
  SAY #3347 /* ~Yes... I suppose now is not the time for talk. Forgive me.~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW8h
  SAY #3348 /* ~It is, though... it was foolish of me to disregard my teachings. And I have paid for it dearly. I was bereft of my home... and then my wings, <CHARNAME>.~ */
  IF ~  OR(2)
Dead("Quayle")
Dead("quaylem")
~ THEN GOTO B2#AerW8i
  IF ~  !Dead("Quayle")
!Dead("quaylem")
~ THEN GOTO B2#AerW8j
END

IF ~~ THEN BEGIN B2#AerW8i
  SAY #3349 /* ~To be bereft of Quayle, as well, is almost more than I can bear.  I think, sometimes, that the gods punish me for my pride.  Even Baervan , my deity, gives me little comfort.~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW8j
  SAY #30852 /* ~I... I am glad that Quayle yet lives. And... and I have found you, <CHARNAME>. Perhaps the gods have begun to forgive my foolish pride.~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW8k
  SAY #30853 /* ~Yes, it was. I disregarded my teachings and I have paid for it. I was taken from my home forever and bereft of my wings... a great and final punishment upon me.~ */
  IF ~  OR(2)
Dead("Quayle")
Dead("quaylem")
~ THEN GOTO B2#AerW8i
  IF ~  !Dead("Quayle")
!Dead("quaylem")
~ THEN GOTO B2#AerW8j
END

IF ~~ THEN BEGIN B2#AerW8l
  SAY #30854 /* ~I... I have paid for it, <CHARNAME>. But saving that child was all I could do! I hope he lives, yet... and I cannot believe that you would be so cruel as to cast that in my face!~ */
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF WEIGHT #-26
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",18)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW9
  SAY #30855 /* ~I miss my Uncle Quayle.  I miss his presence dearly.~ [AERIE93] */
  IF ~  !Dead("Quayle")
!Dead("quaylem")
~ THEN REPLY #30856 /* ~It's obvious that you're very close to him.~ */ GOTO B2#AerW9a
  IF ~  OR(2)
Dead("Quayle")
Dead("quaylem")
~ THEN REPLY #30857 /* ~It's obvious that you were very close to him.~ */ GOTO B2#AerW9a
  IF ~  !Dead("Quayle")
!Dead("quaylem")
~ THEN REPLY #30858 /* ~Why don't you go back to the circus, then?~ */ GOTO B2#AerW9d
  IF ~  OR(2)
Dead("Quayle")
Dead("quaylem")
~ THEN REPLY #30859 /* ~He's dead, Aerie... and nothing's going to change that.~ */ GOTO B2#AerW9e
  IF ~~ THEN REPLY @306 GOTO B2#AerW9f
END

IF ~~ THEN BEGIN B2#AerW9a
  SAY #30862 /* ~Quayle befriended me when I was caged. H-he would... bring me things. To eat... or to make me more comfortable. And he would teach me, sometimes.~ */
  IF ~~ THEN GOTO B2#AerW9b
END

IF ~~ THEN BEGIN B2#AerW9b
  SAY #30863 /* ~He hated the owner for keeping me caged. And... and when they had to cut off my wings, he took me in. He taught me all he knew, and gave me my faith in Baervan Wildwanderer.~ */
  IF ~~ THEN GOTO B2#AerW9c
END

IF ~~ THEN BEGIN B2#AerW9c
  SAY #30864 /* ~I was happy... of a sort... while I was with him. I owe him so much.~ */
  IF ~~ THEN REPLY #30868 /* ~Baervan Wildwanderer?  That is a gnomish god, isn't it?~ */ GOTO B2#AerW9g
  IF ~~ THEN REPLY #30870 /* ~Yes, well, let's just keep moving, now.~ */ GOTO B2#AerW9k
END

IF ~~ THEN BEGIN B2#AerW9d
  SAY #30865 /* ~I don't mean it that way, <CHARNAME>. I... I am here because I must be... because I have to find my own way. I... simply miss Quayle, still. I don't know... is that not right?~ */
  IF ~~ THEN GOTO B2#AerW9a
END

IF ~~ THEN BEGIN B2#AerW9e
  SAY #30866 /* ~I... I know that, <CHARNAME>. His loss is a chill dagger in my heart. If I speak of him, it is because he was one of the rare things since my capture that had given me happiness.~ */
  IF ~~ THEN GOTO B2#AerW9a
END

IF ~~ THEN BEGIN B2#AerW9f
  SAY #30867 /* ~Quayle... he was one of the rare things that gave me happiness since my enslavement. If this is so disturbing to you then I shall not speak of it... or... or to you, for that matter.~ */
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW9g
  SAY #30872 /* ~Yes.  After I lost my wings, I could not bear to turn to my winged goddess, Aerdrie Faenya.  I was filled with utter loss.  It was Quayle who consoled me and renewed my faith.~ */
  IF ~~ THEN GOTO B2#AerW9h
END

IF ~~ THEN BEGIN B2#AerW9h
  SAY #30873 /* ~Baervan is called the Masked Leaf... he is the gnomish god of nature. I... I know it is strange for an elf to pay him homage, but that is the way it is.~ */
  IF ~~ THEN GOTO B2#AerW9i
END

IF ~~ THEN BEGIN B2#AerW9i
  SAY #30875 /* ~I was always entranced by Quayle's tales of Baervan's escapades with his raccoon companion, Chiktikka Fastpaws. They were filled with humor and kindness, and indicative of Baervan's gentle nature.~ */
  IF ~~ THEN GOTO B2#AerW9j
END

IF ~~ THEN BEGIN B2#AerW9j
  SAY #30878 /* ~Baervan brought me my faith back... he gave me peace when I needed it most. And I shall always pay him homage in my heart. Is that so strange, <CHARNAME>?~ */
  IF ~~ THEN REPLY #30885 /* ~No, not at all.~ */ GOTO B2#AerW9l
  IF ~~ THEN REPLY #30886 /* ~Perhaps a little.~ */ GOTO B2#AerW9m
  IF ~~ THEN REPLY #30887 /* ~Yes, I think it's frighteningly odd.~ */ GOTO B2#AerW9n
END

IF ~~ THEN BEGIN B2#AerW9k
  SAY #30883 /* ~I shall think of my dear friend, then, and sing a quiet song to honor both he and Baervan while we travel.~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW9l
  SAY #30888 /* ~Thank you for saying so, <CHARNAME>, but I think it is a little odd.  But, then, I am a flightless girl lost in a strange world.  I will take what comfort I can get.~ */
  IF ~~ THEN GOTO B2#AerW9k
END

IF ~~ THEN BEGIN B2#AerW9m
  SAY #30889 /* ~Ha, you are probably correct. I am a flightless elf lost in a strange land and am plenty strange, myself. What I would not give, sometimes, to forget what I have known.~ */
  IF ~~ THEN GOTO B2#AerW9k
END

IF ~~ THEN BEGIN B2#AerW9n
  SAY @307
  IF ~~ THEN GOTO B2#AerW9k
END

IF WEIGHT #-25
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",20)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW10
  SAY #30894 /* ~Have you traveled much? I have been over much of Amn and Tethyr with the circus... although it was not always the most pleasant way to voyage.~ [AERIE94] */
  IF ~~ THEN REPLY #30901 /* ~I have been traveling since I left Candlekeep many, many months ago.~ */ GOTO B2#AerW10a
  IF ~~ THEN REPLY #30902 /* ~I've no wish to discuss my travels, Aerie.~ */ GOTO B2#AerW10e
  IF ~~ THEN REPLY #30899 /* ~Don't whine to me about the circus, Aerie... my travels have not been by choice, either, and likely less pleasant than yours.~ */ GOTO B2#AerW10f
END

IF ~~ THEN BEGIN B2#AerW10a
  SAY #30905 /* ~I have not been that far north... the circus mainly made its way around Amn and further south. I've been to Eshpurta and Murann, among other places... but people are all the same.~ */
  IF ~~ THEN GOTO B2#AerW10b
END

IF ~~ THEN BEGIN B2#AerW10b
  SAY #30908 /* ~They gawked at me when I was caged... pointed and were cruel. Once I was out of my cage, the people were no kinder... if it were not for Quayle, I could not have stood it.~ */
  IF ~~ THEN GOTO B2#AerW10c
END

IF ~~ THEN BEGIN B2#AerW10c
  SAY #30909 /* ~I... I think I am glad, finally, to be traveling away from the staring and jeering crowds. I am away from prying eyes, voyaging freely... on the ground, at least.~ */
  IF ~~ THEN GOTO B2#AerW10d
END

IF ~~ THEN BEGIN B2#AerW10d
  SAY #30910 /* ~And... and I am glad to be traveling with you, <CHARNAME>. You have saved my life and... made me feel very welcome.~ */
  IF ~~ THEN REPLY #30913 /* ~I am glad you are here, Aerie.  You've proven your worth more than once.~ */ GOTO B2#AerW10g
  IF ~~ THEN REPLY #30915 /* ~I would have it no other way, Aerie.~ */ GOTO B2#AerW10h
  IF ~~ THEN REPLY #30917 /* ~Don't flatter yourself... you're here because you're useful and that's it.~ */ GOTO B2#AerW10i
END

IF ~~ THEN BEGIN B2#AerW10e
  SAY #30922 /* ~As you wish, <CHARNAME>. It... it was only an errant wish for talk and nothing more.~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW10f
  SAY #30924 /* ~I... I am not whining, <CHARNAME>! I know that you have not had an easy time, but neither have I! Must you... must you be so cruel?~ */
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW10g
  SAY @308
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW10h
  SAY #30927 /* ~Nor would I, <CHARNAME>.  Thank you, truly.~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW10i
  SAY #30928 /* ~I... I see. Th-then I shall endeavour to remain useful for you, <CHARNAME>. To travel with you, if nothing else.~ */
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF WEIGHT #-24
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",22)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW11
  SAY @309
  IF ~~ THEN REPLY @310 GOTO B2#AerW11a
  IF ~~ THEN REPLY @311 GOTO B2#AerW11c
  IF ~!Race(Player1,ELF)~ THEN REPLY @312 GOTO B2#AerW11h
  IF ~Race(Player1,ELF)~ THEN REPLY @313 GOTO B2#AerW11i
  IF ~~ THEN REPLY @314 GOTO B2#AerW11m
END

IF ~~ THEN BEGIN B2#AerW11a
  SAY @315
  IF ~~ THEN REPLY @316 GOTO B2#AerW11b
  IF ~~ THEN REPLY @317 GOTO B2#AerW11n
  IF ~~ THEN REPLY @318 GOTO B2#AerW11p
END

IF ~~ THEN BEGIN B2#AerW11b
  SAY @319
  IF ~~ THEN GOTO B2#AerW11d
END

IF ~~ THEN BEGIN B2#AerW11c
  SAY @320
  IF ~~ THEN GOTO B2#AerW11d
END

IF ~~ THEN BEGIN B2#AerW11d
  SAY @321
   = @322
   = @323
   = @324
   = @325
   = @326
  IF ~~ THEN REPLY @327 GOTO B2#AerW11e
  IF ~~ THEN REPLY @328 GOTO B2#AerW11f
  IF ~~ THEN REPLY @329 GOTO B2#AerW11q
END

IF ~~ THEN BEGIN B2#AerW11e
  SAY @330
  IF ~~ THEN GOTO B2#AerW11g
END

IF ~~ THEN BEGIN B2#AerW11f
  SAY @331
  IF ~~ THEN GOTO B2#AerW11g
END

IF ~~ THEN BEGIN B2#AerW11g
  SAY @332
   = @333
   = @334
   = @335
   = @304
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW11h
  SAY @336
   = @337
  IF ~~ THEN GOTO B2#AerW11l
END

IF ~~ THEN BEGIN B2#AerW11i
  SAY @338
  IF ~~ THEN REPLY @339 GOTO B2#AerW11k
  IF ~~ THEN REPLY @340 GOTO B2#AerW11l
END

IF ~~ THEN BEGIN B2#AerW11j
  SAY @341
  IF ~~ THEN REPLY @342 GOTO B2#AerW11a
  IF ~~ THEN REPLY @343 GOTO B2#AerW11c
END

IF ~~ THEN BEGIN B2#AerW11k
  SAY @344
  IF ~~ THEN GOTO B2#AerW11l
END

IF ~~ THEN BEGIN B2#AerW11l
  SAY @345
  IF ~~ THEN GOTO B2#AerW11j
END

IF ~~ THEN BEGIN B2#AerW11m
  SAY @346
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW11n
  SAY @347
  IF ~~ THEN REPLY @348 GOTO B2#AerW11b
  IF ~~ THEN REPLY @349 GOTO B2#AerW11o
END

IF ~~ THEN BEGIN B2#AerW11o
  SAY @350
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW11p
  SAY @351
   = @352
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW11q
  SAY @353
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF WEIGHT #-23
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",24)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW12
  SAY @354
  IF ~~ THEN REPLY @355 GOTO B2#AerW12a
  IF ~~ THEN REPLY @356 GOTO B2#AerW12b
END

IF ~~ THEN BEGIN B2#AerW12a
  SAY @357
  IF ~~ THEN REPLY @358 GOTO B2#AerW12c
  IF ~~ THEN REPLY @359 GOTO B2#AerW12d
  IF ~~ THEN REPLY @360 GOTO B2#AerW12e
END

IF ~~ THEN BEGIN B2#AerW12b
  SAY @361
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW12c
  SAY @362
  IF ~~ THEN GOTO B2#AerW12f
END

IF ~~ THEN BEGIN B2#AerW12d
  SAY @363
  IF ~~ THEN GOTO B2#AerW12f
END

IF ~~ THEN BEGIN B2#AerW12e
  SAY @364
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW12f
  SAY @365
  = @366
  = @367
  IF ~~ THEN REPLY @368 GOTO B2#AerW12g
  IF ~~ THEN REPLY @369 GOTO B2#AerW12k
END

IF ~~ THEN BEGIN B2#AerW12g
  SAY @370
   = @371
   = @372
  IF ~~ THEN REPLY @373 GOTO B2#AerW12h
END

IF ~~ THEN BEGIN B2#AerW12h
  SAY @374
   = @375
   = @376
  IF ~~ THEN REPLY @377 GOTO B2#AerW12i
  IF ~~ THEN REPLY @378 GOTO B2#AerW12j
END

IF ~~ THEN BEGIN B2#AerW12i
  SAY @379
   = @380
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW12j
  SAY @381
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW12k
  SAY @382
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF WEIGHT #-22
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",26)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW13
  SAY @383
   = @384
  IF ~~ THEN REPLY @96 GOTO B2#AerW13a
  IF ~~ THEN REPLY @385 GOTO B2#AerW13b
END

IF ~~ THEN BEGIN B2#AerW13a
  SAY @386
   = @387
  IF ~~ THEN REPLY @388 GOTO B2#AerW13d
END

IF ~~ THEN BEGIN B2#AerW13b
  SAY @389
   IF ~~ THEN REPLY @390 GOTO B2#AerW13a
   IF ~~ THEN REPLY @391 GOTO B2#AerW13c
END

IF ~~ THEN BEGIN B2#AerW13c
  SAY @392
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW13d
  SAY @393
  IF ~~ THEN REPLY @394 GOTO B2#AerW13e
  IF ~~ THEN REPLY @395 GOTO B2#AerW13e
END

IF ~~ THEN BEGIN B2#AerW13e
  SAY @396
   = @397
   = @398
  IF ~~ THEN REPLY @399 GOTO B2#AerW13f
  IF ~~ THEN REPLY @400 GOTO B2#AerW13h
END

IF ~~ THEN BEGIN B2#AerW13f
  SAY @401
   = @402
   = @403
  IF ~~ THEN REPLY @404 GOTO B2#AerW13g
  IF ~~ THEN REPLY @405 GOTO B2#AerW13h
END

IF ~~ THEN BEGIN B2#AerW13g
  SAY @406
   = @407
   = @408
  IF ~~ THEN REPLY @409 GOTO B2#AerW13h
END

IF ~~ THEN BEGIN B2#AerW13h
  SAY @410
   = @411
   IF ~~ THEN REPLY @412 GOTO B2#AerW13i
   IF ~~ THEN REPLY @413 GOTO B2#AerW13j
END

IF ~~ THEN BEGIN B2#AerW13i
  SAY @414
   = @415
   IF ~~ THEN REPLY @416 GOTO B2#AerW13k
   IF ~~ THEN REPLY @417 GOTO B2#AerW13l
END

IF ~~ THEN BEGIN B2#AerW13j
  SAY @418
   IF ~~ THEN REPLY @419 GOTO B2#AerW13i
END

IF ~~ THEN BEGIN B2#AerW13k
  SAY @420
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW13l
  SAY @421
  IF ~~ THEN GOTO B2#AerW13k
END

IF WEIGHT #-21
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",28)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW14
  SAY @422
  IF ~~ THEN REPLY @423 GOTO B2#AerW14a
  IF ~~ THEN REPLY @424 GOTO B2#AerW14b
END

IF ~~ THEN BEGIN B2#AerW14a
  SAY @425
  IF ~~ THEN REPLY @426 GOTO B2#AerW14c
  IF ~~ THEN REPLY @427 GOTO B2#AerW14b
END

IF ~~ THEN BEGIN B2#AerW14b
  SAY @428
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW14c
  SAY @429
   = @430
   = @431
   = @432
  IF ~~ THEN REPLY @433 GOTO B2#AerW14d
  IF ~~ THEN REPLY @434 GOTO B2#AerW14b
END

IF ~~ THEN BEGIN B2#AerW14d
  SAY @435
  IF ~~ THEN REPLY @436 GOTO B2#AerW14e
  IF ~~ THEN REPLY @437 GOTO B2#AerW14b
END

IF ~~ THEN BEGIN B2#AerW14e
  SAY @438
   = @439
   = @440
  IF ~~ THEN REPLY @441 GOTO B2#AerW14f
  IF ~~ THEN REPLY @442 GOTO B2#AerW14g
END

IF ~~ THEN BEGIN B2#AerW14f
  SAY @443
   = @444
  IF ~~ THEN GOTO B2#AerW14h
END

IF ~~ THEN BEGIN B2#AerW14g
  SAY @445
   = @446
  IF ~~ THEN GOTO B2#AerW14h
END

IF ~~ THEN BEGIN B2#AerW14h
  SAY @447
   = @448
   = @449
   = @450
  IF ~~ THEN REPLY @451 GOTO B2#AerW14i
  IF ~~ THEN REPLY @452 GOTO B2#AerW14j
  IF ~~ THEN REPLY @434 GOTO B2#AerW14b
END

IF ~~ THEN BEGIN B2#AerW14i
  SAY @453
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW14j
  SAY @454
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF WEIGHT #-20
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",30)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
OR(2)
Class(Player1,PALADIN_ALL)
Class(Player1,FIGHTER_ALL)
~ THEN BEGIN B2#AerW15ST
  SAY @455
   = @456
  IF ~~ THEN REPLY @457 GOTO B2#AerW15a
  IF ~~ THEN REPLY @458 GOTO B2#AerW15a
  IF ~~ THEN REPLY @459 GOTO B2#AerW15a
  IF ~~ THEN REPLY @460 GOTO B2#AerW15b
  IF ~~ THEN REPLY @461 GOTO B2#AerW15c
  IF ~~ THEN REPLY @462 GOTO B2#AerW15d
END

IF WEIGHT #-19
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",30)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
OR(2)
Class(Player1,RANGER_ALL)
Class(Player1,DRUID_ALL)
~ THEN BEGIN B2#AerW15DR
  SAY @463
   = @464
  IF ~~ THEN REPLY @457 GOTO B2#AerW15a
  IF ~~ THEN REPLY @458 GOTO B2#AerW15a
  IF ~~ THEN REPLY @459 GOTO B2#AerW15a
  IF ~~ THEN REPLY @465 GOTO B2#AerW15b
  IF ~~ THEN REPLY @461 GOTO B2#AerW15c
  IF ~~ THEN REPLY @466 GOTO B2#AerW15d
END

IF WEIGHT #-18
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",30)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
Class(Player1,CLERIC_ALL)
~ THEN BEGIN B2#AerW15CL
  SAY @467
  IF ~~ THEN REPLY @468 GOTO B2#AerW15a
  IF ~~ THEN REPLY @469 GOTO B2#AerW15a
  IF ~~ THEN REPLY @459 GOTO B2#AerW15a
  IF ~~ THEN REPLY @470 GOTO B2#AerW15b
  IF ~~ THEN REPLY @461 GOTO B2#AerW15c
  IF ~~ THEN REPLY @466 GOTO B2#AerW15d
END

IF WEIGHT #-17
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",30)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
Class(Player1,MONK)
~ THEN BEGIN B2#AerW15MK
  SAY @471
   = @472
  IF ~~ THEN REPLY @473 GOTO B2#AerW15a
  IF ~~ THEN REPLY @474 GOTO B2#AerW15a
  IF ~~ THEN REPLY @459 GOTO B2#AerW15a
  IF ~~ THEN REPLY @470 GOTO B2#AerW15b
  IF ~~ THEN REPLY @461 GOTO B2#AerW15c
  IF ~~ THEN REPLY @475 GOTO B2#AerW15d
END

IF WEIGHT #-16
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",30)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
Class(Player1,MAGE_ALL)
~ THEN BEGIN B2#AerW15MG
  SAY @476
  IF ~~ THEN REPLY @477 GOTO B2#AerW15a
  IF ~~ THEN REPLY @478 GOTO B2#AerW15a
  IF ~~ THEN REPLY @479 GOTO B2#AerW15a
  IF ~~ THEN REPLY @480 GOTO B2#AerW15b
  IF ~~ THEN REPLY @461 GOTO B2#AerW15c
  IF ~~ THEN REPLY @481 GOTO B2#AerW15d
END

IF WEIGHT #-15
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",30)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
Class(Player1,BARD_ALL)
~ THEN BEGIN B2#AerW15BD
  SAY @482
  IF ~~ THEN REPLY @483 GOTO B2#AerW15a
  IF ~~ THEN REPLY @484 GOTO B2#AerW15a
  IF ~~ THEN REPLY @485 GOTO B2#AerW15a
  IF ~~ THEN REPLY @480 GOTO B2#AerW15b
  IF ~~ THEN REPLY @461 GOTO B2#AerW15c
  IF ~~ THEN REPLY @486 GOTO B2#AerW15d
END

IF WEIGHT #-14
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",30)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
Class(Player1,THIEF_ALL)
~ THEN BEGIN B2#AerW15TF
  SAY @487
   = @488
  IF ~~ THEN REPLY @489 GOTO B2#AerW15a
  IF ~~ THEN REPLY @490 GOTO B2#AerW15a
  IF ~~ THEN REPLY @491 GOTO B2#AerW15a
  IF ~~ THEN REPLY @480 GOTO B2#AerW15b
  IF ~~ THEN REPLY @461 GOTO B2#AerW15c
  IF ~~ THEN REPLY @492 GOTO B2#AerW15d
END

IF WEIGHT #-13
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",30)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW15
  SAY @493
  IF ~~ THEN REPLY @494 GOTO B2#AerW15a
  IF ~~ THEN REPLY @495 GOTO B2#AerW15a
  IF ~~ THEN REPLY @496 GOTO B2#AerW15a
  IF ~~ THEN REPLY @480 GOTO B2#AerW15b
  IF ~~ THEN REPLY @461 GOTO B2#AerW15c
  IF ~~ THEN REPLY @497 GOTO B2#AerW15d
END

IF ~~ THEN BEGIN B2#AerW15a
  SAY @498
  IF ~~ THEN REPLY @499 GOTO B2#AerW15e
END

IF ~~ THEN BEGIN B2#AerW15b
  SAY @500
  IF ~~ THEN REPLY @501 GOTO B2#AerW15a
END

IF ~~ THEN BEGIN B2#AerW15c
  SAY @502
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW15d
  SAY @503
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW15e
  SAY @504
   = @505
   = @506
   = @507
  IF ~~ THEN REPLY @508 GOTO B2#AerW15f
END

IF ~~ THEN BEGIN B2#AerW15f
  SAY @509
   = @510
  IF ~~ THEN REPLY @511 GOTO B2#AerW15g
  IF ~~ THEN REPLY @512 GOTO B2#AerW15h
END

IF ~~ THEN BEGIN B2#AerW15g
  SAY @513
  IF ~~ THEN GOTO B2#AerW15i
END

IF ~~ THEN BEGIN B2#AerW15h
  SAY @514
  IF ~~ THEN GOTO B2#AerW15i
END

IF ~~ THEN BEGIN B2#AerW15i
  SAY @515
   = @516
   = @517
   = @518
   = @519
   = @520
  IF ~~ THEN REPLY @521 GOTO B2#AerW15j
  IF ~~ THEN REPLY @522 GOTO B2#AerW15k
END

IF ~~ THEN BEGIN B2#AerW15j
  SAY @523
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW15k
  SAY @524
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF WEIGHT #-12
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",32)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW16
  SAY @525
  IF ~~ THEN REPLY @526 GOTO B2#AerW16a
END

IF ~~ THEN BEGIN B2#AerW16a
  SAY @527
   = @528
   = @529
  IF ~~ THEN REPLY @530 GOTO B2#AerW16b
  IF ~~ THEN REPLY @531 GOTO B2#AerW16j
END

IF ~~ THEN BEGIN B2#AerW16b
  SAY @532
  IF ~~ THEN REPLY @533 GOTO B2#AerW16c
  IF ~~ THEN REPLY @531 GOTO B2#AerW16j
END

IF ~~ THEN BEGIN B2#AerW16c
  SAY @534
  IF ~~ THEN REPLY @535 GOTO B2#AerW16d
END

IF ~~ THEN BEGIN B2#AerW16d
  SAY @536
  = @537
  = @538
  = @539
  = @540
   IF ~~ THEN REPLY @541 GOTO B2#AerW16e
   IF ~~ THEN REPLY @542 GOTO B2#AerW16k
END

IF ~~ THEN BEGIN B2#AerW16e
  SAY @543
  = @544
  = @545
  = @546
  = @547
  = @548
   IF ~~ THEN REPLY @549 GOTO B2#AerW16f
   IF ~~ THEN REPLY @550 GOTO B2#AerW16g
   IF ~~ THEN REPLY @551 GOTO B2#AerW16h
   IF ~~ THEN REPLY @552 GOTO B2#AerW16i
END

IF ~~ THEN BEGIN B2#AerW16f
  SAY @553
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW16g
  SAY @554
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW16h
  SAY @555
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW16i
  SAY @556
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW16j
  SAY @557
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW16k
  SAY @558
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF WEIGHT #-11
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",34)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW17
  SAY @559
   IF ~~ THEN REPLY @560 GOTO B2#AerW17a
   IF ~~ THEN REPLY @561 GOTO B2#AerW17b
END

IF ~~ THEN BEGIN B2#AerW17a
  SAY @562
   = @563
  IF ~~ THEN REPLY @564 GOTO B2#AerW17c
  IF ~~ THEN REPLY @565 GOTO B2#AerW17d
END

IF ~~ THEN BEGIN B2#AerW17b
  SAY @566
   IF ~~ THEN REPLY @567 GOTO B2#AerW17a
   IF ~~ THEN REPLY @568 GOTO B2#AerW17l
END

IF ~~ THEN BEGIN B2#AerW17c
  SAY @569
  IF ~~ THEN GOTO B2#AerW17e
END

IF ~~ THEN BEGIN B2#AerW17d
  SAY @570
  IF ~~ THEN GOTO B2#AerW17e
END

IF ~~ THEN BEGIN B2#AerW17e
  SAY @571
   = @572
  IF ~~ THEN REPLY @573 GOTO B2#AerW17f
  IF ~~ THEN REPLY @574 GOTO B2#AerW17i
END

IF ~~ THEN BEGIN B2#AerW17f
  SAY @575
  IF ~~ THEN REPLY @576 GOTO B2#AerW17g
  IF ~~ THEN REPLY @577 GOTO B2#AerW17h
END

IF ~~ THEN BEGIN B2#AerW17g
  SAY @578
  IF ~~ THEN REPLY @579 GOTO B2#AerW17i
END

IF ~~ THEN BEGIN B2#AerW17h
  SAY @580
  IF ~~ THEN REPLY @579 GOTO B2#AerW17i
END

IF ~~ THEN BEGIN B2#AerW17i
  SAY @581
  IF ~~ THEN REPLY @582 GOTO B2#AerW17j
END

IF ~~ THEN BEGIN B2#AerW17j
  SAY @583
  IF ~~ THEN REPLY @584 GOTO B2#AerW17k
  IF ~~ THEN REPLY @585 GOTO B2#AerW17k
END

IF ~~ THEN BEGIN B2#AerW17k
  SAY @586
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW17l
  SAY @587
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF WEIGHT #-10
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",36)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW18
  SAY @588
  IF ~~ THEN REPLY @589 GOTO B2#AerW18a
  IF ~~ THEN REPLY @590 GOTO B2#AerW18a
END

IF ~~ THEN BEGIN B2#AerW18a
  SAY @591
   = @592
   = @593
  IF ~~ THEN REPLY @594 GOTO B2#AerW18d
  IF ~~ THEN REPLY @595 GOTO B2#AerW18b
  IF ~~ THEN REPLY @596 GOTO B2#AerW18c
END

IF ~~ THEN BEGIN B2#AerW18b
  SAY @597
  IF ~~ THEN GOTO B2#AerW18d
END

IF ~~ THEN BEGIN B2#AerW18c
  SAY @598
   = @599
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW18d
  SAY @600
   = @601
   = @602
  IF ~OR(2)
!Dead("Quayle")
!Dead("quaylem")~ THEN GOTO B2#AerW18e
  IF ~OR(2)
Dead("Quayle")
Dead("quaylem")~ THEN GOTO B2#AerW18f
END

IF ~~ THEN BEGIN B2#AerW18e
  SAY @603
  IF ~~ THEN GOTO B2#AerW18g
END

IF ~~ THEN BEGIN B2#AerW18f
  SAY @604
  IF ~~ THEN GOTO B2#AerW18g
END

IF ~~ THEN BEGIN B2#AerW18g
  SAY @605
   = @606
   = @607
   = @608
   = @609
   = @610
  IF ~~ THEN REPLY @611 GOTO B2#AerW18h
  IF ~~ THEN REPLY @612 GOTO B2#AerW18i
  IF ~~ THEN REPLY @613 GOTO B2#AerW18j
END

IF ~~ THEN BEGIN B2#AerW18h
  SAY @614
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW18i
  SAY @615
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW18j
  SAY @616
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF WEIGHT #-9
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",38)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW19
  SAY #31471 /* ~I have heard from some of the others, about your adventures in the lands of the Sword Coast north of here.  It all sounds rather exciting!~ [AERIEA5] */
  IF ~~ THEN REPLY @617 GOTO B2#AerW19a
  IF ~~ THEN REPLY #31473 /* ~It wasn't by choice, Aerie.  And I lost much.~ */ GOTO B2#AerW19d
  IF ~~ THEN REPLY #31474 /* ~Yes, it was a great adventure... and a successful one, as well. I defeated my half-brother and stopped a war.~ */ GOTO B2#AerW19f
  IF ~~ THEN REPLY @618 GOTO B2#AerW19g
END

IF ~~ THEN BEGIN B2#AerW19a
  SAY @619
  IF ~~ THEN GOTO B2#AerW19b
END

IF ~~ THEN BEGIN B2#AerW19b
  SAY #31477 /* ~I want to feel the thrill and fear of combat... to pit my magic against our foes. I want to be awed and terrified... to feel everything that my life has to offer me, good or bad.~ */
  IF ~~ THEN GOTO B2#AerW19c
END

IF ~~ THEN BEGIN B2#AerW19c
  SAY #31478 /* ~Does that sound strange, <CHARNAME>?  Does that make me odd?~ */
  IF ~~ THEN REPLY #31479 /* ~No odder than the rest of us, Aerie.~ */ GOTO B2#AerW19h
  IF ~~ THEN REPLY #31480 /* ~No... I am glad to see the change in you, in fact.~ */ GOTO B2#AerW19i
  IF ~~ THEN REPLY #31481 /* ~It makes you naive and foolish.  You haven't a clue, do you?~ */ GOTO B2#AerW19j
END

IF ~~ THEN BEGIN B2#AerW19d
  SAY #31482 /* ~But you gained as well, <CHARNAME>.  I am told that many people speak reverentially of the deeds you have performed, whether you intended them or not.~ */
  IF ~~ THEN GOTO B2#AerW19e
END

IF ~~ THEN BEGIN B2#AerW19e
  SAY #31483 /* ~I have lost much... as you have. But I am beginning to think that perhaps I might be able to gain something back, as well. I look forward to freeing myself from my doubts and fears.~ */
  IF ~~ THEN GOTO B2#AerW19a
END

IF ~~ THEN BEGIN B2#AerW19f
  SAY #31484 /* ~Many people speak reverentially of you. You have gained much... and I want to have that, as well. I want to shed my doubt and wring whatever I can out of the life I have.~ */
  IF ~~ THEN GOTO B2#AerW19a
END

IF ~~ THEN BEGIN B2#AerW19g
  SAY #31485 /* ~You always disregard what I am thinking, don't you? Obviously, I was mistaken about you. I'll just... keep to myself, if it's all the same to you.~ */
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW19h
  SAY #31493 /* ~Good... that makes me feel a little better. It is strange to be thrilled and yet shivering at the same time... I am free, and I am traveling... and I feel like I am flying.~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW19i
  SAY #31494 /* ~Thank you, <CHARNAME>... I am glad of it, as well. I... I am free... and traveling... and both excited and nervous at the same time. I almost feel as if I am flying again.~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW19j
  SAY #31496 /* ~Always you must be cruel with your words.  Naive, am I?  Well, I am not so stupid as to continue playing the fool.  Obviously I was mistaken about you.~ */
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF WEIGHT #-8
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",40)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW20
  SAY #31498 /* ~Have you been to very many other places besides Amn?~ [AERIEA6] */
  IF ~~ THEN REPLY #31499 /* ~Just to Baldur's Gate and several other places along the Sword Coast up north... so far, at least.~ */ GOTO B2#AerW20a
  IF ~~ THEN REPLY #31500 /* ~Not now, Aerie... this isn't a good time to talk.~ */ GOTO B2#AerW20f
END

IF ~~ THEN BEGIN B2#AerW20a
  SAY #31501 /* ~I have never been that far north... nor have I traveled anywhere outside of the circus. I have been told about some of the other places in the world where one can go, however...~ */
  IF ~~ THEN GOTO B2#AerW20b
END

IF ~~ THEN BEGIN B2#AerW20b
  SAY #31503 /* ~Calimshan is supposed to be a great place of sand and silks, merchants of all kinds... there are supposed to be strange and exotic dancers and great, spiralling towers.~ */
  IF ~~ THEN GOTO B2#AerW20c
END

IF ~~ THEN BEGIN B2#AerW20c
  SAY #31504 /* ~The Moonshae Islands are supposed to have magnificent mountains and waterfalls... along with beaches of blue sand and ancient forests that time has barely touched.~ */
  IF ~~ THEN GOTO B2#AerW20d
END

IF ~~ THEN BEGIN B2#AerW20d
  SAY #31508 /* ~And... and the jungles of Chult! Towering trees and vines, exotic spices and flowers that smell of the sultry heat... rainstorms that last for days...~ */
  IF ~~ THEN GOTO B2#AerW20e
END

IF ~~ THEN BEGIN B2#AerW20e
  SAY #31510 /* ~I... I want to go to these places, <CHARNAME>! I want to voyage there and see their beauty for myself... I want to stand there and feel it... touch it with my hands.~ */
  IF ~~ THEN REPLY #31511 /* ~That sounds wonderful, Aerie... I wouldn't mind joining you someday.~ */ GOTO B2#AerW20g
  IF ~~ THEN REPLY #31513 /* ~I think we should concern ourselves with surviving the next few weeks and not make plans like that.~ */ GOTO B2#AerW20h
  IF ~~ THEN REPLY #31514 /* ~Get your head out of the clouds, Aerie.  It'll never happen.~ */ GOTO B2#AerW20i
END

IF ~~ THEN BEGIN B2#AerW20f
  SAY #31516 /* ~I see. Alright, <CHARNAME>... I'll be quiet, if that's what you want.~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW20g
  SAY #31518 /* ~I would like that, <CHARNAME>... although, of course we must pay attention to surviving, first. Likely, we will face death many times... but it is pleasant to dream, isn't it?~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW20h
  SAY #31519 /* ~Oh, I know. I do not plan on running off to go to these places. I know we face death, here, and will many times. It is just... pleasant to dream, isn't it?~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW20i
  SAY #31520 /* ~And who are you to say it will never happen? I know I face death fighting by your side... and I am happy to do so... but I would like to dream of the future, as well.~ */
  IF ~~ THEN GOTO B2#AerW20j
END

IF ~~ THEN BEGIN B2#AerW20j
  SAY #31522 /* ~I... I would have thought you capable of dreaming, <CHARNAME>. Not everything must be hard steel and stern decisions.~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF WEIGHT #-7
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",42)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW21
  SAY #31535 /* ~I've been wondering... do you have any advice for me for combat?~ [AERIEA7] */
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN REPLY #31536 /* ~You're doing fine, Aerie.  Why do you ask?~ */ GOTO B2#AerW21a
  IF ~  !Alignment(Player1,MASK_EVIL)
~ THEN REPLY #31539 /* ~You're doing fine, Aerie.  Why do you ask?~ */ GOTO B2#AerW21c
  IF ~~ THEN REPLY #31537 /* ~Stay in the back and use your spells... that's the best help you can be.~ */ GOTO B2#AerW21d
  IF ~~ THEN REPLY #31541 /* ~Not really.~ */ GOTO B2#AerW21e
END

IF ~~ THEN BEGIN B2#AerW21a
  SAY #31542 /* ~I know how you feel about my being strong, <CHARNAME>... and I want to fight well by your side. I... I don't want your foes, powerful as they are, to get the best of you.~ */
  IF ~~ THEN GOTO B2#AerW21b
END

IF ~~ THEN BEGIN B2#AerW21b
  SAY #31551 /* ~I shall try to improve my skills with magic, over and above what my uncle Quayle was able to teach me. I suppose... I suppose that is the best way I can aid you.~ */
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW21c
  SAY #31553 /* ~I know that you are determined to combat evil... and I wish to do so, as well. I don't want to be a burden... I want to be effective. I want to survive so that I can see the world.~ */
  IF ~~ THEN GOTO B2#AerW21b
END

IF ~~ THEN BEGIN B2#AerW21d
  SAY #31556 /* ~I think that's what I have been doing... I know I'll never be that good with weapons as some of your other companions are. If... if you need me to fight by your side, <CHARNAME>, I will do so... to the death, if need be.~ */
  IF ~~ THEN GOTO B2#AerW21b
END

IF ~~ THEN BEGIN B2#AerW21e
  SAY #31558 /* ~None at all, <CHARNAME>? I... I don't want to be a burden to your group. I want to fight effectively by your side... and survive, so that I may travel the world with you.~ */
  IF ~~ THEN GOTO B2#AerW21b
END

IF WEIGHT #-6
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",44)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW22
  SAY @620
  IF ~~ THEN REPLY @621 GOTO B2#AerW22a
  IF ~~ THEN REPLY @622 GOTO B2#AerW22b
  IF ~~ THEN REPLY @623 GOTO B2#AerW22c
END

IF ~~ THEN BEGIN B2#AerW22a
  SAY @624
  IF ~~ THEN REPLY @625 GOTO B2#AerW22d
END

IF ~~ THEN BEGIN B2#AerW22b
  SAY @626
  IF ~~ THEN GOTO B2#AerW22e
END

IF ~~ THEN BEGIN B2#AerW22c
  SAY @627
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW22d
  SAY @628
  IF ~~ THEN GOTO B2#AerW22e
END

IF ~~ THEN BEGIN B2#AerW22e
  SAY @629
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
RealSetGlobalTimer("B2#AerieFriends","GLOBAL",3600)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW22f
  SAY @630
  IF ~~ THEN GOTO B2#AerW22e
END

IF ~~ THEN BEGIN B2#AerW22g
  SAY @631
  IF ~~ THEN EXTERN ~BIMOEN2~ B2#ImAerCN3f
END

IF ~~ THEN BEGIN B2#AerW22h
  SAY @632
  IF ~~ THEN EXTERN ~BIMOEN2~ B2#ImAerCN3g
END

IF ~~ THEN BEGIN B2#AerW22i
  SAY @633
  IF ~~ THEN GOTO B2#AerW22e
END

IF WEIGHT #-5
~Global("B2#AerieFriend","GLOBAL",2)
Global("B2#AerieW","LOCALS",46)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!AreaType(DUNGEON)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN B2#AerW23
  SAY @634
  IF ~~ THEN REPLY @635 GOTO B2#AerW23a
  IF ~~ THEN REPLY @636 GOTO B2#AerW23i
END

IF ~~ THEN BEGIN B2#AerW23a
  SAY @637
   = @638
  IF ~~ THEN REPLY @639 GOTO B2#AerW23b
  IF ~~ THEN REPLY @640 GOTO B2#AerW23c
  IF ~~ THEN REPLY @641 GOTO B2#AerW23b
END

IF ~~ THEN BEGIN B2#AerW23b
  SAY @642
  IF ~~ THEN GOTO B2#AerW23d
END

IF ~~ THEN BEGIN B2#AerW23c
  SAY @643
   = @644
  IF ~~ THEN GOTO B2#AerW23d
END

IF ~~ THEN BEGIN B2#AerW23d
  SAY @645
   = @646
   = @647
  IF ~~ THEN REPLY @648 GOTO B2#AerW23e
  IF ~~ THEN REPLY @649 GOTO B2#AerW23f
  IF ~~ THEN REPLY @650 GOTO B2#AerW23g
END

IF ~~ THEN BEGIN B2#AerW23e
  SAY @651
  IF ~~ THEN GOTO B2#AerW23h
END

IF ~~ THEN BEGIN B2#AerW23f
  SAY @652
  IF ~~ THEN REPLY @648 GOTO B2#AerW23e
  IF ~~ THEN REPLY @650 GOTO B2#AerW23g
END

IF ~~ THEN BEGIN B2#AerW23g
  SAY @653
   = @654
   = @655
   = @656
   = @657
  IF ~~ THEN REPLY @658 GOTO B2#AerW23e
END

IF ~~ THEN BEGIN B2#AerW23h
  SAY @659
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
StartCutSceneMode()
StartCutScene("B2#cACNF")
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW23i
  SAY @660
  IF ~~ THEN REPLY @661 GOTO B2#AerW23a
  IF ~~ THEN REPLY @568 GOTO B2#AerW23j
END

IF ~~ THEN BEGIN B2#AerW23j
  SAY @662
  IF ~~ THEN DO ~SetGlobal("B2#AerieFriend","GLOBAL",3)
~ EXIT
END

IF WEIGHT #-4
~Global("B2#AerieW","LOCALS",47)
CheckStatGT(Player1,10,STR)
~ THEN BEGIN B2#AerW24STR
  SAY @663
  IF ~~ THEN REPLY @664 GOTO B2#AerW24a
  IF ~~ THEN REPLY @665 GOTO B2#AerW24b
  IF ~~ THEN REPLY @666 GOTO B2#AerW24c
END

IF WEIGHT #-3
~Global("B2#AerieW","LOCALS",47)
CheckStatGT(Player1,17,DEX)
~ THEN BEGIN B2#AerW24DEX
  SAY @667
  IF ~~ THEN REPLY @668 GOTO B2#AerW24a
  IF ~~ THEN REPLY @665 GOTO B2#AerW24b
  IF ~~ THEN REPLY @666 GOTO B2#AerW24c
END

IF WEIGHT #-2
~Global("B2#AerieW","LOCALS",47)
CheckStatGT(Player1,9,CON)
~ THEN BEGIN B2#AerW24CON
  SAY @669
  IF ~~ THEN REPLY @670 GOTO B2#AerW24a
  IF ~~ THEN REPLY @665 GOTO B2#AerW24b
  IF ~~ THEN REPLY @666 GOTO B2#AerW24c
END

IF WEIGHT #-1
~Global("B2#AerieW","LOCALS",47)
~ THEN BEGIN B2#AerW24
  SAY @671
  IF ~~ THEN REPLY @672 GOTO B2#AerW24a
  IF ~~ THEN REPLY @665 GOTO B2#AerW24b
  IF ~~ THEN REPLY @666 GOTO B2#AerW24c
END

IF ~~ THEN BEGIN B2#AerW24a
  SAY @673
  IF ~~ THEN REPLY @674 GOTO B2#AerW24d
  IF ~~ THEN REPLY @675 GOTO B2#AerW24e
  IF ~~ THEN REPLY @676 GOTO B2#AerW24f
END

IF ~~ THEN BEGIN B2#AerW24b
  SAY @677
  IF ~~ THEN REPLY @674 GOTO B2#AerW24d
  IF ~~ THEN REPLY @675 GOTO B2#AerW24e
  IF ~~ THEN REPLY @676 GOTO B2#AerW24f
END

IF ~~ THEN BEGIN B2#AerW24c
  SAY @678
  IF ~~ THEN REPLY @679 GOTO B2#AerW24d
  IF ~~ THEN REPLY @676 GOTO B2#AerW24f
END

IF ~~ THEN BEGIN B2#AerW24d
  SAY @680
  IF ~~ THEN GOTO B2#AerW24g
END

IF ~~ THEN BEGIN B2#AerW24e
  SAY @681
  IF ~~ THEN GOTO B2#AerW24g
END

IF ~~ THEN BEGIN B2#AerW24f
  SAY @682
   = @683
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
SetGlobal("B2#AerieFriend","GLOBAL",3)
EndCutSceneMode()
RestParty()
~ EXIT
END

IF ~~ THEN BEGIN B2#AerW24g
  SAY @684
   = @685
   = @686
  IF ~~ THEN DO ~IncrementGlobal("B2#AerieW","LOCALS",1)
EndCutSceneMode()
RestParty()
~ EXIT
END

IF ~~ THEN BEGIN B2#LT125
  SAY @687
  IF ~~ THEN DO ~IncrementGlobal("LoveTalk","LOCALS",1)
RealSetGlobalTimer("AerieRomance","GLOBAL",3600)
~ EXIT
END
END

INTERJECT BAERIE B2#AerW22b B2#ImAerCN1
  == BIMOEN2 IF ~IsValidForPartyDialog("IMOEN2")~ THEN
    @688
END BAERIE B2#AerW22f

INTERJECT BAERIE B2#AerW22d B2#ImAerCN2
  == BIMOEN2 IF ~IsValidForPartyDialog("IMOEN2")~ THEN
    @689
END BIMOEN2 B2#ImAerCN3

APPEND BIMOEN2
IF ~~ THEN BEGIN B2#ImAerCN3
  SAY @690
  IF ~~ THEN REPLY @691 GOTO B2#ImAerCN3a
  IF ~~ THEN REPLY @692 GOTO B2#ImAerCN3b
  IF ~~ THEN REPLY @693 GOTO B2#ImAerCN3c
  IF ~~ THEN REPLY @694 GOTO B2#ImAerCN3d
END

IF ~~ THEN BEGIN B2#ImAerCN3a
  SAY @695
  IF ~~ THEN GOTO B2#ImAerCN3e
END

IF ~~ THEN BEGIN B2#ImAerCN3b
  SAY @696
  IF ~~ THEN GOTO B2#ImAerCN3e
END

IF ~~ THEN BEGIN B2#ImAerCN3c
  SAY @697
  IF ~~ THEN GOTO B2#ImAerCN3e
END

IF ~~ THEN BEGIN B2#ImAerCN3d
  SAY @698
  IF ~~ THEN GOTO B2#ImAerCN3e
END

IF ~~ THEN BEGIN B2#ImAerCN3e
  SAY @699
  IF ~~ THEN EXTERN ~BAERIE~ B2#AerW22g
END

IF ~~ THEN BEGIN B2#ImAerCN3f
  SAY @700
  IF ~~ THEN EXTERN ~BAERIE~ B2#AerW22h
END

IF ~~ THEN BEGIN B2#ImAerCN3g
  SAY @701
  IF ~~ THEN EXTERN ~BAERIE~ B2#AerW22i
END
END

APPEND AERIEJ

IF ~Global("B2#AEJaheira","LOCALS",1)
~ THEN BEGIN B2#JahCur
  SAY @702
  IF ~~ THEN REPLY @703 GOTO B2#JahCura
  IF ~~ THEN REPLY @704 GOTO B2#JahCurb
  IF ~~ THEN REPLY @705 GOTO B2#JahCurc
END

IF ~~ THEN BEGIN B2#JahCura
  SAY @706
  IF ~~ THEN GOTO B2#JahCurb
END

IF ~~ THEN BEGIN B2#JahCurb
  SAY @707
  IF ~~ THEN GOTO B2#JahCurc
END

IF ~~ THEN BEGIN B2#JahCurc
  SAY @708
   IF ~~ THEN DO ~SetGlobal("B2#AEJaheira","LOCALS",2)~ EXIT
END

IF ~Global("B2#SlaverScum","LOCALS",1)
~ THEN BEGIN B2#Scum
  SAY @709
  IF ~~ THEN DO ~SetGlobal("B2#SlaverScum","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN B2#AerPhaer
  SAY @710
   = @711
  IF ~~ THEN EXIT
END
END

ALTER_TRANS AERIEJ
BEGIN 124 END
BEGIN 0 END
BEGIN
"REPLY"
~So? I don't have to explain myself to you, do I?~
"ACTION"
~SetGlobal("AerieMad2","LOCALS",1)~
"EPILOGUE"
~GOTO 125~
END

ALTER_TRANS CEFALD04
BEGIN 3 END
BEGIN 0 END
BEGIN
"TRIGGER"
~OR(3)
!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Cernd")~
END

ALTER_TRANS CEFALD04
BEGIN 3 END
BEGIN 1 END
BEGIN
"TRIGGER"
~IsValidForPartyDialog("Aerie")~
END

ALTER_TRANS CEFALD04
BEGIN 3 END
BEGIN 2 END
BEGIN
"TRIGGER"
~!IsValidForPartyDialog("Aerie")
IsValidForPartyDialog("Jaheira")~
END

ALTER_TRANS TREVIL02
BEGIN 5 END
BEGIN 0 END
BEGIN
"TRIGGER"
~OR(3)
!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Cernd")~
END

ALTER_TRANS TREVIL02
BEGIN 5 END
BEGIN 1 END
BEGIN
"TRIGGER"
~IsValidForPartyDialog("Aerie")~
END

ALTER_TRANS TREVIL02
BEGIN 5 END
BEGIN 2 END
BEGIN
"TRIGGER"
~!IsValidForPartyDialog("Aerie")
IsValidForPartyDialog("Jaheira")~
END

EXTEND_TOP AERIEJ 124
  IF ~~ THEN REPLY @712 DO ~SetGlobal("AerieMad3","LOCALS",1)~ GOTO B2#AerPhaer
END

EXTEND_TOP BAERIE 125
  IF ~Global("B2#TirAer","GLOBAL",5)~ THEN REPLY @713 GOTO B2#LT125
END

INTERJECT_COPY_TRANS GIRL2 5 B2#AerSlvGrl
  == AERIEJ   IF ~IsValidForPartyDialogue("AERIE")~ THEN
    @714
  == GIRL2    IF ~IsValidForPartyDialogue("AERIE")~ THEN
    @715
END