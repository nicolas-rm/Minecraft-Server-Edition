#bridge-file-version: #1
summon mrleefy:spawnrule "creeperspawner" ~~~
scoreboard players set @e[name="creeperspawner",r=20] creeper 0
execute @p[rm=50] ~~~ tag @e[name="creeperspawner",c=1,rm=50] add nocreeper
tag @e[type=mrleefy:creeperstill,tag=main,c=1,r=20] add yescreeper
scoreboard players add @e[type=mrleefy:creeperstill,tag=main,c=1,tag=yescreeper] creeper 1
execute @e[type=mrleefy:creeperstill,tag=main,tag=yescreeper,c=1,r=20] ~~~ scoreboard players set @e[name="creeperspawner",r=20] creeper 1
execute @e[name="creeperspawner",scores={creeper=0},c=1,tag=!nocreeper] ~~~ summon mrleefy:creeperstill "§eCreeper" ~~1~
execute @e[type=mrleefy:creeperstill,r=20,tag=main] ~~~ execute @e[name="creeperspawner",r=20,scores={creeper=1..}] ~~~ scoreboard players set @s[r=20] creeper 0
tag @e[type=mrleefy:creeperstill,tag=main,c=1,r=20] add yescreeper
particle minecraft:basic_flame_particle ~~~