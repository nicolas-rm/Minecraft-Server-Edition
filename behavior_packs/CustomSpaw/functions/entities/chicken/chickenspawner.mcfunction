#bridge-file-version: #3
summon mrleefy:spawnrule "chickenspawner" ~~~
scoreboard players set @e[name="chickenspawner",r=20] chicken 0
execute @p[rm=50] ~~~ tag @e[name="chickenspawner",c=1,rm=50] add nochicken
tag @e[type=mrleefy:chickenstill,tag=main,c=1,r=20] add yescow
scoreboard players add @e[type=mrleefy:chickenstill,tag=main,c=1,tag=yescow] chicken 1
execute @e[type=mrleefy:chickenstill,tag=main,tag=yescow,c=1,r=20] ~~~ scoreboard players set @e[name="chickenspawner",r=20] chicken 1
execute @e[name="chickenspawner",scores={chicken=0},c=1,tag=!nochicken] ~~~ summon mrleefy:chickenstill "§eChicken" ~~1~
execute @e[type=mrleefy:chickenstill,r=20,tag=main] ~~~ execute @e[name="chickenspawner",r=20,scores={chicken=1..}] ~~~ scoreboard players set @s[r=20] chicken 0
tag @e[type=mrleefy:chickenstill,tag=main,c=1,r=20] add yescow
particle minecraft:basic_flame_particle ~~~