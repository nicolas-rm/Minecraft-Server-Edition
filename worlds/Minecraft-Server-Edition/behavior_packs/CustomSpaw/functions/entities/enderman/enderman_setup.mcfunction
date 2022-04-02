scoreboard players add @s enderman 1
execute @s ~~~ execute @e[type=mrleefy:endermanstill,tag=main,name=!"§eEnderman",r=20,c=1] ~~~ scoreboard players operation @s enderman += @e[type=mrleefy:endermanstill,tag=!main,name="§eEnderman",r=20,c=1] enderman
execute @s ~~~ execute @e[type=mrleefy:endermanstill,tag=main,name=!"§eEnderman",r=20,c=1] ~~~ tp @e[type=mrleefy:endermanstill,tag=!main,name="§eEnderman",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:endermanstill,r=20,scores={enderman=1}] ~~~ summon mrleefy:endermanstill ~~~ minecraft:ageable_grow_up "§dMobGrinder §r§eEnderman"
execute @s ~~~ execute @e[type=mrleefy:endermanstill,tag=!main,name=!"§eEnderman",r=20,c=1] ~~~ scoreboard players operation @s enderman += @e[type=mrleefy:endermanstill,tag=!main,name="§eEnderman",r=20,c=1] enderman
execute @s[type=mrleefy:endermanstill,tag=main,name=!"§eEnderman",r=20,c=1] ~~~ tp @e[type=mrleefy:endermanstill,tag=main,name="§eEnderman",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:endermanstill,tag=!main,name=!"§eEnderman",r=20,c=1] ~~~ tag @s add main
execute @s ~~~ execute @e[type=mrleefy:endermanstill,name=!"§eEnderman",tag=main,r=20,c=1] ~~~ execute @e[type=mrleefy:endermanstill,name=!"§eEnderman",tag=main,r=20,c=1,rm=0.01] ~~~ tp @e[type=mrleefy:endermanstill,name=!"§eEnderman",tag=main,r=20,c=1,rm=0.01] 999999999 999999999 999999999
tp @s 999999999 999999999 999999999