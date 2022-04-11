#bridge-file-version: #109
scoreboard players add @s spider 1
execute @s ~~~ execute @e[type=mrleefy:spiderstill,tag=main,name=!"§espider",r=20,c=1] ~~~ scoreboard players operation @s spider += @e[type=mrleefy:spiderstill,tag=!main,name="§espider",r=20,c=1] spider
execute @s ~~~ execute @e[type=mrleefy:spiderstill,tag=main,name=!"§espider",r=20,c=1] ~~~ tp @e[type=mrleefy:spiderstill,tag=!main,name="§espider",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:spiderstill,r=20,scores={spider=1}] ~~~ summon mrleefy:spiderstill ~~~ minecraft:ageable_grow_up "§dMobGrinder §r§espider"
execute @s ~~~ execute @e[type=mrleefy:spiderstill,tag=!main,name=!"§espider",r=20,c=1] ~~~ scoreboard players operation @s spider += @e[type=mrleefy:spiderstill,tag=!main,name="§espider",r=20,c=1] spider
execute @s[type=mrleefy:spiderstill,tag=main,name=!"§espider",r=20,c=1] ~~~ tp @e[type=mrleefy:spiderstill,tag=main,name="§espider",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:spiderstill,tag=!main,name=!"§espider",r=20,c=1] ~~~ tag @s add main
execute @s ~~~ execute @e[type=mrleefy:spiderstill,name=!"§espider",tag=main,r=20,c=1] ~~~ execute @e[type=mrleefy:spiderstill,name=!"§espider",tag=main,r=20,c=1,rm=0.01] ~~~ tp @e[type=mrleefy:spiderstill,name=!"§espider",tag=main,r=20,c=1,rm=0.01] 999999999 999999999 999999999
tp @s 999999999 999999999 999999999