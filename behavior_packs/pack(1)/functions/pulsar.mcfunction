#bridge-file-version: #105
scoreboard objectives add tick dummy
 
scoreboard players add @e[type=ray:luz] tick 1
 
execute @e[scores={tick=0..1}] ~ ~ ~ event entity @s add_l
execute @e[scores={tick=!0..1}] ~ ~ ~ event entity @s add_ls
execute @e[scores={tick=3..}] ~ ~ ~ scoreboard players set @s tick 0
 
 
scoreboard objectives add soul_luz dummy
scoreboard players add @a soul_luz 1
execute @a[scores={soul_luz=0..3}] ~ ~ ~ function soul_luz
execute @a[scores={soul_luz=7..}] ~ ~ ~ fill ~10 ~10 ~10 ~-10 ~-8 ~-10 air 0 replace light_block 10
 
scoreboard objectives add luz dummy
scoreboard players add @a luz 1
execute @a[scores={luz=0..3}] ~ ~ ~ function luz
execute @a[scores={luz=7..}] ~ ~ ~ fill ~10 ~10 ~10 ~-10 ~-8 ~-10 air 0 replace light_block 15
 
 
scoreboard objectives add lava dummy
scoreboard players add @a[tag=lava] lava 1
execute @a[scores={lava=1}] ~ ~ ~ replaceitem entity @s[m=!c] slot.weapon.mainhand 0 bucket
execute @a[scores={lava=1}] ~ ~ ~ tag @s remove lava
execute @a[scores={lava=1}] ~ ~ ~ scoreboard players reset @s lava
scoreboard players add @e[type=ray:lava_bucket] lava 1
execute @e[scores={lava=0..4}] ~ ~ ~ event entity @s lava_sensor_remove
execute @e[scores={lava=5..7}] ~ ~ ~ event entity @s lava_sensor_add
execute @e[scores={lava=7..}] ~ ~ ~ scoreboard players reset @s lava
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
execute @e[type=ender_crystal] ~ ~ ~ function luz
execute @e[type=glow_squid] ~ ~ ~ function luz
execute @e[type=blaze] ~ ~ ~ function luz
execute @e[type=magma_cube] ~ ~ ~ function soul_luz
execute @e[type=xp_orb] ~ ~ ~ function soul_luz
execute @e[type=tnt] ~ ~ ~ function luz
execute @e[tag=charge] ~ ~~ function luz
execute @e[type=item,name="Shroom Light"] ~ ~ ~ function luz
execute @e[type=item,name="End Crystal"] ~ ~ ~ function luz
execute @e[type=item,name="Nether Star"] ~ ~ ~ function luz
execute @e[type=item,name="Fire Charge"] ~ ~ ~ function luz
execute @e[type=item,name="Glowstone Dust"] ~ ~ ~ function luz
 
execute @e[type=item,name="Luz de hongo"] ~ ~ ~ function luz
execute @e[type=item,name="Cristal del End"] ~ ~ ~ function luz
execute @e[type=item,name="Estrella del inframundo"] ~ ~ ~ function luz
execute @e[type=item,name="Descarga de fuego"] ~ ~ ~ function luz
execute @e[type=item,name="Polvo de piedra luminosa"] ~ ~ ~ function luz
 
 
 
execute @e[type=item,name="Torch"] ~ ~ ~ function luz
execute @e[type=item,name="Lantern"] ~ ~ ~ function luz
execute @e[type=item,name="Beacon"] ~ ~ ~ function luz
execute @e[type=item,name="Campfire"] ~ ~ ~ function luz
execute @e[type=item,name="Glowstone"] ~ ~ ~ function luz
execute @e[type=item,name="Lava Bucket"] ~ ~ ~ function luz
execute @e[type=item,name="Jack o'Lantern"] ~ ~ ~ function luz
 
execute @e[type=item,name="Soul Torch"] ~ ~ ~ function soul_luz
execute @e[type=item,name="Soul Lantern"] ~ ~ ~ function soul_luz
execute @e[type=item,name="Crema de magma"] ~ ~ ~ function soul_luz
execute @e[type=item,name="Sea Pickle"] ~ ~ ~ function soul_luz
execute @e[type=item,name="Glow Ink Sac"] ~ ~ ~ function soul_luz
execute @e[type=item,name="Glow Item Frame"] ~ ~ ~ function soul_luz
 
 
execute @e[type=item,name="Magma Cream"] ~ ~ ~ function soul_luz
execute @e[type=item,name="Pepinillo de mar"] ~ ~ ~ function soul_luz
execute @e[type=item,name="Saco de tinta brillante"] ~ ~ ~ function soul_luz
execute @e[type=item,name="Marco de elemento brillante"] ~ ~ ~ function soul_luz
execute @e[type=item,name="Soul Campfire"] ~ ~ ~ function soul_luz
 
 
execute @e[type=item,name="Antorcha"] ~ ~ ~ function luz
execute @e[type=item,name="Linterna"] ~ ~ ~ function luz
execute @e[type=item,name="Faro"] ~ ~ ~ function luz
execute @e[type=item,name="Fogata"] ~ ~ ~ function luz
execute @e[type=item,name="Piedra luminosa"] ~ ~ ~ function luz
execute @e[type=item,name="Cubeta con lava"] ~ ~ ~ function luz
execute @e[type=item,name="Calabaza iluminada"] ~ ~ ~ function luz
 
execute @e[type=item,name="Antorcha de alma"] ~ ~ ~ function soul_luz
execute @e[type=item,name="Linterna de alma"] ~ ~ ~ function soul_luz
execute @e[type=item,name="Fogata de alma"] ~ ~ ~ function soul_luz
 
 
 
 
 
 
execute @e[type=ray:luz] ~ ~ ~ execute @p ~ ~ ~ tp @e[c=1,type=ray:luz] ~ ~15 ~
 
execute @e[type=ray:lava_bucket] ~ ~ ~ execute @p ~ ~ ~ tp @e[c=1,type=ray:lava_bucket] ~ ~15 ~
 
 
 
scoreboard objectives add summon dummy
 
scoreboard players add @a summon 1
 
 
execute @a[scores={summon=1}] ~ ~ ~ summon ray:luz ~ ~15 ~
execute @a[scores={summon=1}] ~ ~ ~ summon ray:lava_bucket ~ ~15 ~
 
execute @a[scores={summon=40..}] ~ ~ ~ event entity @e despawn
execute @a[scores={summon=40..}] ~ ~ ~ scoreboard players set @s summon 0
 
 
 