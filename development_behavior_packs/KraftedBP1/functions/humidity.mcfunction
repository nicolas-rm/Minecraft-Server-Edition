tag @s remove isonwater
execute @s ~~~ detect ~~~ water -1 tag @s add isonwater
execute @s ~~~ detect ~~~ flowing_water -1 tag @s add isonwater
scoreboard players set @s humidity 10

execute @s ~~~ detect ~~~ lava -1 scoreboard players remove @s humidity 50
execute @s ~~~ detect ~~1~ lava -1 scoreboard players remove @s humidity 50
execute @s ~~~ detect ~~~ flowing_lava -1 scoreboard players remove @s humidity 50
execute @s ~~~ detect ~~1~ flowing_lava -1 scoreboard players remove @s humidity 50

scoreboard players add @s[tag=!isunderwater,tag=!isonwater,tag=isunderrain] humidity 4
scoreboard players add @s[tag=!isunderwater,tag=isonwater] humidity 5
scoreboard players add @s[tag=isunderwater] humidity 7
scoreboard players add @s[tag=isnearwater,tag=!isunderwater,tag=!isonwater] humidity 2

scoreboard players add @s[tag=ishigh] humidity 1
scoreboard players add @s[tag=islow] humidity 3
scoreboard players add @s[tag=isverylow] humidity 2

scoreboard players remove @s[tag=isnearlava] humidity 6
scoreboard players remove @s[tag=!isnearlava,tag=isnearfire] humidity 5

scoreboard players remove @s[tag=isday,tag=!isinnether,tag=!islow] humidity 3
scoreboard players add @s[tag=isnight,tag=!isinnether,tag=!islow] humidity 3

scoreboard players add @s[tag=iswetbiome] humidity 5
scoreboard players add @s[tag=ishumidbiome] humidity 2
scoreboard players add @s[tag=!iswetbiome,tag=!ishumidbiome,tag=!isdrybiome,tag=!isaridbiome] humidity 1
scoreboard players remove @s[tag=isdrybiome] humidity 2
scoreboard players remove @s[tag=isaridbiome] humidity 5

scoreboard players set @s[tag=isinnether] humidity 0
