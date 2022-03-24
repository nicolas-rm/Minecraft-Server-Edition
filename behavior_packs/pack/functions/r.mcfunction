#bridge-file-version: #11
scoreboard objectives add r dummy
 
scoreboard players random @s r 1 20
execute @s[scores={r=1}] ~ ~ ~ give @s totem
execute @s[scores={r=1}] ~ ~ ~ playsound random.totem
execute @s[scores={r=1}] ~ ~ ~ particle minecraft:totem_particle
execute @s[scores={r=1}] ~ ~ ~ particle minecraft:totem_manual
 
execute @s[scores={r=2}] ~ ~ ~ summon evocation_illager
 
execute @s[scores={r=3}] ~ ~ ~ fill ~2 ~2 ~2 ~-2 ~-2 ~-2 ice 0 replace air
execute @s[scores={r=3}] ~ ~ ~ playsound random.glass
execute @s[scores={r=4}] ~ ~ ~ summon shulker
execute @s[scores={r=5}] ~ ~ ~ summon pufferfish
execute @s[scores={r=5}] ~ ~ ~ summon pufferfish
execute @s[scores={r=5}] ~ ~ ~ summon pufferfish
execute @s[scores={r=5}] ~ ~ ~ summon pufferfish
execute @s[scores={r=5}] ~ ~ ~ summon pufferfish
execute @s[scores={r=6}] ~ ~ ~ xp 10l
execute @s[scores={r=6}] ~ ~ ~ playsound random.levelup
execute @s[scores={r=7}] ~ ~ ~ effect @s levitation 10 0
execute @s[scores={r=8}] ~ ~ ~ give @s trident
execute @s[scores={r=8}] ~ ~ ~ playsound item.trident.riptide_1
execute @s[scores={r=9}] ~ ~ ~ summon villager
execute @s[scores={r=9}] ~ ~ ~ setblock ~ ~1 ~ bed
execute @s[scores={r=9}] ~ ~ ~ event entity @s minecraft:gain_bad_omen
execute @s[scores={r=10}] ~ ~ ~ effect @s speed 30 100
execute @s[scores={r=11}] ~ ~ ~ summon horse
execute @s[scores={r=11}] ~ ~ ~ ride @p start_riding @e[type=horse,c=1]
execute @s[scores={r=12}] ~ ~ ~ effect @a invisibility 30 0 true
execute @s[scores={r=13}] ~ ~ ~ summon tnt ~~ ~
execute @s[scores={r=14}] ~ ~ ~ setblock ~ ~ ~ web
execute @s[scores={r=15}] ~ ~20 ~ fill ~3 ~ ~3 ~-3 ~ ~-3 pointed_dripstone
execute @s[scores={r=16}] ~ ~ ~ summon ender_crystal
execute @s[scores={r=17}] ~ ~ ~ effect @s blindness
execute @s[scores={r=18}] ~ ~ ~ effect @s health_boost 10 4
execute @s[scores={r=18}] ~ ~ ~ playsound beacon.activate
execute @s[scores={r=19}] ~ ~ ~ playsound firework.blast
execute @s[scores={r=19}] ~ ~ ~ give @s elytra
execute @s[scores={r=20}] ~ ~ ~ effect @s absorption
 
 
 
 
 
 
 