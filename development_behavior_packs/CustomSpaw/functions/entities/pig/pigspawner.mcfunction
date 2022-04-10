#bridge-file-version: #109
summon mrleefy:spawnrule "pigspawner" ~~~
scoreboard players set @e[name="pigspawner",r=20] pig 0
execute @p[rm=50] ~~~ tag @e[name="pigspawner",c=1,rm=50] add nopig
tag @e[type=mrleefy:pigstill,tag=main,c=1,r=20] add yespig
scoreboard players add @e[type=mrleefy:pigstill,tag=main,c=1,tag=yespig] pig 1
execute @e[type=mrleefy:pigstill,tag=main,tag=yespig,c=1,r=20] ~~~ scoreboard players set @e[name="pigspawner",r=20] pig 1
execute @e[name="pigspawner",scores={pig=0},c=1,tag=!nopig] ~~~ summon mrleefy:pigstill "§ePig" ~~1~
execute @e[type=mrleefy:pigstill,r=20,tag=main] ~~~ execute @e[name="pigspawner",r=20,scores={pig=1..}] ~~~ scoreboard players set @s[r=20] pig 0
tag @e[type=mrleefy:pigstill,tag=main,c=1,r=20] add yespig
particle minecraft:basic_flame_particle ~~~