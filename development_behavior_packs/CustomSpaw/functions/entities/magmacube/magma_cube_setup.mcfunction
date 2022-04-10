scoreboard players add @s magmacube 1
execute @s ~~~ execute @e[type=mrleefy:magmacubestill,tag=main,name=!"§eMagmacube",r=20,c=1] ~~~ scoreboard players operation @s magmacube += @e[type=mrleefy:magmacubestill,tag=!main,name="§eMagmacube",r=20,c=1] magmacube
execute @s ~~~ execute @e[type=mrleefy:magmacubestill,tag=main,name=!"§eMagmacube",r=20,c=1] ~~~ tp @e[type=mrleefy:magmacubestill,tag=!main,name="§eMagmacube",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:magmacubestill,r=20,scores={magmacube=1}] ~~~ summon mrleefy:magmacubestill ~~~ minecraft:ageable_grow_up "§dMobGrinder §r§eMagmacube"
execute @s ~~~ execute @e[type=mrleefy:magmacubestill,tag=!main,name=!"§emagmacube",r=20,c=1] ~~~ scoreboard players operation @s magmacube += @e[type=mrleefy:magmacubestill,tag=!main,name="§eMagmacube",r=20,c=1] magmacube
execute @s[type=mrleefy:magmacubestill,tag=main,name=!"§eMagmacube",r=20,c=1] ~~~ tp @e[type=mrleefy:magmacubestill,tag=main,name="§eMagmacube",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:magmacubestill,tag=!main,name=!"§eMagmacube",r=20,c=1] ~~~ tag @s add main
execute @s ~~~ execute @e[type=mrleefy:magmacubestill,name=!"§eMagmacube",tag=main,r=20,c=1] ~~~ execute @e[type=mrleefy:magmacubestill,name=!"§eMagmacube",tag=main,r=20,c=1,rm=0.01] ~~~ tp @e[type=mrleefy:magmacubestill,name=!"§eMagmacube",tag=main,r=20,c=1,rm=0.01] 999999999 999999999 999999999
tp @s 999999999 999999999 999999999