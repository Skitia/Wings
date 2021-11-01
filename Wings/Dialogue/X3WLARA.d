BEGIN X3WLARA
BEGIN X3WPrax

CHAIN
IF ~Global("X3WingsQuest","GLOBAL",3)~ THEN X3WLARA CutsceneCon1
@0 // ~Well, well, the very troublemakers who are interfering with our business gracing us with their presence. Tymora shines us on, and Beshaba laughs at you.~
END 
IF ~IsValidForPartyDialogue("Aerie")~ + AerieBranch 
++ @1 + C.1 // ~I have no tolerance for slavers. Get out of our sight.~
++ @2 + C.2 // ~We have no quarrel with you. Let us be on our separate ways.~
++ @3 + C.3 // ~Surrender yourselves to me, lest you all be slain!~

CHAIN X3WLara C.4
@4 // ~I am Laravyl, the sharpest archer you will ever meet. I have shot down an Avariel flying far away in the sky, I have killed three soldiers with a single arrow, and brought hundreds of slaves in chains into Althkata for far more coins than you have ever seen in your lifetime. You simply would not even be a fun challenge for me.~
= @5 // ~My men, on the other hand, could use a bit of practice. Get rid of them, and let their corpses rot on the street like the trash they are.~
DO ~SetGlobal("X3WingsQuest","GLOBAL",4)SetGlobalTimer("X3WingsTimer","GLOBAL",ONE_DAY)CreateCreatureObject("X3WRM",Player1,6,6,6)PlaySound("ACT_07")MoveToPoint([1107.38])AddJournalEntry(@10001,QUEST)DestroySelf()~
EXIT 

CHAIN X3WLara C.3 
@6 // ~Such blunt boldness. Typical, stupid, want to be hero. You don't even know who you are talking to.~
EXTERN X3WLara C.4

CHAIN X3WLara C.2 
@7 // ~Oh, should we? A bit late for that. You have interfered with our slavery business, and are now a problem.~
EXTERN X3WLara C.4

CHAIN X3WLara C.1 
@8 // ~Well then, you should have never crossed us. When you cross us, we have to take care of you. You've forced our hand.~
EXTERN X3WLara C.4
//Aerie Branch
CHAIN X3WLara AerieBranch
@9 // ~Wait a minute...I know that elf. The first Avariel my arrow has ever touched. Just one shot made you fall down from the sky so beautifully...I could not have created a moment more fascinating.~
== AerieJ @10
== X3WLara @11 // ~I did. You can call me Laravyl, the sharpest archer of the slaver trade.~ 
== AerieJ @12 // ~I'll call you n-nothing but a monster! You took my world from me! I'm going to...to...~
== X3WLara @13 // ~Do what? Fall from the sky again? Ah, but you are just an ugly wingless wonder now. Far less fascinating than you were before.~ 
END 
++ @14 + A.1 // ~It's over now, Laravyl. Surrender yourselves to us, lest you all be slain.~
++ @15 + A.2 // ~Now is the time for your revenge, Aerie! We will rip her apart.~
++ @16 + A.3 // ~We're severely outnumbered, Aerie. Quell your anger, and let us part away.~

CHAIN X3WLara A.1 
@17 // ~Oh really? Just surrender when it would be so much more easier to kill you? I think not.~
EXTERN X3WLara A.4

CHAIN X3WLara A.2 
@19 // ~Oh no no. You won't be touching me at all. You've crossed my path and thus it is *my* revenge that will be had.~
EXTERN X3WLara A.4

CHAIN X3WLara A.3 
@20 // Ha! You aren't walking away. When you cross my business you don't get a chance to cross us a second time.~
EXTERN X3WLara A.4

CHAIN X3WLara A.4 
@18 // ~But I have better things to do, so my men here will do what needs to be done. Kill them, put the wingless wonder out of her misery.~
DO ~SetGlobal("X3WingsQuest","GLOBAL",4)SetGlobalTimer("X3WingsTimer","GLOBAL",ONE_DAY)CreateCreatureObject("X3WRM",Player1,6,6,6)PlaySound("ACT_07")MoveToPoint([1107.38])AddJournalEntry(@10002,QUEST)DestroySelf()~
EXIT 

CHAIN
IF ~Global("X3WingsQuest","GLOBAL",12)~ THEN X3WLARA CutsceneCon2
@21 
== AerieJ IF ~IsValidForPartyDialogue("Aerie")~ THEN @22  
== X3WLara IF ~IsValidForPartyDialogue("Aerie")~ THEN @23
== X3WLara @24 
END 
++ @25 + CC2.1
++ @26 + CC2.2
++ @27 + CC2.3 

CHAIN X3WLara CC2.1 
@28 
EXTERN X3WLara CC2.4 

CHAIN X3WLara CC2.2 
@29 
EXTERN X3WLara CC2.4 

CHAIN X3WLara CC2.3 
@30 
EXTERN X3WLAra CC2.4 

CHAIN X3WLara CC2.4 
@31 
DO ~AddJournalEntry(@10012,QUEST)SetGlobal("X3WingsQuest","GLOBAL",13)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)DestroySelf()~
EXIT 

CHAIN
IF ~GlobalGT("X3WingsQuest","GLOBAL",17)!Dead("X3WPrax")~ THEN X3WLARA EscapeCon1
@32 
== X3WPrax @33 
== X3WLara @34 
== X3WPrax @35 
== AerieJ IF ~IsValidForPartyDialogue("Aerie")~ THEN @36 
== X3WLara @37
DO ~SetGlobal("X3WingsQuest","GLOBAL",19)CreateVisualEffectObject("spdimndr",Myself)
Wait(1)DestroySelf()~ 
EXIT 


CHAIN
IF ~GlobalGT("X3WingsQuest","GLOBAL",17)Dead("X3WPrax")~ THEN X3WLARA EscapeCon2
@38
END 
++ @39 + PraxisDead 
++ @40 + PraxisDead
++ @41 + PraxisDead

CHAIN X3WLara PraxisDead 
@42 
= @43 
== AerieJ IF ~IsValidForPartyDialogue("Aerie")~ THEN @44
== X3WLara IF ~IsValidForPartyDialogue("Aerie")~ THEN @45
== X3WLara @46
DO ~SetGlobal("X3WingsQuest","GLOBAL",19)CreateVisualEffectObject("spdimndr",Myself)
Wait(1)DestroySelf()~ 
EXIT 



