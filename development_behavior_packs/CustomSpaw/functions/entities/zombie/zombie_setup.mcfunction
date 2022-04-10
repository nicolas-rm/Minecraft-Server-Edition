#bridge-file-version: #109
scoreboard players add @s zombie 1
execute @s ~~~ execute @e[type=mrleefy:zombiestill,tag=main,name=!"§ezombie",r=20,c=1] ~~~ scoreboard players operation @s zombie += @e[type=mrleefy:zombiestill,tag=!main,name="§ezombie",r=20,c=1] zombie
execute @s ~~~ execute @e[type=mrleefy:zombiestill,tag=main,name=!"§ezombie",r=20,c=1] ~~~ tp @e[type=mrleefy:zombiestill,tag=!main,name="§ezombie",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:zombiestill,r=20,scores={zombie=1}] ~~~ summon mrleefy:zombiestill ~~~ minecraft:ageable_grow_up "§dMobGrinder §r§ezombie"
execute @s ~~~ execute @e[type=mrleefy:zombiestill,tag=!main,name=!"§ezombie",r=20,c=1] ~~~ scoreboard players operation @s zombie += @e[type=mrleefy:zombiestill,tag=!main,name="§ezombie",r=20,c=1] zombie
execute @s[type=mrleefy:zombiestill,tag=main,name=!"§ezombie",r=20,c=1] ~~~ tp @e[type=mrleefy:zombiestill,tag=main,name="§ezombie",r=20,c=1] 999999999 999999999 999999999
execute @s ~~~ execute @e[type=mrleefy:zombiestill,tag=!main,name=!"§ezombie",r=20,c=1] ~~~ tag @s add main
execute @s ~~~ execute @e[type=mrleefy:zombiestill,name=!"§ezombie",tag=main,r=20,c=1] ~~~ execute @e[type=mrleefy:zombiestill,name=!"§ezombie",tag=main,r=20,c=1,rm=0.01] ~~~ tp @e[type=mrleefy:zombiestill,name=!"§ezombie",tag=main,r=20,c=1,rm=0.01] 999999999 999999999 999999999
tp @s 999999999 999999999 999999999