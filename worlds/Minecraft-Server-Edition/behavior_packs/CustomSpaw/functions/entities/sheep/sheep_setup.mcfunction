#bridge-file-version: #134
scoreboard players add @s sheep 1
execute @s ~~~ execute @e[type=mrleefy:sheepstill,tag=main,name=!"§eSheep",r=20,c=1] ~~~ scoreboard players operation @s sheep += @e[type=mrleefy:sheepstill,tag=!main,name="§eSheep",r=20,c=1] sheep
execute @s ~~~ execute @e[type=mrleefy:sheepstill,tag=main,name=!"§eSheep",r=20,c=1] ~~~ tp @e[type=mrleefy:sheepstill,tag=!main,name="§eSheep",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:sheepstill,r=20,scores={sheep=1}] ~~~ summon mrleefy:sheepstill ~~~ minecraft:ageable_grow_up "§dMobGrinder §r§eSheep"
execute @s ~~~ execute @e[type=mrleefy:sheepstill,tag=!main,name=!"§eSheep",r=20,c=1] ~~~ scoreboard players operation @s sheep += @e[type=mrleefy:sheepstill,tag=!main,name="§eSheep",r=20,c=1] sheep
execute @s[type=mrleefy:sheepstill,tag=main,name=!"§eSheep",r=20,c=1] ~~~ tp @e[type=mrleefy:sheepstill,tag=main,name="§eSheep",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:sheepstill,tag=!main,name=!"§eSheep",r=20,c=1] ~~~ tag @s add main
execute @s ~~~ execute @e[type=mrleefy:sheepstill,name=!"§eSheep",tag=main,r=20,c=1] ~~~ execute @e[type=mrleefy:sheepstill,name=!"§eSheep",tag=main,r=20,c=1,rm=0.01] ~~~ tp @e[type=mrleefy:sheepstill,name=!"§eSheep",tag=main,r=20,c=1,rm=0.01] 999999999 999999999 999999999
tp @s 999999999 999999999 999999999