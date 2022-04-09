scoreboard players add @s chicken 1
execute @s ~~~ execute @e[type=mrleefy:chickenstill,tag=main,name=!"§eChicken",r=20,c=1] ~~~ scoreboard players operation @s chicken += @e[type=mrleefy:chickenstill,tag=!main,name="§eChicken",r=20,c=1] chicken
execute @s ~~~ execute @e[type=mrleefy:chickenstill,tag=main,name=!"§eChicken",r=20,c=1] ~~~ tp @e[type=mrleefy:chickenstill,tag=!main,name="§eChicken",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:chickenstill,r=20,scores={chicken=1}] ~~~ summon mrleefy:chickenstill ~~~ minecraft:ageable_grow_up "§dMobGrinder §r§eChicken"
execute @s ~~~ execute @e[type=mrleefy:chickenstill,tag=!main,name=!"§eChicken",r=20,c=1] ~~~ scoreboard players operation @s chicken += @e[type=mrleefy:chickenstill,tag=!main,name="§eChicken",r=20,c=1] chicken
execute @s[type=mrleefy:chickenstill,tag=main,name=!"§eChicken",r=20,c=1] ~~~ tp @e[type=mrleefy:chickenstill,tag=main,name="§eChicken",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:chickenstill,tag=!main,name=!"§eChicken",r=20,c=1] ~~~ tag @s add main
execute @s ~~~ execute @e[type=mrleefy:chickenstill,name=!"§eChicken",tag=main,r=20,c=1] ~~~ execute @e[type=mrleefy:chickenstill,name=!"§eChicken",tag=main,r=20,c=1,rm=0.01] ~~~ tp @e[type=mrleefy:chickenstill,name=!"§eChicken",tag=main,r=20,c=1,rm=0.01] 999999999 999999999 999999999
tp @s 999999999 999999999 999999999