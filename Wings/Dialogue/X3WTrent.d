BEGIN X3WTrent

CHAIN IF ~Global("X3WingsQuest","GLOBAL",6)~ THEN X3WTrent FirstMeet
@0 
DO ~SetGlobal("X3WingsQuest","GLOBAL",7)~
END 
++ @1 + T.1
++ @2 + T.1 
++ @3 + T.1 

CHAIN X3WTrent T.1 
@4 
END 
IF ~!Global("FreeSlaves","GLOBAL",1)~ EXTERN X3WTrent T.FreeSlaves
IF ~Global("FreeSlaves","GLOBAL",1)~ EXTERN X3WTrent T.FreedSlaves

CHAIN IF ~Global("X3WingsQuest","GLOBAL",7)Global("FreeSlaves","GLOBAL",1)~ THEN X3WTrent T.FinallyFreed 
@15
EXTERN X3WTrent T.Intro

CHAIN IF ~Global("X3WingsQuest","GLOBAL",8)~ THEN X3WTrent T.ChangeMind 
@49
END 
++ @50 EXTERN X3WTrent T.MoreInfo
++ @20 EXIT 

CHAIN X3WTrent T.FreeSlaves 
@6
END 
++ @7 + T.2
++ @8 + T.2 
++ @9 + T.3
++ @10 + T.4

CHAIN X3WTRent T.2 
@12 
DO ~AddJournalEntry(@10003,QUEST)EscapeAreaMove("AR0022",342,375,SE)~ 
EXIT 

CHAIN X3WTRent T.3 
@11 
DO ~AddJournalEntry(@10003,QUEST)~ 
EXIT 

CHAIN X3WTRent T.4
@13
DO ~AddJournalEntry(@10003,QUEST)~ 
EXIT 

CHAIN IF ~Global("X3WingsQuest","GLOBAL",7)!Global("FreeSlaves","GLOBAL",1)~ THEN X3WTrent NotReady 
@14 
EXIT 

CHAIN X3WTrent T.FreedSlaves 
@5
EXTERN X3WTrent T.Intro

CHAIN X3WTrent T.Intro
@16
DO ~SetGlobal("X3WingsQuest","GLOBAL",8)~
= @17
END 
++ @18 + T.MoreInfo
+~InParty("Aerie")~+ @19 + T.ForUsAerie
+~!InParty("Aerie")~+ @19 + T.ForUs 
++ @20 + T.NoTime

CHAIN X3WTrent T.MoreInfo 
@31 
DO ~SetGlobal("X3WingsQuest","GLOBAL",9)~
== MINSCJ IF ~IsValidForPartyDialogue("MINSC")~ THEN @47
== X3WTrent @32
= @33
== AERIEJ IF ~IsValidForPartyDialogue("Aerie")~ THEN @46
== NALIAJ IF ~IsValidForPartyDialogue("NALIA")~ THEN @37
== X3WTRENT @43
= @44
== MAZZYJ IF ~IsValidForPartyDialogue("Mazzy")~ THEN @40
== ANOMENJ IF ~IsValidForPartyDialogue("Anomen")~ THEN @36 
END 
IF ~AreaCheck("AR0400")~ EXTERN X3WTrent T.MeetCrooked 
IF ~!AreaCheck("AR0400")~ EXTERN X3WTrent T.MeetHere



CHAIN X3WTrent T.ForUsAerie 
@22 
= @24
== AERIEJ IF ~IsValidForPartyDialogue("Aerie")~ THEN @45
END 
++ @25 EXTERN X3WTrent T.MoreInfo 
++ @26 EXTERN X3WTrent T.Gold
++ @27 EXTERN X3WTrent T.NoTime

CHAIN X3WTrent T.ForUs 
@23 
= @24
END 
++ @25 EXTERN X3WTrent T.MoreInfo 
++ @26 EXTERN X3WTrent T.Gold
++ @27 EXTERN X3WTrent T.NoTime

CHAIN X3WTrent T.Gold 
@28
== JAHEIRAJ IF ~IsValidForPartyDialogue("JAHEIRA")~ THEN @38
END
++ @30 EXTERN X3WTrent T.Pay
++ @29 EXTERN X3WTrent T.NoTime

CHAIN X3WTrent T.Pay 
@48
DO ~GiveGoldForce(1000)~
EXTERN X3WTrent T.MoreInfo



CHAIN X3WTrent T.NoTime 
@21 
== MINSCJ IF ~IsValidForPartyDialogue("Minsc")~ THEN @39
END
IF ~AreaCheck("AR0400")~ EXTERN X3WTrent T.Crooked 
IF ~!AreaCheck("AR0400")~ EXTERN X3WTrent T.Stay

CHAIN X3WTrent T.Crooked 
@34 
DO ~EscapeAreaMove("AR0022",342,375,SE)~
EXIT 

CHAIN X3WTrent T.Stay 
@35
EXIT 

CHAIN X3WTrent T.MeetCrooked 
@51 
DO ~EscapeAreaMove("AR0022",342,375,SE)AddJournalEntry(@10004,QUEST)~
EXIT 


CHAIN X3WTrent T.MeetHere 
@41 
DO ~AddJournalEntry(@10004,QUEST)~
EXIT 

