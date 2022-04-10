#bridge-file-version: #1
summon mrleefy:spawnrule "witherskeletonspawner" ~~~
scoreboard players set @e[name="witherskeletonspawner",r=20] witherskeleton 0
execute @p[rm=50] ~~~ tag @e[name="witherskeletonspawner",c=1,rm=50] add nowitherskeleton
tag @e[type=mrleefy:witherskeletonstill,tag=main,c=1,r=20] add yeswitherskeleton
scoreboard players add @e[type=mrleefy:witherskeletonstill,tag=main,c=1,tag=yeswitherskeleton] witherskeleton 1
execute @e[type=mrleefy:witherskeletonstill,tag=main,tag=yeswitherskeleton,c=1,r=20] ~~~ scoreboard players set @e[name="witherskeletonspawner",r=20] witherskeleton 1
execute @e[name="witherskeletonspawner",scores={witherskeleton=0},c=1,tag=!nowitherskeleton] ~~~ summon mrleefy:witherskeletonstill "§eWitherskeleton" ~~1~
execute @e[type=mrleefy:witherskeletonstill,r=20,tag=main] ~~~ execute @e[name="witherskeletonspawner",r=20,scores={witherskeleton=1..}] ~~~ scoreboard players set @s[r=20] witherskeleton 0
tag @e[type=mrleefy:witherskeletonstill,tag=main,c=1,r=20] add yeswitherskeleton
particle minecraft:basic_flame_particle ~~~