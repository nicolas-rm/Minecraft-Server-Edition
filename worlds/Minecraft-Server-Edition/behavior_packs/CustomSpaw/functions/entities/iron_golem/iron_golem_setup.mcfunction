#bridge-file-version: #120
scoreboard players add @s iron_golem 1
execute @s ~~~ execute @e[type=mrleefy:irongolemstill,tag=main,name=!"§eiron_golem",r=20,c=1] ~~~ scoreboard players operation @s iron_golem += @e[type=mrleefy:irongolemstill,tag=!main,name="§eiron_golem",r=20,c=1] iron_golem
execute @s ~~~ execute @e[type=mrleefy:irongolemstill,tag=main,name=!"§eiron_golem",r=20,c=1] ~~~ tp @e[type=mrleefy:irongolemstill,tag=!main,name="§eiron_golem",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:irongolemstill,r=20,scores={iron_golem=1}] ~~~ summon mrleefy:irongolemstill ~~~ minecraft:ageable_grow_up "§dMobGrinder §r§eIron_golem"
execute @s ~~~ execute @e[type=mrleefy:irongolemstill,tag=!main,name=!"§eiron_golem",r=20,c=1] ~~~ scoreboard players operation @s iron_golem += @e[type=mrleefy:irongolemstill,tag=!main,name="§eiron_golem",r=20,c=1] iron_golem
execute @s[type=mrleefy:irongolemstill,tag=main,name=!"§eiron_golem",r=20,c=1] ~~~ tp @e[type=mrleefy:irongolemstill,tag=main,name="§eiron_golem",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:irongolemstill,tag=!main,name=!"§eiron_golem",r=20,c=1] ~~~ tag @s add main
execute @s ~~~ execute @e[type=mrleefy:irongolemstill,name=!"§eiron_golem",tag=main,r=20,c=1] ~~~ execute @e[type=mrleefy:irongolemstill,name=!"§eiron_golem",tag=main,r=20,c=1,rm=0.01] ~~~ tp @e[type=mrleefy:irongolemstill,name=!"§eiron_golem",tag=main,r=20,c=1,rm=0.01] 999999999 999999999 999999999
tp @s 999999999 999999999 999999999