summon mrleefy:spawnrule "magmacubespawner" ~~~
scoreboard players set @e[name="magmacubespawner",r=20] magmacube 0
execute @p[rm=50] ~~~ tag @e[name="magmacubespawner",c=1,rm=50] add nomagmacube
tag @e[type=mrleefy:magmacubestill,tag=main,c=1,r=20] add yesmagmacube
scoreboard players add @e[type=mrleefy:magmacubestill,tag=main,c=1,tag=yesmagmacube] magmacube 1
execute @e[type=mrleefy:magmacubestill,tag=main,tag=yesmagmacube,c=1,r=20] ~~~ scoreboard players set @e[name="magmacubespawner",r=20] magmacube 1
execute @e[name="magmacubespawner",scores={magmacube=0},c=1,tag=!nomagmacube] ~~~ summon mrleefy:magmacubestill "§eMagmacube" ~~1~
execute @e[type=mrleefy:magmacubestill,r=20,tag=main] ~~~ execute @e[name="magmacubespawner",r=20,scores={magmacube=1..}] ~~~ scoreboard players set @s[r=20] magmacube 0
tag @e[type=mrleefy:magmacubestill,tag=main,c=1,r=20] add yesmagmacube
particle minecraft:basic_flame_particle ~~~