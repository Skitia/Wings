CHAIN
IF ~InParty("ANOMEN")
InParty("AERIE")
See("AERIE")
!StateCheck("AERIE",STATE_SLEEPING)
!Global("AnomenIsNotKnight","GLOBAL",1)
CombatCounter(0)
!See([ENEMY])
Global("B2#AnmnAer","GLOBAL",0)
~ THEN BANOMEN B2#AnmnAer @0
== BAERIE @1
== BANOMEN @2
== BAERIE @3
== BANOMEN @4
DO ~SetGlobal("B2#AnmnAer","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("ANOMEN")
InParty("AERIE")
See("AERIE")
!StateCheck("AERIE",STATE_SLEEPING)
Global("AnomenIsNotKnight","GLOBAL",1)
CombatCounter(0)
!See([ENEMY])
Global("B2#AnmnAer1","GLOBAL",0)
~ THEN BANOMEN B2#AnmnAer @5
== BAERIE @6
== BANOMEN @7
== BAERIE @8
DO ~SetGlobal("B2#AnmnAer1","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("CERND")
InParty("AERIE")
See("AERIE")
!StateCheck("AERIE",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("B2#CernAer","GLOBAL",0)
~ THEN BCERND B2#CernAer @9
== BAERIE @10
== BCERND @11
== BAERIE @12
== BCERND @13
== BAERIE @14
DO ~SetGlobal("B2#CerndAer","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("MAZZY")
InParty("AERIE")
See("AERIE")
!StateCheck("AERIE",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("B2#MazzAer","GLOBAL",0)
~ THEN BMAZZY B2#MazzAer @15
== BAERIE @16
== BMAZZY @17
== BAERIE @18
== BMAZZY @19
DO ~SetGlobal("B2#MazzAer","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("NALIA")
InParty("AERIE")
See("AERIE")
!StateCheck("AERIE",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("B2#NaliAer","GLOBAL",0)
~ THEN BNALIA B2#NaliAer @20
== BAERIE @21
== BNALIA @22
== BAERIE @23
== BNALIA @24
== BAERIE @25
== BNALIA @26
== BAERIE @27
== BNALIA @28
== BAERIE @29
DO ~SetGlobal("B2#NaliAer","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("AERIE")
InParty("YOSHIMO")
See("YOSHIMO")
!StateCheck("YOSHIMO",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("B2#YoshAer","GLOBAL",0)
~ THEN BAERIE B2#YoshAer @30
== BYOSHIM @31
== BAERIE @32
== BYOSHIM @33
== BAERIE @34  = @35
== BYOSHIM @36
== BAERIE @37
== BYOSHIM @38
== BAERIE @39
== BYOSHIM @40
DO ~SetGlobal("B2#YoshAer","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("AERIE")
InParty("RASAAD")
See("RASAAD")
!StateCheck("RASAAD",STATE_SLEEPING)
TimeOfDay(NIGHT)
AreaType(FOREST)
CombatCounter(0)
!See([ENEMY])
Global("B2#RasaAer","GLOBAL",0)
~ THEN BAERIE B2#RasaAer @41
== BRASAAD @42
== BAERIE @43
== BRASAAD @44
== BAERIE @45
== BRASAAD @46
== BAERIE @47
DO ~SetGlobal("B2#RasaAer","GLOBAL",1)~
EXIT

CHAIN
IF WEIGHT #-5
~Global("B2#NeerAer","GLOBAL",1)
InParty("NEERA")
InParty("AERIE")
~ THEN BNEERA B2#NeerAer1 @48
== BAERIE @49
== BNEERA @50
== BAERIE @51
== BNEERA @52
== BAERIE @53
== BNEERA @54
== BAERIE @55
== BNEERA @56
== BAERIE @57
== BNEERA @58
DO ~SetGlobal("B2#NeerAer","GLOBAL",2)
RestParty()
StartCutSceneMode()
StartCutScene("B2#cANA1")~
EXIT

CHAIN
IF WEIGHT #-4
~Global("B2#NeerAer","GLOBAL",3)
InParty("NEERA")
InParty("AERIE")
~ THEN BNEERA B2#NeerAer2 @59
== BAERIE @60
== BNEERA @61
== BAERIE @62
== BNEERA @63
== BAERIE @64
== BNEERA @65
== BAERIE @66
== BNEERA @67
== BAERIE @68
== BNEERA @69
== BAERIE @70
== BNEERA @71
 = @72
DO ~SetGlobal("B2#NeerAer","GLOBAL",4)
StartCutSceneMode()
StartCutScene("B2#cANA2")~
EXIT

CHAIN
IF WEIGHT #-3
~Global("B2#NeerAer","GLOBAL",5)
InParty("NEERA")
InParty("AERIE")
~ THEN BNEERA B2#NeerAer3 @73
== BAERIE @74
== BNEERA @75
== BAERIE @76
== BNEERA @77
== BAERIE @78
== BNEERA @79
DO ~SetGlobal("B2#NeerAer","GLOBAL",6)
StartCutSceneMode()
StartCutScene("B2#cANA3")~
EXIT

CHAIN
IF WEIGHT #-2
~Global("B2#NeerAer","GLOBAL",9)
InParty("NEERA")
InParty("AERIE")
~ THEN BNEERA B2#NeerAer5 @80
== BAERIE @81
DO ~SetGlobal("B2#NeerAer","GLOBAL",10)
StartCutSceneMode()
StartCutScene("B2#cANA5")~
EXIT

CHAIN
IF ~InParty("NEERA")
InParty("AERIE")
See("AERIE")
!StateCheck("AERIE",STATE_SLEEPING)
AreaType(FOREST)
CombatCounter(0)
!See([ENEMY])
Global("B2#NeerAerU","GLOBAL",0)
~ THEN BNEERA B2#NeerAerU @82
== BAERIE @83
== BNEERA @84
== BAERIE @85
== BNEERA @86
== BAERIE @87
== BNEERA @88
== BAERIE @89
DO ~SetGlobal("B2#NeerAerU","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("NEERA")
InParty("AERIE")
See("AERIE")
!StateCheck("AERIE",STATE_SLEEPING)
Global("OHN_aerie","GLOBAL",1)
CombatCounter(0)
!See([ENEMY])
Global("B2#NeerAerW","GLOBAL",0)
~ THEN BNEERA B2#NeerAerW @90
== BAERIE @91
== BNEERA @92
 = @93
== BAERIE @94
== BNEERA @95
== BAERIE @96
== BNEERA @97
DO ~SetGlobal("B2#NeerAerW","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("AERIE")
InParty("IMOEN2")
See("IMOEN2")
!StateCheck("IMOEN2",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("B2#ImnAerW","GLOBAL",0)
~ THEN BAERIE B2#ImnAerW1 @98
== BIMOEN2 @99
== BAERIE @100
== BIMOEN2 @101
== BAERIE @102
== BIMOEN2 @103 
== BAERIE @104
== BIMOEN2 @105
DO ~SetGlobal("B2#ImnAerW","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("AERIE")
InParty("IMOEN2")
See("IMOEN2")
!StateCheck("IMOEN2",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("B2#ImnAerW","GLOBAL",1)
~ THEN BAERIE B2#ImnAerW2 @106
== BIMOEN2 @107
== BAERIE @108
== BIMOEN2 @109
== BAERIE @110
== BIMOEN2 @111
== BAERIE @112
== BIMOEN2 @113
== BAERIE @114
== BIMOEN2 @115
== BAERIE @116
== BIMOEN2 @117
== BAERIE @118
== BIMOEN2 @119
== BAERIE @120
== BIMOEN2 @121
 = @122
 = @123
== BAERIE @124
== BIMOEN2 @125
DO ~SetGlobal("B2#ImnAerW","GLOBAL",2)~
EXIT

CHAIN
IF ~InParty("IMOEN2")
InParty("AERIE")
See("AERIE")
!StateCheck("AERIE",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("B2#ImnAerW","GLOBAL",2)
~ THEN BIMOEN2 B2#ImnAerW3 @126
== BAERIE @127
== BIMOEN2 @128
== BAERIE @129
== BIMOEN2 @130
== BAERIE @131
== BIMOEN2 @132
== BAERIE @133
== BIMOEN2 @134
== BAERIE @135
== BIMOEN2 @136
== BAERIE @137
== BIMOEN2 @138
== BAERIE @139
== BIMOEN2 @140
== BIMOEN2 @141
DO ~SetGlobal("B2#ImnAerW","GLOBAL",3)~
EXIT

CHAIN
IF ~InParty("AERIE")
InParty("IMOEN2")
See("IMOEN2")
!StateCheck("IMOEN2",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("B2#ImnAerW","GLOBAL",3)
~ THEN BAERIE B2#ImnAerW4 @142
== BIMOEN2 @143
== BAERIE @144
== BIMOEN2 @145
== BAERIE @146
== BIMOEN2 @147
== BAERIE @148
== BIMOEN2 @149
== BAERIE @150
== BIMOEN2 @151
== BAERIE @152
DO ~SetGlobal("B2#ImnAerW","GLOBAL",4)~
EXIT

CHAIN
IF ~InParty("IMOEN2")
InParty("AERIE")
See("AERIE")
!StateCheck("AERIE",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("B2#ImnAerW","GLOBAL",4)
~ THEN BIMOEN2 B2#ImnAerW5 @153
== BAERIE @154
== BIMOEN2 @155
== BAERIE @156
== BIMOEN2 @157
== BAERIE @158
== BIMOEN2 @159
== BAERIE @160
== BIMOEN2 @161
DO ~SetGlobal("B2#ImnAerW","GLOBAL",5)~
EXIT

CHAIN
IF ~InParty("VICONIA")
InParty("AERIE")
See("AERIE")
!StateCheck("AERIE",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("B2#VicAerWT","GLOBAL",0)
~ THEN BVICON25 B2#VicAerWT @162
== BAERIE25 @163
== BVICON25 @164
== BAERIE25 @165
== BAERIE25 @166
== BVICON25 @167
== BVICON25 @168
== BAERIE25 @169
== BVICON25 @170
== BAERIE25 @171
== BVICON25 @172
== BAERIE25 @89
== BVICON25 @173
DO ~SetGlobal("B2#VicAerWT","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("AERIE")
InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("JAHEIRA",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("B2#JaeAerWT","GLOBAL",0)
~ THEN BAERIE25 B2#JaeAerWT1 @174
== BJAHEI25 @175
== BAERIE25 @176
== BJAHEI25 @177
== BAERIE25 @178
== BJAHEI25 @179
== BAERIE25 @180
 = @181
== BJAHEI25 @182
== BAERIE25 @183
== BJAHEI25 @184
== BAERIE25 @185
== BJAHEI25 @186
DO ~SetGlobal("B2#JaeAerWT","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("AERIE")
InParty("EDWIN")
See("EDWIN")
!StateCheck("EDWIN",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("B2#EdwAer","GLOBAL",0)
~ THEN BAERIE25 B2#EdwAer @187
== BEDWIN25 @188
== BAERIE25 @189
== BEDWIN25 @190
== BAERIE25 @191
== BEDWIN25 @192
== BAERIE25 @193
== BEDWIN25 @194
== BAERIE25 @195
== BEDWIN25 @196
== BAERIE25 @197
== BEDWIN25 @198
== BAERIE25 @199
== BEDWIN25 @200
== BAERIE25 @201
DO ~SetGlobal("B2#EdwAer","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("KELDORN")
InParty("AERIE")
See("AERIE")
!StateCheck("AERIE",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("B2#KeldAer","GLOBAL",0)
~ THEN BKELDO25 B2#KeldAer @202
== BAERIE25 @203
== BKELDO25 @204
== BAERIE25 @205
== BKELDO25 @206
== BAERIE25 @207
== BKELDO25 @208
== BAERIE25 @209
== BKELDO25 @210
DO ~SetGlobal("B2#KeldAer","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("AERIE")
InParty("IMOEN2")
See("IMOEN2")
!StateCheck("IMOEN2",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("ExpBaerie9","LOCALS",1)
~ THEN BAERIE25 B2#ImnAerWT1 @211
== BIMOEN25 @212
== BAERIE25 @213
=  @214
== BIMOEN25 @215
== BAERIE25 @216
== BIMOEN25 @217
== BAERIE25 @218
== BIMOEN25 @219
== BAERIE25 @220
DO ~SetGlobal("B2#ImnAerWT","GLOBAL",1)
SetGlobal("ExpBaerie9","LOCALS",2)~
EXIT

CHAIN
IF ~InParty("AERIE")
InParty("IMOEN2")
See("IMOEN2")
!StateCheck("IMOEN2",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("B2#ImnAerWT","GLOBAL",1)
~ THEN BIMOEN25 B2#ImnAerWT2 @221
== BAERIE25 @222
== BIMOEN25 @223
== BAERIE25 @224
== BIMOEN25 @225
== BAERIE25 @226
== BIMOEN25 @227
== BAERIE25 @228
== BIMOEN25 @229
== BAERIE25 @230
== BIMOEN25 @231
== BAERIE25 @232
== BIMOEN25 @233
== BAERIE25 @234
== BAERIE25 @235
== BIMOEN25 @236
== BAERIE25 @237
== BAERIE25 @238
== BIMOEN25 @239
== BIMOEN25 @240
== BAERIE25 @241
== BIMOEN25 @242
== BAERIE25 @243
== BIMOEN25 @244
== BIMOEN25 @245
== BAERIE25 @246
== BIMOEN25 @247
== BAERIE25 @248
== BIMOEN25 @249
== BIMOEN25 @250
DO ~SetGlobal("B2#ImnAerWT","GLOBAL",2)~
EXIT

APPEND BAERIE
IF ~~ THEN BEGIN B2#AerKorg
  SAY @251
   = @252
  IF ~~ THEN EXTERN ~BKORGAN~ B2#AerKorg1
END
END

APPEND BKORGAN
IF ~~ THEN BEGIN B2#AerKorg1
  SAY @253
  IF ~~ THEN DO ~SetGlobal("BKorgan17","LOCALS",1)
~ EXIT
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN B2#AerAnom
  SAY @254
  IF ~~ THEN EXTERN ~BAERIE~ 27
END
END

ALTER_TRANS BKORGAN
BEGIN 34 END
BEGIN 0 END
BEGIN
"TRIGGER"
~OR(4)
Global("B2#AerieFriend","GLOBAL",1)
Global("B2#AerieFriend","GLOBAL",3)
Global("B2#AerieFriend","GLOBAL",4)
Global("AerieRomanceActive","GLOBAL",3)~
"ACTION"
~SetGlobal("BKorgan17","LOCALS",1)~
"EPILOGUE"
~EXTERN BAERIE 43~
END

EXTEND_TOP BKORGAN 34
  IF ~OR(3)
Global("B2#AerieFriend","GLOBAL",2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
~ THEN REPLY @255 DO ~SetGlobal("BKorgan17","LOCALS",1)~ EXTERN BAERIE B2#AerKorg
  IF ~OR(3)
Global("B2#AerieFriend","GLOBAL",2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
~ THEN REPLY @256 DO ~SetGlobal("BKorgan17","LOCALS",1)~ EXTERN BAERIE 43
END

ALTER_TRANS BANOMEN
BEGIN 6 END
BEGIN 0 END
BEGIN
"TRIGGER"
~OR(4)
Global("B2#AerieFriend","GLOBAL",1)
Global("B2#AerieFriend","GLOBAL",3)
Global("B2#AerieFriend","GLOBAL",4)
Global("AerieRomanceActive","GLOBAL",3)~
"EPILOGUE"
~EXTERN BAERIE 27~
END

EXTEND_TOP BANOMEN 6
  IF ~OR(3)
Global("B2#AerieFriend","GLOBAL",2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
~ THEN REPLY @257 GOTO B2#AerAnom
  IF ~OR(3)
Global("B2#AerieFriend","GLOBAL",2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
~ THEN REPLY @258 EXTERN BAERIE 27
END

ALTER_TRANS BANOMEN
BEGIN 7 END
BEGIN 0 END
BEGIN
"TRIGGER"
~OR(5)
Global("B2#AerieFriend","GLOBAL",1)
Global("B2#AerieFriend","GLOBAL",3)
Global("B2#AerieFriend","GLOBAL",4)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",3)~
"ACTION"
~SetGlobal("AnomenChasesAerie","GLOBAL",1)
SetGlobalTimer("AnomenAttacksAerie","GLOBAL",30)~
END

EXTEND_TOP BANOMEN 7
  IF ~OR(3)
Global("B2#AerieFriend","GLOBAL",2)
Global("AerieRomanceActive","GLOBAL",2)
~ THEN REPLY @259 DO ~SetGlobal("AnomenChasesAerie","GLOBAL",1)
SetGlobalTimer("AnomenAttacksAerie","GLOBAL",30)~ EXIT
END