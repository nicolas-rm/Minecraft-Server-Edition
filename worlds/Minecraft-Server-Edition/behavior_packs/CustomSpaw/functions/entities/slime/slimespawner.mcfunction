#bridge-file-version: #1
summon mrleefy:spawnrule "slimespawner" ~~~
scoreboard players set @e[name="slimespawner",r=20] slime 0
execute @p[rm=50] ~~~ tag @e[name="slimespawner",c=1,rm=50] add noslime
tag @e[type=mrleefy:slimestill,tag=main,c=1,r=20] add yesslime
scoreboard players add @e[type=mrleefy:slimestill,tag=main,c=1,tag=yesslime] slime 1
execute @e[type=mrleefy:slimestill,tag=main,tag=yesslime,c=1,r=20] ~~~ scoreboard players set @e[name="slimespawner",r=20] slime 1
execute @e[name="slimespawner",scores={slime=0},c=1,tag=!noslime] ~~~ summon mrleefy:slimestill "§eSlime" ~~1~
execute @e[type=mrleefy:slimestill,r=20,tag=main] ~~~ execute @e[name="slimespawner",r=20,scores={slime=1..}] ~~~ scoreboard players set @s[r=20] slime 0
tag @e[type=mrleefy:slimestill,tag=main,c=1,r=20] add yesslime
particle minecraft:basic_flame_particle ~~~