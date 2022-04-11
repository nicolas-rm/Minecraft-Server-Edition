#Code to be executed only once when a new player joins
scoreboard objectives add tick dummy
scoreboard players set @s tick 0
scoreboard objectives add target dummy
scoreboard players set @s target 15
scoreboard objectives add targetcooldown dummy
scoreboard players set @s targetcooldown 0
scoreboard objectives add temperature dummy
scoreboard players set @s temperature 15
scoreboard objectives add humidity dummy
scoreboard players set @s humidity 10
scoreboard objectives add rate dummy
scoreboard players set @s rate 7
scoreboard objectives add current_rate dummy
scoreboard players set @s current_rate 0
scoreboard objectives add thirst dummy
scoreboard players set @s thirst 100
scoreboard objectives add thistcooldown dummy
scoreboard players set @s thistcooldown 10
scoreboard objectives add thistEffect dummy
scoreboard players set @s thistEffect 0
scoreboard objectives add arrow_time dummy
scoreboard players set @s arrow_time 0

gamerule commandblockoutput false
gamerule sendcommandfeedback false
give @s glass_bottle
give @s oh:tin_pickaxe 
