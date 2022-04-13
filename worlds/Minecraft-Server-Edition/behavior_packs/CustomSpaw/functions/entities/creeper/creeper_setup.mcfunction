scoreboard players add @s creeper 1
execute @s ~~~ execute @e[type=mrleefy:creeperstill,tag=main,name=!"§eCreeper",r=20,c=1] ~~~ scoreboard players operation @s creeper += @e[type=mrleefy:creeperstill,tag=!main,name="§eCreeper",r=20,c=1] creeper
execute @s ~~~ execute @e[type=mrleefy:creeperstill,tag=main,name=!"§eCreeper",r=20,c=1] ~~~ tp @e[type=mrleefy:creeperstill,tag=!main,name="§eCreeper",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:creeperstill,r=20,scores={creeper=1}] ~~~ summon mrleefy:creeperstill ~~~ minecraft:ageable_grow_up "§dMobGrinder §r§eCreeper"
execute @s ~~~ execute @e[type=mrleefy:creeperstill,tag=!main,name=!"§ecreeper",r=20,c=1] ~~~ scoreboard players operation @s creeper += @e[type=mrleefy:creeperstill,tag=!main,name="§eCreeper",r=20,c=1] creeper
execute @s[type=mrleefy:creeperstill,tag=main,name=!"§eCreeper",r=20,c=1] ~~~ tp @e[type=mrleefy:creeperstill,tag=main,name="§eCreeper",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:creeperstill,tag=!main,name=!"§eCreeper",r=20,c=1] ~~~ tag @s add main
execute @s ~~~ execute @e[type=mrleefy:creeperstill,name=!"§eCreeper",tag=main,r=20,c=1] ~~~ execute @e[type=mrleefy:creeperstill,name=!"§eCreeper",tag=main,r=20,c=1,rm=0.01] ~~~ tp @e[type=mrleefy:creeperstill,name=!"§eCreeper",tag=main,r=20,c=1,rm=0.01] 999999999 999999999 999999999
tp @s 999999999 999999999 999999999