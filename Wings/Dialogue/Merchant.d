//Galoomp the BookKeeper
EXTEND_BOTTOM SHOP08 0
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN SHOP08 No 
@1
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN SHOP08 Yes
@2
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Hes
EXTEND_BOTTOM SHOP06 0
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP06 12
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP06 11
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP06 10
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP06 9
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP06 8
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP06 7
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP06 6
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP06 4
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP06 3
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END



CHAIN SHOP06 No 
@3
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN SHOP06 Yes
@4
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Enge
EXTEND_BOTTOM SHOP04 0
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP04 2
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP04 4
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN SHOP04 No 
@5
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN SHOP04 Yes
@6
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Arnolinus
EXTEND_BOTTOM SHOP02 0
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP02 2
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP02 4
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN SHOP02 No 
@7
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN SHOP02 Yes
@8
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Perter
EXTEND_BOTTOM SHOP05 0
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP05 2
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP05 4
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN SHOP05 No 
@9
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN SHOP05 Yes
@10
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT
//Storekeep (Find with Maheer)
EXTEND_BOTTOM SHOP03 14
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP03 8
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP03 4
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP03 2
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP03 0
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN SHOP03 No 
@11
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN SHOP03 Yes
@12
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Mira
EXTEND_BOTTOM SHOP01 10
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP01 9
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP01 8
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP01 7
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP01 6
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP01 4
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP01 3
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SHOP01 2
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN SHOP01 No 
@13
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN SHOP01 Yes
@14
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Storekeep 'Allo Lady!
EXTEND_BOTTOM SHOP07 0
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN SHOP07 No 
@15
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN SHOP07 Yes
@16
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Ribald
EXTEND_BOTTOM RIBALD 0
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN RIBALD No 
@17
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN RIBALD Yes
@18
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Deidre
EXTEND_BOTTOM WMART2 1
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN WMART2 No 
@19
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN WMART2 Yes
@20
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Lady Yuth
EXTEND_BOTTOM SCROLL01 0
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM SCROLL01 3
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END


EXTEND_BOTTOM SCROLL01 8
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END


CHAIN SCROLL01 No 
@21
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN SCROLL01 Yes
@22
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Bel Dalemark
EXTEND_BOTTOM MERCHANT 0
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM MERCHANT 2
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END


EXTEND_BOTTOM MERCHANT 6
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END


CHAIN MERCHANT No 
@23
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN MERCHANT Yes
@24
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Joluv
EXTEND_BOTTOM WMART1 1
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN WMART1 No 
@25
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN WMART1 Yes
@26
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Ikert
EXTEND_BOTTOM DSHOP01 0
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM DSHOP01 1
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM DSHOP01 3
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM DSHOP01 4
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM DSHOP01 6
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM DSHOP01 8
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM DSHOP01 10
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM DSHOP01 11
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN DSHOP01 No 
@27
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN DSHOP01 Yes
@28
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Gorch
EXTEND_BOTTOM GORCH 0
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM GORCH 1
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM GORCH 3
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN GORCH No 
@29
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN GORCH Yes
@30
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Min Minling
EXTEND_BOTTOM UHMER02 6
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM UHMER02 2
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM UHMER02 0
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN UHMER02 No 
@31
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN UHMER02 Yes
@32
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Elence Fieldling
EXTEND_BOTTOM UHMER01 1
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM UHMER01 4
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM UHMER01 8
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM UHMER01 11
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM UHMER01 14
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN UHMER01 No 
@33
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN UHMER01 Yes
@34
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Beherant Diir
EXTEND_BOTTOM UHMER03 0
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM UHMER03 3
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM UHMER03 7
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM UHMER03 10
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN UHMER03 No 
@35
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN UHMER03 Yes
@36
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Wallace
EXTEND_BOTTOM WALL1 7
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN WALL1 No 
@37
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN WALL1 Yes
@38
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Merchant (Find with "than welcome to buy as you please.")
EXTEND_BOTTOM TRMER02 0
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM TRMER02 5
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM TRMER02 6
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM TRMER02 10
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM TRMER02 14
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM TRMER02 16
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN TRMER02 No 
@39
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN TRMER02 Yes
@40
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT 
//Caravan Merchant 
EXTEND_BOTTOM TRCAR04 2
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN TRCAR04 No 
@41
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN TRCAR04 Yes
@42
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT
//Blacksmith 
EXTEND_BOTTOM TRMER04 3
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

EXTEND_BOTTOM TRMER04 7
+~GlobalLT("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + No
+~Global("X3WMinscQuestCounter","GLOBAL",3)Global("X3WMinscQuest","GLOBAL",2)
Global("X3WMinscQuest","LOCALS",0)~ + @0 + Yes
END

CHAIN TRMER04 No 
@43
DO ~SetGlobal("X3WMinscQuest","LOCALS",1)IncrementGlobal("X3WMinscQuestCounter","GLOBAL",1)~
EXIT 

CHAIN TRMER04 Yes
@44
DO ~SetGlobal("X3WMinscQuest","GLOBAL",3)AddJournalEntry(@40002,QUEST)~
EXIT