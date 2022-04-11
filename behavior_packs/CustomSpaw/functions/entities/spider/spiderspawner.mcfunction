#bridge-file-version: #109
summon mrleefy:spawnrule "spiderspawner" ~~~
scoreboard players set @e[name="spiderspawner",r=20] spider 0
execute @p[rm=50] ~~~ tag @e[name="spiderspawner",c=1,rm=50] add nospider
tag @e[type=mrleefy:spiderstill,tag=main,c=1,r=20] add yesspider
scoreboard players add @e[type=mrleefy:spiderstill,tag=main,c=1,tag=yesspider] spider 1
execute @e[type=mrleefy:spiderstill,tag=main,tag=yesspider,c=1,r=20] ~~~ scoreboard players set @e[name="spiderspawner",r=20] spider 1
execute @e[name="spiderspawner",scores={spider=0},c=1,tag=!nospider] ~~~ summon mrleefy:spiderstill "§eSpider" ~~1~
execute @e[type=mrleefy:spiderstill,r=20,tag=main] ~~~ execute @e[name="spiderspawner",r=20,scores={spider=1..}] ~~~ scoreboard players set @s[r=20] spider 0
tag @e[type=mrleefy:spiderstill,tag=main,c=1,r=20] add yesspider
particle minecraft:basic_flame_particle ~~~