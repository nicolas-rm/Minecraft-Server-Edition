#bridge-file-version: #109
summon mrleefy:spawnrule "skeletonspawner" ~~~
scoreboard players set @e[name="skeletonspawner",r=20] skeleton 0
execute @p[rm=50] ~~~ tag @e[name="skeletonspawner",c=1,rm=50] add noskeleton
tag @e[type=mrleefy:skeletonstill,tag=main,c=1,r=20] add yesskeleton
scoreboard players add @e[type=mrleefy:skeletonstill,tag=main,c=1,tag=yesskeleton] skeleton 1
execute @e[type=mrleefy:skeletonstill,tag=main,tag=yesskeleton,c=1,r=20] ~~~ scoreboard players set @e[name="skeletonspawner",r=20] skeleton 1
execute @e[name="skeletonspawner",scores={skeleton=0},c=1,tag=!noskeleton] ~~~ summon mrleefy:skeletonstill "§eSkeleton" ~~1~
execute @e[type=mrleefy:skeletonstill,r=20,tag=main] ~~~ execute @e[name="skeletonspawner",r=20,scores={skeleton=1..}] ~~~ scoreboard players set @s[r=20] skeleton 0
tag @e[type=mrleefy:skeletonstill,tag=main,c=1,r=20] add yesskeleton
particle minecraft:basic_flame_particle ~~~