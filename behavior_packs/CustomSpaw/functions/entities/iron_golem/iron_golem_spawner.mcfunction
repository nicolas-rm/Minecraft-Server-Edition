#bridge-file-version: #109
summon mrleefy:spawnrule "iron_golem_spawner" ~~~
scoreboard players set @e[name="iron_golem_spawner",r=20] iron_golem 0
execute @p[rm=50] ~~~ tag @e[name="iron_golem_spawner",c=1,rm=50] add noirongolem
tag @e[type=mrleefy:irongolemstill,tag=main,c=1,r=20] add yesiron
scoreboard players add @e[type=mrleefy:irongolemstill,tag=main,c=1,tag=yesiron] iron_golem 1
execute @e[type=mrleefy:irongolemstill,tag=main,tag=yesiron,c=1,r=20] ~~~ scoreboard players set @e[name="iron_golem_spawner",r=20] iron_golem 1
execute @e[name="iron_golem_spawner",scores={iron_golem=0},c=1,tag=!noirongolem] ~~~ summon mrleefy:irongolemstill "§eIron_golem" ~~1~
execute @e[type=mrleefy:irongolemstill,r=20,tag=main] ~~~ execute @e[name="iron_golem_spawner",r=20,scores={iron_golem=1..}] ~~~ scoreboard players set @s[r=20] iron_golem 0
tag @e[type=mrleefy:irongolemstill,tag=main,c=1,r=20] add yesiron
particle minecraft:basic_flame_particle ~~~