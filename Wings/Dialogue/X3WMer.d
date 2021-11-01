BEGIN X3WMer

/*
There are Two Main Routes: The Pretend to be Laravyl Route, and the normal one.
Pretending to be Laravyl works for any Female PC or non-evil female NPC. They will have to kill a guard however, and lose two points of reputation when he dies.
It's also the only route where you can get the rod before Laravyl, so long as you go there quickly.
If they're too slow on any route, they will be dead ahead of time.
On the normal route, they must do a favor first.

*/


CHAIN IF ~Global("X3WingsQuest","GLOBAL",9)~ THEN X3WMer FirstCon
@0
END 
++ @1 + Interest 
++ @2 + Interest
++ @3 EXIT 

CHAIN X3WMer Interest 
@4
END 
+~Gender(LastTalkedToBy,FEMALE)!IsGabber("Imoen")!IsGabber("Aerie")!IsGabber("Jaheira")!IsGabber("Nalia")!IsGabber("Mazzy")!IsGabber("X3Reb")!IsGabber("X3Emi")~+ @5 + PraxisSendEF 
+~OR(8)!Gender(LastTalkedToBy,FEMALE)IsGabber("Imoen")IsGabber("Aerie")IsGabber("Jaheira")IsGabber("Nalia")IsGabber("Mazzy")IsGabber("X3Reb")IsGabber("X3Emi")~+ @5 + PraxisSend

CHAIN X3WMer PraxisSend
@6
EXTERN X3WMer Rod

CHAIN X3WMer PraxisSendEF 
@7
END 
++ @8 + HadMeWorried
++ @9 + PretendLaravyl
++ @10 + PretendLaravyl

CHAIN X3WMer HadMeWorried 
@11
EXTERN X3WMer Rod 

CHAIN X3WMer PretendLaravyl
@12
== MAZZYJ IF ~IsValidForPartyDialogue("MAZZY")~ THEN @13
== AERIEJ IF ~IsValidForPartyDialogue("Aerie")~ THEN @14
END 
++ @15 EXTERN X3WMer PretendLaravylMoney
++ @16 EXTERN X3WMer PretendLaravylRoute
++ @17 EXTERN X3WMer PretendLaravylConfess

CHAIN X3WMer PretendLaravylMoney 
@18
END 
++ @16 + PretendLaravylRoute
++ @17 + PretendLaravylConfess

CHAIN X3WMer PretendLaravylConfess 
@19
EXTERN X3WMer Rod 

CHAIN X3WMer PretendLaravylRoute
@20 
= @21
DO ~AddJournalEntry(@10008,QUEST)SetGlobal("X3WingsQuest","GLOBAL",11)SetGlobalTimer("X3WingsTimer","GLOBAL","ONE_HOUR")SetGlobal("X3WingsLRoute","GLOBAL",1)EscapeAreaMove("AR0400",346,2085,SW)~ 
== KELDORJ IF ~IsValidForPartyDialogue("KELDORN")~ THEN @22
EXIT 

CHAIN X3WMer Rod 
@23
END 
++ @24 + MaybeSomething
++ @25 + MaybeSomething
++ @26 + IKnow

CHAIN X3WMer IKnow 
@27
EXTERN X3WMer MaybeSomething

CHAIN X3WMer MaybeSomething 
@28
= @29
= @30
== AERIEJ IF ~IsValidForPartyDialogue("Aerie")~ THEN @31
END 
++ @32 EXTERN X3WMer Deal
++ @33 EXTERN X3WMer Deal
++ @34 EXTERN X3WMer NothingElse 

CHAIN X3WMer NothingElse 
@35
DO ~AddJournalEntry(@10006,QUEST)SetGlobal("X3WingsQuest","GLOBAL",10)~ EXIT 

CHAIN X3WMer Deal
@36
DO ~AddJournalEntry(@10006,QUEST)SetGlobal("X3WingsQuest","GLOBAL",10)~ EXIT 

CHAIN X3WMer Nolens
@37
DO ~AddJournalEntry(@10006,QUEST)SetGlobal("X3WingsQuest","GLOBAL",10)~ EXIT 

CHAIN IF ~Global("X3WingsQuest","GLOBAL",10)~ THEN X3WMer lens
@38 
END 
+~PartyHasItem("X3WLens")~+ @39 + lensGiven 
++ @40 + Nolens

CHAIN X3WMer lensGiven 
@41
DO ~TakePartyItem("X3WLens")DestroyItem("X3WLens")~
= @42
DO ~SetGlobalTimer("X3WingsTimer","GLOBAL","ONE_HOUR")AddJournalEntry(@10010,QUEST)SetGlobal("X3WingsQuest","GLOBAL",11)EscapeAreaMove("AR0400",346,2085,SW)~ EXIT 

//Laravyl Route Conclusion
CHAIN IF ~Global("X3WingsQuest","GLOBAL",12)Global("X3WingsLRoute","GLOBAL",1)~ THEN X3WMer PretendLaravylBetrayal
@43
END 
++ @44 + PretendLaravylBetrayUs 
++ @45 + PretendLaravylGoodGuards 
++ @46 + PretendLaravylGoodGuards  

CHAIN X3WMer PretendLaravylBetrayUs
@47
EXTERN X3WMer PretendLaravylGoodGuards 

CHAIN X3WMer PretendLaravylGoodGuards 
@48
DO ~AddJournalEntry(@10009,QUEST)Enemy()ActionOverride("X3WG",Enemy())ActionOverride("X3WGD",Enemy())ReputationInc(-2)~ EXIT 

//Non Laravyl Route LIne 
CHAIN IF ~Global("X3WingsQuest","GLOBAL",12)!Global("X3WingsLRoute","GLOBAL",1)~ THEN X3WMer StandardRoute
@49
END 
++ @50 + Talking
++ @51 + Talking
++ @52 + Handle 

CHAIN X3WMer Talking
@53
DO ~PlaySound("ACT_07")		SetInterrupt(FALSE)
		ClearAllActions()
		StartCutSceneMode()SmallWait(1)CreateCreature("X3WLara",[138.1794],SW)
CreateCreature("X3WFRL",[297.2346],NE)
CreateCreature("X3WME",[278.2341],NE)
CreateCreature("X3WFME",[207.1781],SW)
CreateCreature("X3WFMM",[351.1910],SW)
CreateCreature("X3WRM",[163.2300],NE)
CreateCreature("X3WRM",[411.2259],NW)
CreateCreature("X3WFRM",[307.1783],SW)
CreateCreature("X3WFMM",[86.1931],SE)StartCutScene("X3WCut03")~ EXIT 

CHAIN X3WMer Handle 
@54
DO ~PlaySound("ACT_07")SetInterrupt(FALSE)
		ClearAllActions()
		StartCutSceneMode()SmallWait(1)CreateCreature("X3WLara",[138.1794],SW)
CreateCreature("X3WFRL",[297.2346],NE)
CreateCreature("X3WME",[278.2341],NE)
CreateCreature("X3WFME",[207.1781],SW)
CreateCreature("X3WFMM",[351.1910],SW)
CreateCreature("X3WRM",[163.2300],NE)
CreateCreature("X3WRM",[411.2259],NW)
CreateCreature("X3WFRM",[307.1783],SW)
CreateCreature("X3WFMM",[86.1931],SE)StartCutScene("X3WCut03")~ EXIT 





