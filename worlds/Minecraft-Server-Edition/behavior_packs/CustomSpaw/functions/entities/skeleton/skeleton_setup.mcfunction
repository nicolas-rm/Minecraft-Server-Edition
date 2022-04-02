#bridge-file-version: #109
scoreboard players add @s skeleton 1
execute @s ~~~ execute @e[type=mrleefy:skeletonstill,tag=main,name=!"§eskeleton",r=20,c=1] ~~~ scoreboard players operation @s skeleton += @e[type=mrleefy:skeletonstill,tag=!main,name="§eskeleton",r=20,c=1] skeleton
execute @s ~~~ execute @e[type=mrleefy:skeletonstill,tag=main,name=!"§eskeleton",r=20,c=1] ~~~ tp @e[type=mrleefy:skeletonstill,tag=!main,name="§eskeleton",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:skeletonstill,r=20,scores={skeleton=1}] ~~~ summon mrleefy:skeletonstill ~~~ minecraft:ageable_grow_up "§dMobGrinder §r§eskeleton"
execute @s ~~~ execute @e[type=mrleefy:skeletonstill,tag=!main,name=!"§eskeleton",r=20,c=1] ~~~ scoreboard players operation @s skeleton += @e[type=mrleefy:skeletonstill,tag=!main,name="§eskeleton",r=20,c=1] skeleton
execute @s[type=mrleefy:skeletonstill,tag=main,name=!"§eskeleton",r=20,c=1] ~~~ tp @e[type=mrleefy:skeletonstill,tag=main,name="§eskeleton",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:skeletonstill,tag=!main,name=!"§eskeleton",r=20,c=1] ~~~ tag @s add main
execute @s ~~~ execute @e[type=mrleefy:skeletonstill,name=!"§eskeleton",tag=main,r=20,c=1] ~~~ execute @e[type=mrleefy:skeletonstill,name=!"§eskeleton",tag=main,r=20,c=1,rm=0.01] ~~~ tp @e[type=mrleefy:skeletonstill,name=!"§eskeleton",tag=main,r=20,c=1,rm=0.01] 999999999 999999999 999999999
tp @s 999999999 999999999 999999999