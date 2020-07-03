APPEND AERIE25J

IF ~Global("B2#Amml25","GLOBAL",1)~ THEN BEGIN B2#AerAml21
  SAY @0
   = @1
   = @2
  IF ~~ THEN DO ~SetGlobal("B2#Amml25","GLOBAL",2)
StartCutSceneMode()
StartCutScene("B2#cAF25")
~ EXIT
END
END

BEGIN ~B2#AML25~

IF ~Global("B2#Amml25","GLOBAL",2)
~ THEN BEGIN 0
  SAY @3
  IF ~~ THEN EXTERN ~AERIE25J~ B2#AerAml22
END

APPEND AERIE25J
IF ~~ THEN BEGIN B2#AerAml22
  SAY @4
  IF ~~ THEN EXTERN ~B2#AML25~ 1
END
END

APPEND B2#AML25
IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN EXTERN ~AERIE25J~ B2#AerAml23
END
END

APPEND AERIE25J
IF ~~ THEN BEGIN B2#AerAml23
  SAY @6
   = @7
  IF ~~ THEN EXTERN ~B2#AML25~ 2
END
END

APPEND B2#AML25
IF ~~ THEN BEGIN 2
  SAY @8
  IF ~~ THEN EXTERN ~AERIE25J~ B2#AerAml24
END
END

APPEND AERIE25J
IF ~~ THEN BEGIN B2#AerAml24
  SAY @9
   = @10
   = @11
  IF ~PartyHasItem("B2#AMMJ")~ THEN EXTERN ~B2#AML25~ 3
  IF ~PartyHasItem("B2#AMMK")~ THEN EXTERN ~B2#AML25~ 4
  IF ~!PartyHasItem("B2#AMMJ")
!PartyHasItem("B2#AMMK")~ THEN EXTERN ~B2#AML25~ 5
END
END

APPEND B2#AML25
IF ~~ THEN BEGIN 3
  SAY @12
  IF ~~ THEN DO ~SetGlobal("B2#Amml25","GLOBAL",3)
CreateVisualEffectObject("SPFLSRIN",Myself)
SetGlobal("B2#AmmlSum","GLOBAL",0)
ActionOverride("AERIE",TransformItem("B2#AMMJ","B2#AMJ25"))
EndCutSceneMode()
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @12
  IF ~~ THEN DO ~SetGlobal("B2#Amml25","GLOBAL",3)
CreateVisualEffectObject("SPFLSRIN",Myself)
SetGlobal("B2#AmmlSum","GLOBAL",0)
ActionOverride("AERIE",TransformItem("B2#AMMK","B2#AMJ25"))
EndCutSceneMode()
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN DO ~SetGlobal("B2#Amml25","GLOBAL",3)
CreateVisualEffectObject("SPFLSRIN",Myself)
SetGlobal("B2#AmmlSum","GLOBAL",0)
GiveItemCreate("B2#AMJ25","AERIE",0,0,0)
EndCutSceneMode()
DestroySelf()
~ EXIT
END
END

APPEND B2#AML25
IF ~Global("B2#Amml25","GLOBAL",3)
!Name("Aerie",LastTalkedToBy)~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN DO ~MoveToObject("AERIE")~ EXIT
END
END

INTERJECT B2#AML25 6 B2#AerAml25
  == AERIE25J IF ~IsValidForPartyDialog("AERIE")~ THEN
    @2
END B2#AML25 7

APPEND B2#AML25
IF ~~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN DO ~MoveToObject("AERIE")~ EXIT
END

IF ~Global("B2#Amml25","GLOBAL",3)
Name("Aerie",LastTalkedToBy)~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY @17 GOTO 24
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY @17 GOTO 25
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @20 GOTO 20
  IF ~~ THEN REPLY @21 GOTO 19
END

IF ~~ THEN BEGIN 9
  SAY @22
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 19
  IF ~~ THEN REPLY @20 GOTO 20
END

IF ~~ THEN BEGIN 10
  SAY @23
  IF ~True()~ THEN EXIT
  IF ~Global("chapter","GLOBAL",8)~ THEN GOTO 21
  IF ~Global("chapter","GLOBAL",9)~ THEN GOTO 22
  IF ~Global("chapter","GLOBAL",10)~ THEN GOTO 23
END

IF ~~ THEN BEGIN 11
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @26
  IF ~HPLT(Myself,48)
!HPLT(Myself,24)~ THEN GOTO 13
  IF ~HPLT(Myself,24)~ THEN GOTO 14
  IF ~!HPLT(Myself,48)
RandomNum(4,1)~ THEN GOTO 15
  IF ~!HPLT(Myself,48)
RandomNum(4,2)~ THEN GOTO 16
  IF ~!HPLT(Myself,48)
RandomNum(4,3)~ THEN GOTO 17
  IF ~!HPLT(Myself,48)
RandomNum(4,4)~ THEN GOTO 18
END

IF ~~ THEN BEGIN 13
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY @28
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
  SAY @29
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY @30
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY @31
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY @32
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY @33
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20
  SAY @34
  IF ~~ THEN DO ~GivePartyAllEquipment()
SetGlobal("B2#AmmlSum","GLOBAL",0)
ActionOverride("AERIE",TransformItem("B2#AMMK","B2#AMJ25"))
Rest()
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @35
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22
  SAY @36
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23
  SAY @37
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24
  SAY @38
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25
  SAY @39
  IF ~~ THEN DO ~ApplySpell(Myself,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END
END