CHAIN IF ~GlobalGT("X3WingsQuest","GLOBAL",8)GlobalLT("X3WingsQuest","GLOBAL",14)~ THEN X3WTrent T.News
@52
END 
+~Global("X3WingsQuest","GLOBAL",12)PartyHasItem("X3WRod")~+ @54 DO ~SetGlobal("X3WingsQuest","GLOBAL",14)~ + HaveRod
+~Global("X3WingsQuest","GLOBAL",13)~+ @55 DO ~SetGlobal("X3WingsQuest","GLOBAL",14)~ + NoRod 
++ @53 EXIT 

CHAIN X3WTrent HaveRod 
@56
EXTERN X3WTrent Gem


CHAIN X3WTrent NoRod 
@57 
DO ~SetGlobal("X3WFail","GLOBAL",1)~
= @58
EXTERN X3WTrent Gem 

CHAIN X3WTrent Gem 
@59 
= @60 
END 
+~PartyHasItem("X3WRod")~+ @61 + AlreadyHasRod 
+~!PartyHasItem("X3WRod")~+ @62 + Counting
+~!PartyHasItem("X3WRod")~+ @66 + GemAsWell
++ @68 + Counting 
++ @69 + TombLocation
++ @72 + DealYourself

CHAIN X3WTrent AlreadyHasRod 
@63 
= @64 
END 
++ @68 + Counting 
++ @69 + TombLocation
++ @72 + DealYourself

CHAIN X3WTrent Counting 
@65
DO ~AddJournalEntry(@10013,QUEST)SetGlobalTimer("X3WingsTimer","GLOBAL",ONE_HOUR)~
END
IF ~IsValidForPartyDialogue("Aerie")~ EXTERN AerieJ DoBest 
IF ~!IsValidForPartyDialogue("Aerie")~ EXIT 

CHAIN X3WTrent GemAsWell 
@67
END 
++ @62 + Counting
++ @68 + Counting 
++ @69 + TombLocation
++ @72 + DealYourself

CHAIN X3WTrent TombLocation 
@70 
= @71
END 
+~PartyHasItem("X3WRod")~+ @61 + AlreadyHasRod 
+~!PartyHasItem("X3WRod")~+ @62 + Counting
+~!PartyHasItem("X3WRod")~+ @66 + GemAsWell
++ @68 + Counting 
++ @72 + DealYourself

CHAIN X3WTrent DealYourself 
@73 
= @74 
DO ~AddJournalEntry(@10013,QUEST)SetGlobalTimer("X3WingsTimer","GLOBAL",ONE_HOUR)~
END 
IF ~IsValidForPartyDialogue("Aerie")~ EXTERN AerieJ DoBest 
IF ~!IsValidForPartyDialogue("Aerie")~ EXIT 

CHAIN AerieJ DoBest 
@75
== X3WTrent @76 
== AerieJ @77 
== X3WTrent @78
== AerieJ @79 
== X3WTrent @80 
== AerieJ @81
== X3WTrent @82 
EXIT 

CHAIN IF ~Global("X3WingsQuest","GLOBAL",14)~ THEN X3WTrent WaitGem 
@83 
EXIT 

CHAIN IF ~Global("X3WingsQuest","GLOBAL",19)~ THEN X3WTrent PraxDefeated 
@84 
== AerieJ IF ~IsValidForPartyDialogue("Aerie")~ THEN @85
== X3WTrent IF ~IsValidForPartyDialogue("Aerie")~ THEN @86
END 
++ @87 EXTERN X3WTrent NotEasy
++ @88 EXTERN X3WTrent Raptair
++ @88 EXTERN X3WTrent NoOne
++ @89 EXTERN X3WTrent EvenIf

CHAIN X3WTrent NotEasy 
@90
EXTERN X3WTrent EvenIf 

CHAIN X3WTrent Raptair 
@91 
EXTERN X3WTrent EvenIf 

CHAIN X3WTrent NoOne
@92
EXTERN X3WTrent EvenIf 

CHAIN X3WTrent EvenIf
@93 
= @94 
END 
+~PartyHasItem("X3WArt")~+ @95 DO ~SetGlobal("X3WingsQuest","GLOBAL",20)AddJournalEntry(@10021,QUEST_DONE)TakePartyItem("X3WArt")AddexperienceParty(90000)~ + OutHere
+~PartyHasItem("X3WArt")~+ @96 DO ~SetGlobal("X3WingsQuest","GLOBAL",20)AddJournalEntry(@10020,QUEST_DONE)AddexperienceParty(75000)~ + KeepRod 
+~PartyHasItem("X3WArt")~+ @97 DO ~SetGlobal("X3WingsQuest","GLOBAL",20)AddJournalEntry(@10020,QUEST_DONE)AddexperienceParty(75000)~ + KeepRod 
+~!PartyHasItem("X3WArt")~+ @98 DO ~SetGlobal("X3WingsQuest","GLOBAL",20)AddJournalEntry(@10018,QUEST_DONE)AddexperienceParty(60000)~ + GetRod

CHAIN X3WTrent KeepRod 
@100
EXTERN X3WTrent OutHere 

CHAIN X3WTrent OutHere 
@101 
== X3WTrent IF ~IsValidForPartyDialogue("Aerie")~ THEN @102
== AerieJ IF ~IsValidForPartyDialogue("Aerie")~ THEN @103
== X3WTrent IF ~IsValidForPartyDialogue("Aerie")~ THEN @104
== X3WTrent @105 
DO ~EscapeArea()~
EXIT 

CHAIN X3WTrent GetRod 
@99 
EXTERN X3WTrent OutHere


