BEGIN X3WPM

CHAIN IF ~AreaCheck("AR1105")~ THEN X3WPM FirstConversation
@0
END 
IF ~IsValidForPartyDialogue("Minsc")~ EXTERN X3WPM MinscThere
IF ~!IsValidForPartyDialogue("Minsc")~ EXIT

CHAIN X3WPM MinscThere 
@1
== MinscJ @2
== X3WPM @3
== MinscJ @4
== X3WPM @5
= @6
END 
++ @7 + NotWaiting
++ @8 + Agreed
++ @9 + JustHamsters

CHAIN X3WPM NotWaiting 
@10
= @11 
DO ~AddJournalEntry(@40003,QUEST)SetGlobalTimer("X3WMinscTimer","GLOBAL",ONE_DAY)SetGlobal("X3WMinscQuest","GLOBAL",4)EscapeArea()~
EXIT 

CHAIN X3WPM Agreed
@12
= @13 
DO ~AddJournalEntry(@40003,QUEST)SetGlobalTimer("X3WMinscTimer","GLOBAL",ONE_DAY)SetGlobal("X3WMinscQuest","GLOBAL",4)EscapeArea()~
EXIT 

CHAIN X3WPM JustHamsters 
@14
= @15 
DO ~AddJournalEntry(@40003,QUEST)SetGlobalTimer("X3WMinscTimer","GLOBAL",ONE_DAY)SetGlobal("X3WMinscQuest","GLOBAL",4)EscapeArea()~
END 
IF ~IsValidForPartyDialogue("Aerie")~ EXTERN AerieJ AreYouSure
IF ~!IsValidForPartyDialogue("Aerie")~ EXTERN MinscJ Defer 

CHAIN AerieJ AreYouSure 
@16 
EXTERN MinscJ Defer 

CHAIN MinscJ Defer
@17
== JAHEIRAJ IF ~IsValidForPartyDialogue("Jaheira")~ THEN @18
== ANOMENJ IF ~IsValidForPartyDialogue("Anomen")~ THEN @19
== CERNDJ IF ~IsValidForPartyDialogue("Cernd")~ THEN @20
END 
++ @21 + MayAsWell 
++ @22 + MayAsWell 
++ @23 + Later

CHAIN MINSCJ MayAsWell
@24
EXIT 

CHAIN MINSCJ Later
@25
EXIT 

CHAIN IF ~AreaCheck("AR1100")!IsValidForPartyDialogue("Minsc")~ THEN X3WPM NoMinscAmbush
@26 
EXIT 

CHAIN IF ~AreaCheck("AR1100")IsValidForPartyDialogue("Minsc")~ THEN X3WPM MinscAmbush
@27 
== MinscJ @28 
== X3WPM @29
END 
++ @30 + MinscAmbush.1
++ @31 + MinscAmbush.2
++ @32 EXTERN MinscJ MinscAmbush.3

CHAIN X3WPM MinscAmbush.1
@42 
EXTERN MinscJ MinscAmbush.3

CHAIN X3WPM MinscAmbush.2 
@43 
EXTERN X3WPM MinscAmbush.4

CHAIN MinscJ MinscAmbush.3
@33
== X3WPM @34
== MinscJ @35
EXTERN X3WPM MinscAmbush.4

CHAIN X3WPM MinscAmbush.4
@36
= @37
== MinscJ @38 
== X3WPM @39
== X3WPM @40
== MinscJ @41
DO ~AddJournalEntry(@40004,QUEST_DONE)SetGlobal("X3WMinscQuest","GLOBAL",5)CreateCreature("X3WPR",[1420.2901],E)CreateCreature("X3WPR",[1419.2938],E)ReallyForceSpell(Myself,BERSERKER_RAGE)Attack("X3WPM")
~
EXIT 

CHAIN IF ~Global("X3WMinscQuest","GLOBAL",6)~ THEN MinscJ Resolution
@44
DO ~SetGlobal("X3WMinscQuest","GLOBAL",7)~
== JANJ IF ~IsValidForPartyDialogue("Jan")~ THEN @45
== AERIEJ IF ~IsValidForPartyDialogue("Aerie")~ THEN @46
== JAHEIRAJ IF ~IsValidForPartyDialogue("Jaheira")~ THEN @47
== YOSHJ IF ~IsValidForPartyDialogue("Yoshimo")~ THEN @48
== KELDORJ IF ~IsValidForPartyDialogue("Keldorn")~ THEN @49
== ANOMENJ IF ~IsValidForPartyDialogue("Anomen")~ THEN @50
EXIT 