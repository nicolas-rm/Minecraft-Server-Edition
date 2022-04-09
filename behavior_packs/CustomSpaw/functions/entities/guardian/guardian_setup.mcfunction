#bridge-file-version: #109
scoreboard players add @s guardian 1
execute @s ~~~ execute @e[type=mrleefy:guardianstill,tag=main,name=!"§eguardian",r=20,c=1] ~~~ scoreboard players operation @s guardian += @e[type=mrleefy:guardianstill,tag=!main,name="§eguardian",r=20,c=1] guardian
execute @s ~~~ execute @e[type=mrleefy:guardianstill,tag=main,name=!"§eGuardian",r=20,c=1] ~~~ tp @e[type=mrleefy:guardianstill,tag=!main,name="§eguardian",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:guardianstill,r=20,scores={guardian=1}] ~~~ summon mrleefy:guardianstill ~~~ minecraft:ageable_grow_up "§dMobGrinder §r§eguardian"
execute @s ~~~ execute @e[type=mrleefy:guardianstill,tag=!main,name=!"§eguardian",r=20,c=1] ~~~ scoreboard players operation @s guardian += @e[type=mrleefy:guardianstill,tag=!main,name="§eguardian",r=20,c=1] guardian
execute @s[type=mrleefy:guardianstill,tag=main,name=!"§eguardian",r=20,c=1] ~~~ tp @e[type=mrleefy:guardianstill,tag=main,name="§eguardian",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:guardianstill,tag=!main,name=!"§eguardian",r=20,c=1] ~~~ tag @s add main
execute @s ~~~ execute @e[type=mrleefy:guardianstill,name=!"§eguardian",tag=main,r=20,c=1] ~~~ execute @e[type=mrleefy:guardianstill,name=!"§eguardian",tag=main,r=20,c=1,rm=0.01] ~~~ tp @e[type=mrleefy:guardianstill,name=!"§eguardian",tag=main,r=20,c=1,rm=0.01] 999999999 999999999 999999999
tp @s 999999999 999999999 999999999