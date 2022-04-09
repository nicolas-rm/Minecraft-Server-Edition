#bridge-file-version: #110
summon mrleefy:spawnrule "guardianspawner" ~~~
scoreboard players set @e[name="guardianspawner",r=20] guardian 0
execute @p[rm=50] ~~~ tag @e[name="guardianspawner",c=1,rm=50] add noguardian
tag @e[type=mrleefy:guardianstill,tag=main,c=1,r=20] add yesguardian
scoreboard players add @e[type=mrleefy:guardianstill,tag=main,c=1,tag=yesguardian] guardian 1
execute @e[type=mrleefy:guardianstill,tag=main,tag=yesguardian,c=1,r=20] ~~~ scoreboard players set @e[name="guardianspawner",r=20] guardian 1
execute @e[name="guardianspawner",scores={guardian=0},c=1,tag=!noguardian] ~~~ summon mrleefy:guardianstill "§eGuardian" ~~1~
execute @e[type=mrleefy:guardianstill,r=20,tag=main] ~~~ execute @e[name="guardianspawner",r=20,scores={guardian=1..}] ~~~ scoreboard players set @s[r=20] guardian 0
tag @e[type=mrleefy:guardianstill,tag=main,c=1,r=20] add yesguardian
particle minecraft:basic_flame_particle ~~~