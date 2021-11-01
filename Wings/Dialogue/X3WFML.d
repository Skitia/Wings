BEGIN X3WFML 

CHAIN IF ~HasItem("X3WLens",Myself)~ THEN X3WFML OnlyBranch
@0
END 
++ @1 + TooBad
++ @2 + Laravyl
++ @3 + WrongRoom

CHAIN X3WFML WrongRoom
@4
DO ~PlaySound("ACT_07")CreateCreature("X3WFRM",[1060.119],SE)CreateCreature("X3WFRM",[1469.616],NW)CreateCreature("X3WRM",[1206.251],SW)CreateCreature("X3WRM",[1379.377],SW)CreateCreature("X3WRM",[1351.427],W)CreateCreature("X3WRE",[1104.336],SE)Enemy()~
EXIT 

CHAIN X3WFML Laravyl
@5
DO ~PlaySound("ACT_07")CreateCreature("X3WFRM",[1060.119],SE)CreateCreature("X3WFRM",[1469.616],NW)CreateCreature("X3WRM",[1206.251],SW)CreateCreature("X3WRM",[1379.377],SW)CreateCreature("X3WRM",[1351.427],W)CreateCreature("X3WRE",[1104.336],SE)Enemy()~
EXIT 

CHAIN X3WFML TooBad 
@6
DO ~PlaySound("ACT_07")CreateCreature("X3WFRM",[1060.119],SE)CreateCreature("X3WFRM",[1469.616],NW)CreateCreature("X3WRM",[1206.251],SW)CreateCreature("X3WRM",[1379.377],SW)CreateCreature("X3WRM",[1351.427],W)CreateCreature("X3WRE",[1104.336],SE)Enemy()~
EXIT 

CHAIN IF ~!HasItem("X3WLens",Myself)~ THEN X3WFML OneLiner
@7
DO ~PlaySound("ACT_07")CreateCreature("X3WFRM",[1060.119],SE)CreateCreature("X3WFRM",[1469.616],NW)CreateCreature("X3WRM",[1206.251],SW)CreateCreature("X3WRM",[1379.377],SW)CreateCreature("X3WRM",[1351.427],W)CreateCreature("X3WRE",[1104.336],SE)Enemy()~
EXIT 