REPLACE BYOSHIM
IF ~Global("AerieRaised","LOCALS",2)~ THEN BEGIN 0
  SAY #2631
  IF ~~ THEN DO ~SetGlobal("AerieRaised","LOCALS",3)~ EXTERN ~BAERIE~ 17
END
END

REPLACE BAERIE
IF ~InParty(Myself)
InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("B2#AerJan","GLOBAL",0)~ THEN BEGIN 44
  SAY #2920
  IF ~~ THEN DO ~SetGlobal("B2#AerJan","GLOBAL",1)~ EXTERN ~BJAN~ 69
END
END

REPLACE BAERIE
IF ~InParty(Myself)
InParty("Minsc")
See("Minsc")
OR(2)
AreaType(FOREST)
AreaCheck("AR1900")
!StateCheck("Minsc",STATE_SLEEPING)
Global("B2#AerMin","GLOBAL",0)~ THEN BEGIN 76
  SAY #3137
  IF ~~ THEN DO ~SetGlobal("B2#AerMin","GLOBAL",1)~ EXTERN ~BMINSC~ 18
END
END