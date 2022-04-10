scoreboard players set @s rate 400

scoreboard players remove @s[tag=!isunderwater,tag=isonwater] rate 50
scoreboard players remove @s[tag=isunderwater] rate 170

scoreboard players remove @s[tag=ishigh] rate 35
scoreboard players remove @s[tag=isveryhigh] rate 60

scoreboard players add @s[tag=isunderground] rate 50

scoreboard players remove @s[tag=isnight] rate 20

scoreboard players remove @s[tag=issprinting] rate 70

scoreboard players remove @s[tag=isinnether] rate 50

scoreboard players add @s[scores={temperature=..5}] rate 50
scoreboard players add @s[scores={temperature=24..}] rate 50

scoreboard players remove @s[scores={temperature=24..},tag=isonwater] rate 150
scoreboard players remove @s[scores={temperature=..5},tag=isnearfire,tag=!isnearlava] rate 100
scoreboard players remove @s[scores={temperature=..5},tag=isnearlava] rate 100

scoreboard players remove @s[scores={humidity=0..3}] rate 40
scoreboard players remove @s[scores={humidity=0..7}] rate 20
scoreboard players add @s[scores={humidity=8..10}] rate 40
scoreboard players add @s[scores={humidity=10..12}] rate 40
scoreboard players remove @s[scores={humidity=13..20}] rate 40
scoreboard players remove @s[scores={humidity=17..20}] rate 20
