#bridge-file-version: #110
summon mrleefy:spawnrule "zombiespawner" ~~~
scoreboard players set @e[name="zombiespawner",r=20] zombie 0
execute @p[rm=50] ~~~ tag @e[name="zombiespawner",c=1,rm=50] add nozombie
tag @e[type=mrleefy:zombiestill,tag=main,c=1,r=20] add yeszombie
scoreboard players add @e[type=mrleefy:zombiestill,tag=main,c=1,tag=yeszombie] zombie 1
execute @e[type=mrleefy:zombiestill,tag=main,tag=yeszombie,c=1,r=20] ~~~ scoreboard players set @e[name="zombiespawner",r=20] zombie 1
execute @e[name="zombiespawner",scores={zombie=0},c=1,tag=!nozombie] ~~~ summon mrleefy:zombiestill "§eZombie" ~~1~
execute @e[type=mrleefy:zombiestill,r=20,tag=main] ~~~ execute @e[name="zombiespawner",r=20,scores={zombie=1..}] ~~~ scoreboard players set @s[r=20] zombie 0
tag @e[type=mrleefy:zombiestill,tag=main,c=1,r=20] add yeszombie
particle minecraft:basic_flame_particle ~~~