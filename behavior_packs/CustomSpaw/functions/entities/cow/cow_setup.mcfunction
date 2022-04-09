#bridge-file-version: #109
scoreboard players add @s cow 1
execute @s ~~~ execute @e[type=mrleefy:cowstill,tag=main,name=!"§ecow",r=20,c=1] ~~~ scoreboard players operation @s cow += @e[type=mrleefy:cowstill,tag=!main,name="§ecow",r=20,c=1] cow
execute @s ~~~ execute @e[type=mrleefy:cowstill,tag=main,name=!"§ecow",r=20,c=1] ~~~ tp @e[type=mrleefy:cowstill,tag=!main,name="§ecow",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:cowstill,r=20,scores={cow=1}] ~~~ summon mrleefy:cowstill ~~~ minecraft:ageable_grow_up "§dMobGrinder §r§ecow"
execute @s ~~~ execute @e[type=mrleefy:cowstill,tag=!main,name=!"§ecow",r=20,c=1] ~~~ scoreboard players operation @s cow += @e[type=mrleefy:cowstill,tag=!main,name="§ecow",r=20,c=1] cow
execute @s[type=mrleefy:cowstill,tag=main,name=!"§ecow",r=20,c=1] ~~~ tp @e[type=mrleefy:cowstill,tag=main,name="§ecow",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:cowstill,tag=!main,name=!"§ecow",r=20,c=1] ~~~ tag @s add main
execute @s ~~~ execute @e[type=mrleefy:cowstill,name=!"§ecow",tag=main,r=20,c=1] ~~~ execute @e[type=mrleefy:cowstill,name=!"§ecow",tag=main,r=20,c=1,rm=0.01] ~~~ tp @e[type=mrleefy:cowstill,name=!"§ecow",tag=main,r=20,c=1,rm=0.01] 999999999 999999999 999999999
tp @s 999999999 999999999 999999999