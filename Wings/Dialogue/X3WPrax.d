CHAIN IF ~True()~ THEN X3WPrax Talk 
@0
END 
IF ~!Dead("X3WTrent")~ EXTERN X3WPrax TrentAlive
IF ~Dead("X3WTrent")~ EXTERN X3WPrax TrentDead 

CHAIN X3WPrax TrentDead
@1
== AerieJ IF ~IsValidForPartyDialogue("Aerie")~ THEN @2 
== X3WPrax IF ~IsValidForPartyDialogue("Aerie")~ THEN @3 
END 
++ @4 EXTERN X3WPrax NoChance
++ @5 EXTERN X3WPrax OwnGuard
++ @6 EXTERN X3WPrax NoChance

CHAIN X3WPrax OwnGuard 
@7
END 
IF ~Global("B2#Rapt","GLOBAL",5)IsValidForPartyDialogue("Aerie")~ EXTERN X3WLara Raptair
IF ~!Global("X3WFail","GLOBAL",2)OR(2)!Global("B2#Rapt","GLOBAL",5)!IsValidForPartyDialogue("Aerie")~ EXTERN X3WPrax RodTrade
IF ~Global("X3WFail","GLOBAL",2)OR(2)!Global("B2#Rapt","GLOBAL",5)!IsValidForPartyDialogue("Aerie")~ EXTERN X3WPrax NoRodTrade


CHAIN X3WPrax NoChance 
@8 
END 
IF ~Global("B2#Rapt","GLOBAL",5)IsValidForPartyDialogue("Aerie")~ EXTERN X3WLara Raptair
IF ~!Global("X3WFail","GLOBAL",2)OR(2)!Global("B2#Rapt","GLOBAL",5)!IsValidForPartyDialogue("Aerie")~ EXTERN X3WPrax RodTrade
IF ~Global("X3WFail","GLOBAL",2)OR(2)!Global("B2#Rapt","GLOBAL",5)!IsValidForPartyDialogue("Aerie")~ EXTERN X3WPrax NoRodTrade

CHAIN X3WPrax RodTrade 
@9 
END 
IF ~!Dead("X3WTrent")~ EXTERN X3WPrax TrentAliveTrade
IF ~Dead("X3WTrent")~ EXTERN X3WPrax TrentDeadTrade

CHAIN X3WPrax TrentAliveTrade 
@10 
END 
+~!IsValidForPartyDialogue("Mazzy")~+ @11 DO ~TakePartyItem("X3WGEM")TakePartyItem("X3WRod")TakePartyItem("X3WArt")~ + Deal
+~IsValidForPartyDialogue("Mazzy")~+ @11 EXTERN MazzyJ Deal
++ @12 + NoDeal
++ @13 + NoDeal

CHAIN MazzyJ Deal 
@14 
END 
++ @15 DO ~TakePartyItem("X3WGEM")TakePartyItem("X3WRod")TakePartyItem("X3WArt")~ EXTERN X3WPrax Deal
++ @16 EXTERN X3WPrax SeeTrent
++ @17 EXTERN X3WPrax Deal 

CHAIN X3WPrax SeeTrent 
@18 
END 
++ @11 DO ~TakePartyItem("X3WGEM")TakePartyItem("X3WRod")TakePartyItem("X3WArt")~ + Deal
++ @12 + NoDeal
++ @13 + NoDeal

CHAIN X3WPrax Deal 
@19
//We want to destroy the artifact item *just* in case it has no charges.
DO ~DestroyItem("X3WGem")DestroyItem("X3WRod")DestroyItem("X3WArt")~
= @20
DO ~ActionOverride("X3WLara",Enemy())CreateItem("X3WArt",1,1,1)Enemy()~
EXIT 

CHAIN X3WPrax NoDeal
@21
DO ~ActionOverride("X3WLara",Enemy())CreateItem("X3WArt",1,1,1)Enemy()~
EXIT 

CHAIN X3WPrax TrentDeadTrade
@22 
END 
+~!IsValidForPartyDialogue("Aerie")~+ @23 DO ~TakePartyItem("X3WGEM")TakePartyItem("X3WRod")TakePartyItem("X3WArt")~ + DealTrentDead
+~IsValidForPartyDialogue("Aerie")~+ @23 EXTERN AerieJ Deal
++ @12 + NoDeal
++ @24 + NoDeal

CHAIN AerieJ Deal 
@25 
== X3WPrax @27
EXTERN X3WPrax NoDeal 

CHAIN X3WPrax DealTrentDead
@26 
DO ~ActionOverride("X3WLara",Enemy())CreateItem("X3WArt",1,1,1)Enemy()~
EXIT 

CHAIN X3WPrax NoRodTrade
@28
= @29
== AerieJ IF ~IsValidForPartyDialogue("Aerie")~ THEN @30 
== X3WPrax IF ~IsValidForPartyDialogue("Aerie")~ THEN @31 
END 
++ @32 + NoRodBattle
++ @33 + NoRodBattle
++ @34 + NoRodBattle

CHAIN X3WPrax NoRodBattle 
@35 
DO ~ActionOverride("X3WLara",Enemy())CreateItem("X3WArt",0,0,0)Enemy()~
EXIT 

CHAIN X3WPrax TrentAlive 
@36 
== AerieJ IF ~IsValidForPartyDialogue("Aerie")~ THEN @37
END 
++ @38 EXTERN X3WPrax TrentDone 
++ @4  EXTERN X3WPrax TrentDone 
++ @39 EXTERN X3WPrax Arrogance 

CHAIN X3WPrax TrentDone 
@40
END 
IF ~Global("B2#Rapt","GLOBAL",5)IsValidForPartyDialogue("Aerie")~ EXTERN X3WLara Raptair
IF ~!Global("X3WFail","GLOBAL",2)OR(2)!Global("B2#Rapt","GLOBAL",5)!IsValidForPartyDialogue("Aerie")~ EXTERN X3WPrax RodTrade
IF ~Global("X3WFail","GLOBAL",2)OR(2)!Global("B2#Rapt","GLOBAL",5)!IsValidForPartyDialogue("Aerie")~ EXTERN X3WPrax NoRodTrade

CHAIN X3WPrax Arrogance 
@41
END 
IF ~Global("B2#Rapt","GLOBAL",5)IsValidForPartyDialogue("Aerie")~ EXTERN X3WLara Raptair
IF ~!Global("X3WFail","GLOBAL",2)OR(2)!Global("B2#Rapt","GLOBAL",5)!IsValidForPartyDialogue("Aerie")~ EXTERN X3WPrax RodTrade
IF ~Global("X3WFail","GLOBAL",2)OR(2)!Global("B2#Rapt","GLOBAL",5)!IsValidForPartyDialogue("Aerie")~ EXTERN X3WPrax NoRodTrade

CHAIN X3WLara Raptair 
@42 
== AerieJ @43
== X3WLara @44
== AerieJ @45
== X3WPrax @46
== X3WLara @47
END 
IF ~!Global("X3WFail","GLOBAL",2)~ EXTERN X3WPrax RodTrade
IF ~Global("X3WFail","GLOBAL",2)~ EXTERN X3WPrax NoRodTrade
 
