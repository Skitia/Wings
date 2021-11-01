BEGIN X3WRL 

CHAIN IF ~AreaCheck("AR0042")~ THEN X3WRL OnlyLines
@0 
== B2#Rapt @1 
== X3WRL @2 
= @3 
DO ~ActionOverride("B2#Rapt",MoveToPoint([208.591]))~
EXIT 