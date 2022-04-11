#bridge-file-version: #110
summon mrleefy:spawnrule "cowspawner" ~~~
scoreboard players set @e[name="cowspawner",r=20] cow 0
execute @p[rm=50] ~~~ tag @e[name="cowspawner",c=1,rm=50] add nocow
tag @e[type=mrleefy:cowstill,tag=main,c=1,r=20] add yescow
scoreboard players add @e[type=mrleefy:cowstill,tag=main,c=1,tag=yescow] cow 1
execute @e[type=mrleefy:cowstill,tag=main,tag=yescow,c=1,r=20] ~~~ scoreboard players set @e[name="cowspawner",r=20] cow 1
execute @e[name="cowspawner",scores={cow=0},c=1,tag=!nocow] ~~~ summon mrleefy:cowstill "§eCow" ~~1~
execute @e[type=mrleefy:cowstill,r=20,tag=main] ~~~ execute @e[name="cowspawner",r=20,scores={cow=1..}] ~~~ scoreboard players set @s[r=20] cow 0
tag @e[type=mrleefy:cowstill,tag=main,c=1,r=20] add yescow
particle minecraft:basic_flame_particle ~~~