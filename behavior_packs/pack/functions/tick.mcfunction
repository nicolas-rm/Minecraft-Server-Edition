#bridge-file-version: #45
event entity @a shield_cover
 
scoreboard objectives add fire dummy
 
scoreboard players add @e[tag=fire] fire 1
 
execute @e[scores={fire=1}] ~ ~ ~ summon small_fireball
execute @e[scores={fire=3}] ~ ~ ~ fill ~10 ~-10 ~10 ~-10 ~8 ~-10 air 0 replace fire
execute @e[scores={fire=3..}] ~ ~ ~ tag @s remove fire
execute @e[scores={fire=3..}] ~ ~ ~ scoreboard players reset @s fire
 
scoreboard objectives add fall dummy
scoreboard players add @a[tag=fall] fall 1
 
 
execute @a[scores={fall=1}] ~ ~ ~ effect @s levitation 1 12 true
execute @a[scores={fall=8..}] ~ ~ ~ effect @s levitation 0 250 true
execute @a[scores={fall=8..}] ~ ~ ~ tag @s remove fall
execute @a[scores={fall=8..}] ~ ~ ~ scoreboard players reset @s fall
 
scoreboard objectives add si dummy
scoreboard players add @e[type=ray:light] si 1
 
execute @e[scores={si=1}] ~ ~ ~ setblock ~ ~ ~ light_block 1
execute @e[scores={si=5}] ~ ~ ~ setblock ~ ~ ~ light_block 5
execute @e[scores={si=10}] ~ ~ ~ setblock ~ ~ ~ light_block 9
execute @e[scores={si=15}] ~ ~ ~ setblock ~ ~ ~ light_block 13
execute @e[scores={si=20}] ~ ~ ~ setblock ~ ~ ~ light_block 9
execute @e[scores={si=25}] ~ ~ ~ setblock ~ ~ ~ light_block 5
 
execute @e[scores={si=30}] ~ ~ ~ setblock ~ ~ ~ light_block 4
execute @e[scores={si=35}] ~ ~ ~ setblock ~ ~ ~ light_block 3
execute @e[scores={si=40}] ~ ~ ~ setblock ~ ~ ~ light_block 1
 
execute @e[scores={si=45..}] ~ ~ ~ setblock ~ ~ ~ air
execute @e[scores={si=45..}] ~ ~ ~ event entity @s des
 
 
execute @a ~ ~ ~ fill ~-10 ~-10 ~-10 ~10 ~8 ~10 air 0 replace structure_void
 
 
scoreboard objectives add anee dummy
 
scoreboard players add @e[tag=anee] anee 1
 
execute @e[scores={anee=1..5}] ~ ~ ~ playanimation @e animation.book animation.book
execute @e[scores={anee=600..}] ~ ~ ~ scoreboard players reset @s anee
 
scoreboard objectives add particle dummy
 
scoreboard players add @e[type=ray:book] particle 1
 
execute @e[scores={particle=100}] ~ ~ ~ function particle
execute @e[scores={particle=100..}] ~ ~ ~ scoreboard players reset @s particle
 
execute @e[type=ray:book] ~ ~ ~ detect ~ ~ ~ air 0 event entity @s des
 
 
scoreboard objectives add replace dummy
scoreboard players add @a[tag=replace] replace 1
 
execute @a[scores={replace=1}] ~ ~ ~ replaceitem entity @s[m=s] slot.weapon.mainhand 1 ray:fire_trident
execute @a[scores={replace=1}] ~ ~ ~ tag @s remove replace
execute @a[scores={replace=1}] ~ ~ ~ scoreboard players reset @s replace
scoreboard objectives add des dummy
execute @e[type=ray:trident] ~ ~ ~ particle minecraft:misc_fire_vapor_particle ~ ~ ~
execute @e[type=ray:trident] ~ ~ ~ particle minecraft:lava_particle
scoreboard players add @e[type=ray:trident] des 1
execute @e[scores={des=22}] ~ ~ ~ event entity @p scale_1
execute @e[scores={des=22}] ~ ~ ~ event entity @s des
scoreboard objectives add lava dummy
 
titleraw @s actionbar {"rawtext": [{ "text": "\n\n                                    "}]}
 
 
 
execute @e[type=item,name="§bNetherite Boots\n§9+2 Knockback Resistance\n§7Agility"] ~ ~ ~ tag @s add netherite
execute @e[type=item,name="§bNetherite Chestplate\n\n§9+2 Knockback Resistance\n§7Armoring"] ~ ~ ~ tag @s add netherite
execute @e[type=item,name="§bNetherite Chestplate\n\n§9+2 Knockback Resistance\n§7Burning Thorns"] ~ ~ ~ tag @s add netherite
execute @e[type=item,name="§bNetherite Leggings\n\n§9+2 Knockback Resistance\n§7Drowned Step"] ~ ~ ~ tag @s add netherite
execute @e[type=item,name="§bNetherite Chestplate\n\n§9+2 Knockback Resistance\n§7Health Boost II"] ~ ~ ~ tag @s add netherite
execute @e[type=item,name="§bNetherite Chestplate\n\n§9+2 Knockback Resistance\n§7Health Boost I"] ~ ~ ~ tag @s add netherite
execute @e[type=item,name="§bNetherite Sword\n§7Winter Aspect"] ~ ~ ~ tag @s add netherite
execute @e[type=item,name="§bNetherite Pickaxe\n§7Super Miner"] ~ ~ ~ tag @s add netherite
execute @e[type=item,name="§bNetherite Axe\n§7Tree Capitator"] ~ ~ ~ tag @s add netherite
execute @e[type=item,name="§bNetherite Pickaxe\n§7Orb Collector"] ~ ~ ~ tag @s add netherite
execute @e[type=item,name="§bTrident\n§7Fire Riptide"] ~ ~ ~ tag @s add netherite
 
execute @e[type=ray:book] ~  ~ ~ tp @s ~ ~ ~ facing @p[r=5]
 