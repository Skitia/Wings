APPEND QCIRC01

IF WEIGHT #-17
~RandomNum(9,1)
Global("B2#TirAer","GLOBAL",5)
~ THEN BEGIN B2#CircTir1
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #-16
~RandomNum(9,2)
Global("B2#TirAer","GLOBAL",5)
~ THEN BEGIN B2#CircTir2
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #-15
~RandomNum(9,3)
Global("B2#TirAer","GLOBAL",5)
~ THEN BEGIN B2#CircTir3
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #-14
~RandomNum(9,4)
Global("B2#TirAer","GLOBAL",5)
~ THEN BEGIN B2#CircTir4
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #-13
~RandomNum(9,5)
Global("B2#TirAer","GLOBAL",5)
~ THEN BEGIN B2#CircTir5
  SAY @4
  IF ~~ THEN EXIT
END

IF WEIGHT #-12
~RandomNum(9,6)
Global("B2#TirAer","GLOBAL",5)
~ THEN BEGIN B2#CircTir6
  SAY @5
  IF ~~ THEN EXIT
END

IF WEIGHT #-11
~RandomNum(9,7)
Global("B2#TirAer","GLOBAL",5)
~ THEN BEGIN B2#CircTir7
  SAY @6
  IF ~~ THEN EXIT
END

IF WEIGHT #-10
~RandomNum(9,8)
Global("B2#TirAer","GLOBAL",5)
~ THEN BEGIN B2#CircTir8
  SAY @7
  IF ~~ THEN EXIT
END

IF WEIGHT #-9
~RandomNum(9,9)
Global("B2#TirAer","GLOBAL",5)
~ THEN BEGIN B2#CircTir9
  SAY @8
  IF ~~ THEN EXIT
END

IF WEIGHT #-8
~InParty("AERIE")
!GlobalTimerExpired("CircusEnded","GLOBAL")
Global("B2#Circ","GLOBAL",0)
~ THEN BEGIN 1A
  SAY @9
  IF ~~ THEN DO ~SetGlobal("B2#Circ","GLOBAL",1)~ EXIT
END

IF WEIGHT #-7
~InParty("AERIE")
!GlobalTimerExpired("CircusEnded","GLOBAL")
Global("B2#Circ","GLOBAL",1)
~ THEN BEGIN 2A
  SAY @10
  IF ~~ THEN DO ~SetGlobal("B2#Circ","GLOBAL",2)~ EXIT
END

IF WEIGHT #-6
~InParty("AERIE")
!GlobalTimerExpired("CircusEnded","GLOBAL")
Global("B2#Circ","GLOBAL",2)
~ THEN BEGIN 3A
  SAY @11
  IF ~~ THEN DO ~SetGlobal("B2#Circ","GLOBAL",3)~ EXIT
END

IF WEIGHT #-5
~InParty("AERIE")
!GlobalTimerExpired("CircusEnded","GLOBAL")
Global("B2#Circ","GLOBAL",3)
~ THEN BEGIN 4A
  SAY @12
  IF ~~ THEN DO ~SetGlobal("B2#Circ","GLOBAL",4)~ EXIT
END

IF WEIGHT #-4
~InParty("AERIE")
GlobalTimerExpired("CircusEnded","GLOBAL")
Global("B2#Circ2","GLOBAL",0)
~ THEN BEGIN 5A
  SAY @13
  IF ~~ THEN DO ~SetGlobal("B2#Circ2","GLOBAL",1)~ EXIT
END

IF WEIGHT #-3
~InParty("AERIE")
GlobalTimerExpired("CircusEnded","GLOBAL")
Global("B2#Circ2","GLOBAL",1)
~ THEN BEGIN 6A
  SAY @14
  IF ~~ THEN DO ~SetGlobal("B2#Circ2","GLOBAL",2)~ EXIT
END

IF WEIGHT #-2
~InParty("AERIE")
GlobalTimerExpired("CircusEnded","GLOBAL")
Global("B2#Circ2","GLOBAL",2)
~ THEN BEGIN 7A
  SAY @15
  IF ~~ THEN DO ~SetGlobal("B2#Circ2","GLOBAL",3)~ EXIT
END

IF WEIGHT #-1
~InParty("AERIE")
GlobalTimerExpired("CircusEnded","GLOBAL")
Global("B2#Circ2","GLOBAL",3)
~ THEN BEGIN 8A
  SAY @16
  IF ~~ THEN DO ~SetGlobal("B2#Circ2","GLOBAL",4)~ EXIT
END

END