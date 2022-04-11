#bridge-file-version: #109
scoreboard players add @s pig 1
execute @s ~~~ execute @e[type=mrleefy:pigstill,tag=main,name=!"§epig",r=20,c=1] ~~~ scoreboard players operation @s pig += @e[type=mrleefy:pigstill,tag=!main,name="§epig",r=20,c=1] pig
execute @s ~~~ execute @e[type=mrleefy:pigstill,tag=main,name=!"§epig",r=20,c=1] ~~~ tp @e[type=mrleefy:pigstill,tag=!main,name="§epig",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:pigstill,r=20,scores={pig=1}] ~~~ summon mrleefy:pigstill ~~~ minecraft:ageable_grow_up "§dMobGrinder §r§epig"
execute @s ~~~ execute @e[type=mrleefy:pigstill,tag=!main,name=!"§epig",r=20,c=1] ~~~ scoreboard players operation @s pig += @e[type=mrleefy:pigstill,tag=!main,name="§epig",r=20,c=1] pig
execute @s[type=mrleefy:pigstill,tag=main,name=!"§epig",r=20,c=1] ~~~ tp @e[type=mrleefy:pigstill,tag=main,name="§epig",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:pigstill,tag=!main,name=!"§epig",r=20,c=1] ~~~ tag @s add main
execute @s ~~~ execute @e[type=mrleefy:pigstill,name=!"§epig",tag=main,r=20,c=1] ~~~ execute @e[type=mrleefy:pigstill,name=!"§epig",tag=main,r=20,c=1,rm=0.01] ~~~ tp @e[type=mrleefy:pigstill,name=!"§epig",tag=main,r=20,c=1,rm=0.01] 999999999 999999999 999999999
tp @s 999999999 999999999 999999999