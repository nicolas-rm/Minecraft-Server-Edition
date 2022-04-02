#bridge-file-version: #27
summon mrleefy:spawnrule "blazespawner" ~~~
scoreboard players set @e[name="blazespawner",r=20] blaze 0
execute @p[rm=50,c=1] ~~~ tag @e[name="blazespawner",c=1,rm=50] add noblaze
tag @e[type=mrleefy:blazestill,tag=main,c=1,r=20] add yesblaze
scoreboard players add @e[type=mrleefy:blazestill,tag=main,c=1,tag=yesblaze] blaze 1
execute @e[type=mrleefy:blazestill,tag=main,tag=yesblaze,c=1,r=20] ~~~ scoreboard players set @e[name="blazespawner",r=20] blaze 1
execute @e[name="blazespawner",scores={blaze=0},c=1,tag=!noblaze] ~~~ summon mrleefy:blazestill "§eBlaze" ~~1~
execute @e[type=mrleefy:blazestill,r=20,tag=main] ~~~ execute @e[name="blazespawner",r=20,scores={blaze=1..}] ~~~ scoreboard players set @s[r=20] blaze 0
tag @e[type=mrleefy:blazestill,tag=main,c=1,r=20] add yesblaze
particle minecraft:basic_flame_particle ~~~