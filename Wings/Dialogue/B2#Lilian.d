BEGIN ~B2#Lili~

IF ~Global("B2#RapEnc","GLOBAL",2)
~ THEN BEGIN B2#LilAer1m
  SAY @0
  IF ~~ THEN EXTERN ~AERIEP~ B2#LilAer1n
END

APPEND AERIEP
IF ~~ THEN BEGIN B2#LilAer1n
  SAY @1
   = @2
  IF ~~ THEN GOTO B2#LilAer1a
END

IF WEIGHT #-7
~ Global("B2#RapEnc","GLOBAL",2)
~ THEN BEGIN B2#LilAer1
  SAY @3
  IF ~~ THEN GOTO B2#LilAer1a
END

IF ~~ THEN BEGIN B2#LilAer1a
  SAY @4
   = @5
   = @6
   = @7
  IF ~~ THEN REPLY @8 GOTO B2#LilAer1b
  IF ~~ THEN REPLY @9 GOTO B2#LilAer1c
  IF ~~ THEN REPLY @10 GOTO B2#LilAer1d
END

IF ~~ THEN BEGIN B2#LilAer1b
  SAY @11
  IF ~~ THEN EXTERN ~B2#Lili~ B2#LilAer1e
END

IF ~~ THEN BEGIN B2#LilAer1c
  SAY @12
  IF ~~ THEN EXTERN ~B2#Lili~ B2#LilAer1e
END

IF ~~ THEN BEGIN B2#LilAer1d
  SAY @13
  IF ~~ THEN EXTERN ~B2#Lili~ B2#LilAer1e
END
END

APPEND B2#Lili
IF ~~ THEN BEGIN B2#LilAer1e
  SAY @14
  IF ~~ THEN EXTERN ~AERIEP~ B2#LilAer1f
END
END

APPEND AERIEP
IF ~~ THEN BEGIN B2#LilAer1f
  SAY @15
  IF ~~ THEN EXTERN ~B2#Lili~ B2#LilAer1g
END
END

APPEND B2#Lili
IF ~~ THEN BEGIN B2#LilAer1g
  SAY @16
  IF ~~ THEN EXTERN ~AERIEP~ B2#LilAer1h
END
END

APPEND AERIEP
IF ~~ THEN BEGIN B2#LilAer1h
  SAY @17
   = @18
  IF ~~ THEN EXTERN ~B2#Lili~ B2#LilAer1i
END
END

APPEND B2#Lili
IF ~~ THEN BEGIN B2#LilAer1i
  SAY @19
   = @20
   = @21
   = @22
   = @23
  IF ~~ THEN EXTERN ~AERIEP~ B2#LilAer1j
END
END

APPEND AERIEP
IF ~~ THEN BEGIN B2#LilAer1j
  SAY @24
  IF ~~ THEN REPLY @25 GOTO B2#LilAer1k
  IF ~~ THEN REPLY @26 GOTO B2#LilAer1l
END

IF ~~ THEN BEGIN B2#LilAer1k
  SAY @27
  IF ~~ THEN GOTO B2#LilAer1m
END

IF ~~ THEN BEGIN B2#LilAer1l
  SAY @28
  IF ~~ THEN GOTO B2#LilAer1m
END

IF ~~ THEN BEGIN B2#LilAer1m
  SAY @29
  IF ~~ THEN EXTERN ~B2#Lili~ B2#LilAer1n
END
END

APPEND B2#Lili
IF ~~ THEN BEGIN B2#LilAer1n
  SAY @30
   = @31
   IF ~~ THEN EXTERN ~AERIEP~ B2#LilAer1o
END
END

APPEND AERIEP
IF ~~ THEN BEGIN B2#LilAer1o
  SAY @32
   = @33
  IF ~~ THEN DO ~SetGlobal("B2#RapEnc","GLOBAL",3)
JoinParty()
~ EXIT
END
END

APPEND B2#Lili
IF ~Global("B2#Lili","GLOBAL",0)
~ THEN BEGIN 0
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 1
  IF ~~ THEN REPLY @36 GOTO 2
  IF ~~ THEN REPLY @37 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @40
  IF ~~ THEN REPLY @39 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @41
  IF ~~ THEN REPLY @39 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @42
  = @43
  = @44
  = @45
  IF ~~ THEN REPLY @46 GOTO 5
  IF ~~ THEN REPLY @47 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @48
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @49
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @50
   = @51
   = @52
  IF ~~ THEN DO ~SetGlobal("B2#Lili","GLOBAL",1)
~ EXIT
END

IF ~GlobalGT("B2#Rapt","GLOBAL",1)
Global("B2#Lili","GLOBAL",1)
~ THEN BEGIN 8
  SAY @53
  = @54
  IF ~~ THEN DO ~SetGlobal("B2#Lili","GLOBAL",2)
~ EXIT
END

IF ~Global("B2#Lili","GLOBAL",1)
~ THEN BEGIN 9
  SAY @55
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global("B2#LilAer","GLOBAL",0)
GlobalGT("B2#Rapt","GLOBAL",2)
~ THEN BEGIN B2#LilAer2
  SAY @56
   = @57
  IF ~~ THEN EXTERN ~AERIEJ~ B2#LilAer2a
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#LilAer2a
  SAY @58
  IF ~~ THEN EXTERN ~B2#Lili~ B2#LilAer2b
END
END

APPEND B2#Lili
IF ~~ THEN BEGIN B2#LilAer2b
  SAY @59
   = @60
  IF ~~ THEN EXTERN ~AERIEJ~ B2#LilAer2c
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#LilAer2c
  SAY @61
  IF ~~ THEN EXTERN ~B2#Lili~ B2#LilAer2d
END
END

APPEND B2#Lili
IF ~~ THEN BEGIN B2#LilAer2d
  SAY @62
  IF ~~ THEN EXTERN ~AERIEJ~ B2#LilAer2e
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#LilAer2e
  SAY @63
  IF ~~ THEN EXTERN ~B2#Lili~ B2#LilAer2f
END
END

APPEND B2#Lili
IF ~~ THEN BEGIN B2#LilAer2f
  SAY @64
  IF ~~ THEN DO ~SetGlobal("B2#LilAer","GLOBAL",1)
~ EXIT
END

IF ~Global("B2#Lili","GLOBAL",2)
GlobalGT("B2#Rapt","GLOBAL",2)
~ THEN BEGIN 10
  SAY @65
  IF ~~ THEN REPLY @66 GOTO 11
  IF ~~ THEN REPLY @67 GOTO 16
END

IF ~~ THEN BEGIN 11
  SAY @68
  IF ~~ THEN REPLY @69 GOTO 12
  IF ~~ THEN REPLY @70 GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY @71
  IF ~~ THEN REPLY @72 GOTO 13
  IF ~~ THEN REPLY @73 GOTO 16
END

IF ~~ THEN BEGIN 13
  SAY @74
  IF ~~ THEN REPLY @75 GOTO 14
  IF ~~ THEN REPLY @73 GOTO 16
END

IF ~~ THEN BEGIN 14
  SAY @76
  IF ~~ THEN REPLY @77 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @78
  IF ~~ THEN DO ~SetGlobal("B2#Lili","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @79
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,1)~ THEN BEGIN 17
  SAY @80
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)~ THEN BEGIN 18
  SAY @81
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)~ THEN BEGIN 19
  SAY @82
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)~ THEN BEGIN 20
  SAY @83
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)~ THEN BEGIN 21
  SAY @84
  IF ~~ THEN EXIT
END
END