#bridge-file-version: #1
summon mrleefy:spawnrule "endermanspawner" ~~~
scoreboard players set @e[name="endermanspawner",r=20] enderman 0
execute @p[rm=50] ~~~ tag @e[name="endermanspawner",c=1,rm=50] add noenderman
tag @e[type=mrleefy:endermanstill,tag=main,c=1,r=20] add yesenderman
scoreboard players add @e[type=mrleefy:endermanstill,tag=main,c=1,tag=yesenderman] enderman 1
execute @e[type=mrleefy:endermanstill,tag=main,tag=yesenderman,c=1,r=20] ~~~ scoreboard players set @e[name="endermanspawner",r=20] enderman 1
execute @e[name="endermanspawner",scores={enderman=0},c=1,tag=!noenderman] ~~~ summon mrleefy:endermanstill "§eEnderman" ~~1~
execute @e[type=mrleefy:endermanstill,r=20,tag=main] ~~~ execute @e[name="endermanspawner",r=20,scores={enderman=1..}] ~~~ scoreboard players set @s[r=20] enderman 0
tag @e[type=mrleefy:endermanstill,tag=main,c=1,r=20] add yesenderman
particle minecraft:basic_flame_particle ~~~