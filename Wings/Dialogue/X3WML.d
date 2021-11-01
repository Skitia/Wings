BEGIN X3WML 

CHAIN IF ~!PartyHasItem("X3WLet2")~ THEN X3WML OneBranch 
@0
DO ~SetGlobal("X3WMessage","LOCALS",1)SetGlobal("X3WingsQuest","GLOBAL",17)SetGlobalTimer("X3WingsTimer","GLOBAL",ONE_DAY)~
== AerieJ IF ~IsValidForPartyDialogue("Aerie")~ THEN @2
== X3WML IF ~IsValidForPartyDialogue("Aerie")~ THEN @3
== AerieJ IF ~IsValidForPartyDialogue("Aerie")~ THEN @4
== X3WML @5
END 
++ @6 + Slain
++ @7 + Silence
++ @8 + Find 

CHAIN X3WML Slain 
@9
EXTERN X3WML Battle 

CHAIN X3WML Silence 
@10 
EXTERN X3WML Battle 

CHAIN X3WML Find 
@11 
EXTERN X3WML Battle

CHAIN X3WML Battle
@12 
= @13 
DO ~AddJournalEntry(@10016,QUEST)Enemy()~
EXIT 



CHAIN IF ~PartyHasItem("X3WLet2")~ THEN X3WML PickBranch 
@1 
DO ~Enemy()~
EXIT 