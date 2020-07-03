BEGIN ~B2#Tira~

IF ~Global("B2#TirAer","GLOBAL",0)
InParty("AERIE")
See("AERIE")
~ THEN BEGIN B2#TirAer1
  SAY @0
  IF ~~ THEN EXTERN ~AERIEJ~ B2#TirAer1a
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#TirAer1a
  SAY @1
  IF ~~ THEN EXTERN ~B2#Tira~ B2#TirAer1b
END
END

APPEND B2#Tira
IF ~~ THEN BEGIN B2#TirAer1b
  SAY @2
  IF ~~ THEN EXTERN ~AERIEJ~ B2#TirAer1c
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#TirAer1c
  SAY @3
  IF ~~ THEN EXTERN ~B2#Tira~ B2#TirAer1d
END
END

APPEND B2#Tira
IF ~~ THEN BEGIN B2#TirAer1d
  SAY @4
   IF ~~ THEN DO ~SetGlobal("B2#TirAer","GLOBAL",1)~ EXIT
END

IF ~Global("B2#TirAer","GLOBAL",1)
InParty("AERIE")
See("AERIE")
GlobalTimerExpired("CircusEnded","GLOBAL")
~ THEN BEGIN B2#TirAer2
  SAY @5
  IF ~~ THEN EXTERN ~AERIEJ~ B2#TirAer2a
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#TirAer2a
  SAY @6
  IF ~~ THEN EXTERN ~B2#Tira~ B2#TirAer2b
END
END

APPEND B2#Tira
IF ~~ THEN BEGIN B2#TirAer2b
  SAY @7
  IF ~~ THEN EXTERN ~AERIEJ~ B2#TirAer2c
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#TirAer2c
  SAY @8
  IF ~~ THEN EXTERN ~B2#Tira~ B2#TirAer2d
END
END

APPEND B2#Tira
IF ~~ THEN BEGIN B2#TirAer2d
  SAY @9
  IF ~~ THEN EXTERN ~AERIEJ~ B2#TirAer2e
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#TirAer2e
  SAY @10
  IF ~~ THEN EXTERN ~B2#Tira~ B2#TirAer2f
END
END

APPEND B2#Tira
IF ~~ THEN BEGIN B2#TirAer2f
  SAY @11
   IF ~~ THEN DO ~SetGlobal("B2#TirAer","GLOBAL",2)~ EXIT
END

IF ~Global("B2#TirAer","GLOBAL",2)
InParty("AERIE")
See("AERIE")
GlobalTimerExpired("CircusEnded","GLOBAL")
~ THEN BEGIN B2#TirAer3
  SAY @12
  IF ~~ THEN EXTERN ~AERIEJ~ B2#TirAer3a
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#TirAer3a
  SAY @13
  IF ~~ THEN EXTERN ~B2#Tira~ B2#TirAer3b
END
END

APPEND B2#Tira
IF ~~ THEN BEGIN B2#TirAer3b
  SAY @14
  IF ~~ THEN EXTERN ~AERIEJ~ B2#TirAer3c
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#TirAer3c
  SAY @15
  IF ~~ THEN EXTERN ~B2#Tira~ B2#TirAer3d
END
END

APPEND B2#Tira
IF ~~ THEN BEGIN B2#TirAer3d
  SAY @16
  IF ~~ THEN EXTERN ~AERIEJ~ B2#TirAer3e
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#TirAer3e
  SAY @17
  IF ~~ THEN EXTERN ~B2#Tira~ B2#TirAer3f
END
END

APPEND B2#Tira
IF ~~ THEN BEGIN B2#TirAer3f
  SAY @18
  IF ~~ THEN EXTERN ~AERIEJ~ B2#TirAer3g
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#TirAer3g
  SAY @19
  IF ~~ THEN EXTERN ~B2#Tira~ B2#TirAer3h
END
END

APPEND B2#Tira
IF ~~ THEN BEGIN B2#TirAer3h
  SAY @20
  IF ~~ THEN EXTERN ~AERIEJ~ B2#TirAer3i
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#TirAer3i
  SAY @21
  IF ~~ THEN EXTERN ~B2#Tira~ B2#TirAer3j
END
END

APPEND B2#Tira
IF ~~ THEN BEGIN B2#TirAer3j
  SAY @22
   IF ~~ THEN DO ~SetGlobal("B2#TirAer","GLOBAL",3)~ EXIT
END

IF ~Global("B2#TirAer","GLOBAL",4)
InParty("AERIE")
See("AERIE")
~ THEN BEGIN B2#TirAer4
  SAY @23
  IF ~~ THEN EXTERN ~AERIEJ~ B2#TirAer4a
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#TirAer4a
  SAY @24
  IF ~~ THEN REPLY @25 GOTO B2#TirAer4b
  IF ~~ THEN REPLY @26 GOTO B2#TirAer4c
  IF ~~ THEN REPLY @27 GOTO B2#TirAer4d
END

IF ~~ THEN BEGIN B2#TirAer4b
  SAY @28
  IF ~~ THEN REPLY @26 GOTO B2#TirAer4c
END

IF ~~ THEN BEGIN B2#TirAer4c
  SAY @29
  IF ~~ THEN REPLY @27 GOTO B2#TirAer4d
END

IF ~~ THEN BEGIN B2#TirAer4d
  SAY @30
   = @31
  IF ~~ THEN GOTO B2#TirAer4e
END

IF ~~ THEN BEGIN B2#TirAer4e
  SAY @32
   IF ~~ THEN DO ~SetGlobal("B2#TirAer","GLOBAL",5)~ EXIT
END
END

APPEND B2#Tira
IF ~!GlobalTimerExpired("CircusEnded","GLOBAL")~ THEN BEGIN 1
  SAY @33
  IF ~~ THEN EXIT
END

IF ~Global("B2#TirAer","GLOBAL",5)~ THEN BEGIN 2
  SAY @23
  IF ~~ THEN EXIT
END

IF ~GlobalTimerExpired("CircusEnded","GLOBAL")~ THEN BEGIN 3
  SAY @34
  IF ~~ THEN EXIT
END
END