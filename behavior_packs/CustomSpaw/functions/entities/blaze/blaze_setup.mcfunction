scoreboard players add @s blaze 1
execute @s ~~~ execute @e[type=mrleefy:blazestill,tag=main,name=!"§eBlaze",r=20,c=1] ~~~ scoreboard players operation @s blaze += @e[type=mrleefy:blazestill,tag=!main,name="§eBlaze",r=20,c=1] blaze
execute @s ~~~ execute @e[type=mrleefy:blazestill,tag=main,name=!"§eBlaze",r=20,c=1] ~~~ tp @e[type=mrleefy:blazestill,tag=!main,name="§eBlaze",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:blazestill,r=20,scores={blaze=1}] ~~~ summon mrleefy:blazestill ~~~ minecraft:ageable_grow_up "§dMobGrinder §r§eBlaze"
execute @s ~~~ execute @e[type=mrleefy:blazestill,tag=!main,name=!"§eblaze",r=20,c=1] ~~~ scoreboard players operation @s blaze += @e[type=mrleefy:blazestill,tag=!main,name="§eBlaze",r=20,c=1] blaze
execute @s[type=mrleefy:blazestill,tag=main,name=!"§eBlaze",r=20,c=1] ~~~ tp @e[type=mrleefy:blazestill,tag=main,name="§eBlaze",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:blazestill,tag=!main,name=!"§eBlaze",r=20,c=1] ~~~ tag @s add main
execute @s ~~~ execute @e[type=mrleefy:blazestill,name=!"§eBlaze",tag=main,r=20,c=1] ~~~ execute @e[type=mrleefy:blazestill,name=!"§eBlaze",tag=main,r=20,c=1,rm=0.01] ~~~ tp @e[type=mrleefy:blazestill,name=!"§eBlaze",tag=main,r=20,c=1,rm=0.01] 999999999 999999999 999999999
tp @s 999999999 999999999 999999999