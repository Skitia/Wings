BEGIN ~B2#Artis~

IF ~Global("B2#NeerAer","GLOBAL",7)
~ THEN BEGIN B2#NeerAer4
  SAY @0
  IF ~~ THEN EXTERN ~BNEERA~ B2#NeerAer4a
END

APPEND BNEERA
IF ~~ THEN BEGIN B2#NeerAer4a
  SAY @1
  IF ~~ THEN EXTERN ~B2#Artis~ B2#NeerAer4b
END
END

APPEND B2#Artis
IF ~~ THEN BEGIN B2#NeerAer4b
  SAY @2
IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("B2#cANA4")~
EXIT
END
END

APPEND BNEERA
IF WEIGHT #-1
~Global("B2#NeerAer","GLOBAL",11)
InParty("NEERA")
InParty("AERIE")
~THEN BEGIN B2#NeerAer4c
  SAY @3
IF ~~ THEN DO ~SetGlobal("B2#NeerAer","GLOBAL",12)
EndCutSceneMode()~
EXIT
END
END