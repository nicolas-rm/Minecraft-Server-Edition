scoreboard players set @s targetcooldown 10
tag @s remove isonwater
execute @s ~~~ detect ~~~ water -1 tag @s add isonwater
execute @s ~~~ detect ~~~ flowing_water -1 tag @s add isonwater
scoreboard players set @s target 15

execute @s ~~~ function detect-heat/detect-all-heat
execute @s ~~~ function detect-cold/detect-all-cold
execute @s ~~~ detect ~~~ lava -1 scoreboard players add @s[tag=!fireImmunity] target 50
execute @s ~~~ detect ~~1~ lava -1 scoreboard players add @s[tag=!fireImmunity] target 50
execute @s ~~~ detect ~~~ flowing_lava -1 scoreboard players add @s[tag=!fireImmunity] target 50
execute @s ~~~ detect ~~1~ flowing_lava -1 scoreboard players add @s[tag=!fireImmunity] target 50

execute @s ~~~ detect ~~-1~ ice -1 scoreboard players remove @s[tag=!iswearingleather3] target 6
execute @s ~~~ detect ~~-1~ packed_ice -1 scoreboard players remove @s[tag=!iswearingleather3] target 6
execute @s ~~~ detect ~~-1~ blue_ice -1 scoreboard players remove @s[tag=!iswearingleather3] target 6
execute @s ~~~ detect ~~-1~ snow -1 scoreboard players remove @s[tag=!iswearingleather3] target 6
execute @s ~~~ detect ~~~ snow_layer -1 scoreboard players remove @s[tag=!iswearingleather3] target 3

scoreboard players remove @s[tag=!isunderwater,tag=!isonwater,tag=isunderrain] target 4
scoreboard players remove @s[tag=!isunderwater,tag=isonwater] target 5
scoreboard players remove @s[tag=isunderwater] target 7
scoreboard players remove @s[tag=isnearwater,tag=!isunderwater,tag=!isonwater] target 2

scoreboard players remove @s[tag=ishigh,tag=!isinnether] target 5
scoreboard players remove @s[tag=isveryhigh,tag=!isinnether] target 5
scoreboard players remove @s[tag=islow,tag=!isinnether] target 5
scoreboard players remove @s[tag=isverylow,tag=!isinnether] target 5

scoreboard players remove @s[tag=isunderground] target 2

scoreboard players add @s[tag=!isunderwater,tag=light1] target 4
scoreboard players add @s[tag=!isunderwater,tag=light2] target 2
scoreboard players add @s[tag=!isunderwater,tag=light7] target 4
scoreboard players add @s[tag=!isunderwater,tag=light8] target 2

scoreboard players add @s[tag=light9] target 6

scoreboard players add @s[tag=isnearlava] target 6
scoreboard players add @s[tag=!isnearlava,tag=isnearfire] target 5

scoreboard players add @s[tag=isday,tag=!isinnether,tag=!islow] target 3
scoreboard players remove @s[tag=isnight,tag=!isinnether,tag=!islow] target 3

scoreboard players add @s[tag=issprinting] target 2

scoreboard players remove @s[tag=iscoldbiome] target 5
scoreboard players remove @s[tag=isfrozenbiome] target 2
scoreboard players add @s[tag=iswarmbiome] target 5
scoreboard players add @s[tag=isburningbiome] target 2

scoreboard players add @s[tag=isinnether] target 4

scoreboard players add @s[tag=iswearingleather0,scores={target=..17}] target 3
scoreboard players add @s[tag=iswearingleather1,scores={target=..18}] target 2
scoreboard players add @s[tag=iswearingleather2,scores={target=..18}] target 2
scoreboard players add @s[tag=iswearingleather3,scores={target=..18}] target 2

tag @s remove ishigh
tag @s remove isveryhigh
tag @s remove islow
tag @s remove isverylow
