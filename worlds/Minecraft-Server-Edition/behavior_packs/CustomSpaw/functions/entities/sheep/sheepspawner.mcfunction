#bridge-file-version: #109
summon mrleefy:spawnrule "sheepspawner" ~~~
scoreboard players set @e[name="sheepspawner",r=20] sheep 0
execute @p[rm=50] ~~~ tag @e[name="sheepspawner",c=1,rm=50] add nosheep
tag @e[type=mrleefy:sheepstill,tag=main,c=1,r=20] add yessheep
scoreboard players add @e[type=mrleefy:sheepstill,tag=main,c=1,tag=yessheep] sheep 1
execute @e[type=mrleefy:sheepstill,tag=main,tag=yessheep,c=1,r=20] ~~~ scoreboard players set @e[name="sheepspawner",r=20] sheep 1
execute @e[name="sheepspawner",scores={sheep=0},c=1,tag=!nosheep] ~~~ summon mrleefy:sheepstill "§eSheep" ~~1~
execute @e[type=mrleefy:sheepstill,r=20,tag=main] ~~~ execute @e[name="sheepspawner",r=20,scores={sheep=1..}] ~~~ scoreboard players set @s[r=20] sheep 0
tag @e[type=mrleefy:sheepstill,tag=main,c=1,r=20] add yessheep
particle minecraft:basic_flame_particle ~~~