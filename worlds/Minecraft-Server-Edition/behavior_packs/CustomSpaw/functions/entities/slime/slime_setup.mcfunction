scoreboard players add @s slime 1
execute @s ~~~ execute @e[type=mrleefy:slimestill,tag=main,name=!"§eSlime",r=20,c=1] ~~~ scoreboard players operation @s slime += @e[type=mrleefy:slimestill,tag=!main,name="§eSlime",r=20,c=1] slime
execute @s ~~~ execute @e[type=mrleefy:slimestill,tag=main,name=!"§eSlime",r=20,c=1] ~~~ tp @e[type=mrleefy:slimestill,tag=!main,name="§eSlime",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:slimestill,r=20,scores={slime=1}] ~~~ summon mrleefy:slimestill ~~~ minecraft:ageable_grow_up "§dMobGrinder §r§eSlime"
execute @s ~~~ execute @e[type=mrleefy:slimestill,tag=!main,name=!"§eslime",r=20,c=1] ~~~ scoreboard players operation @s slime += @e[type=mrleefy:slimestill,tag=!main,name="§eSlime",r=20,c=1] slime
execute @s[type=mrleefy:slimestill,tag=main,name=!"§eSlime",r=20,c=1] ~~~ tp @e[type=mrleefy:slimestill,tag=main,name="§eSlime",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:slimestill,tag=!main,name=!"§eSlime",r=20,c=1] ~~~ tag @s add main
execute @s ~~~ execute @e[type=mrleefy:slimestill,name=!"§eSlime",tag=main,r=20,c=1] ~~~ execute @e[type=mrleefy:slimestill,name=!"§eSlime",tag=main,r=20,c=1,rm=0.01] ~~~ tp @e[type=mrleefy:slimestill,name=!"§eSlime",tag=main,r=20,c=1,rm=0.01] 999999999 999999999 999999999
tp @s 999999999 999999999 999999999