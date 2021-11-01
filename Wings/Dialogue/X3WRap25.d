BEGIN X3WRap25

/*

*/

CHAIN IF ~!IsValidForPartyDialogue("Aerie")~ THEN X3WRap25 NoAerie
@0
EXIT 

CHAIN IF ~IsValidForPartyDialogue("Aerie")~ THEN X3WRap25 OnlyCon
@1
DO ~SetGlobal("B2#Rapt","GLOBAL",8)~
== Aerie25J @2 
== X3WRap25 @3 
== Aerie25J @4
== X3WRap25 @5 
== Aerie25J @6
DO ~AddJournalEntry(@30003,QUEST_DONE)SetInterrupt(FALSE)
		ClearAllActions()
		StartCutSceneMode()SmallWait(1)
CreateCreature("X3WLar25",[796.1882],N)
CreateCreature("X3WFRL",[1020.1868],N)
CreateCreature("X3WFRL",[1167.1823],N)
CreateCreature("X3WRE",[984.1794],N)
CreateCreature("X3WFME",[891.1837],N)
CreateCreature("X3WME",[707.1865],N)
CreateCreature("X3WCE",[1093.1841],N)StartCutScene("X3WCut07")~
EXIT





