CHAIN IF ~Global("X3WAvenger","LOCALS",1)~ THEN Aerie25J LaravylKilled
@0
DO ~AddexperienceParty(80000)AddJournalEntry(@20001,QUEST_DONE)SetGlobal("X3WAvenger","LOCALS",2)~
END 
++ @1 + TheyAreAlive 
++ @2 + NothingMore
++ @3 + NoMoreHurt

CHAIN Aerie25J TheyAreAlive
@4 
END 
IF ~Global("AerieRomanceActive","GLOBAL",2)~ EXTERN Aerie25J Romance
IF ~!Global("AerieRomanceActive","GLOBAL",2)~ EXTERN Aerie25J NoRomance

CHAIN Aerie25J NothingMore
@5 
END 
IF ~Global("AerieRomanceActive","GLOBAL",2)~ EXTERN Aerie25J Romance
IF ~!Global("AerieRomanceActive","GLOBAL",2)~ EXTERN Aerie25J NoRomance

CHAIN Aerie25J NoMoreHurt
@6 
END 
IF ~Global("AerieRomanceActive","GLOBAL",2)~ EXTERN Aerie25J Romance
IF ~!Global("AerieRomanceActive","GLOBAL",2)~ EXTERN Aerie25J NoRomance


CHAIN Aerie25J Romance
@7 
END 
++ @9 + ESUR.1
++ @10 + ESUR.2
++ @11 + ESUR.3

CHAIN Aerie25J ESUR.1
@12
EXIT 

CHAIN Aerie25J ESUR.2
@13 
EXIT 

CHAIN Aerie25J ESUR.3
@14
EXIT 


CHAIN Aerie25J NoRomance
@8
END 
++ @15 + ESUNR.1
++ @16 + ESUNR.2
++ @17 + ESUNR.3

CHAIN Aerie25J ESUNR.2
@18
EXIT 

CHAIN Aerie25J ESUNR.1
@19 
EXIT 

CHAIN Aerie25J ESUNR.3
@20
EXIT 