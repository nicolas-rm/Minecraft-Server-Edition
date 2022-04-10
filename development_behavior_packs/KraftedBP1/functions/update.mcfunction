#This line is used to send a message from a function file:
#tellraw @a {"rawtext":[{"text":"§rMessage§r"}]}

#The first §r can be changed to any color, the last §r is used to reset changes and
#prevent text outside the message to have the color of the message
#@a is the recipient of the message and can be replaced by any selector except @initiator

#Color codes:

#Black (black)	§0
#White (white)	§f

#Dark Blue (dark_blue)	§1
#Blue (blue)	§9

#Dark Green (dark_green)	§2
#Green (green)	§a

#Dark Aqua (dark_aqua)	§3
#Aqua (aqua)	§b

#Dark Red (dark_red)	§4
#Red (red)	§c

#Dark Purple (dark_purple)	§5
#Light Purple (light_purple)	§d

#Dark Gray (dark_gray)	§8
#Gray (gray)	§7

#Gold (gold)	§6
#Yellow (yellow)	§e

#Obfuscated	§k
#Bold	§l
#Strikethrough	§m
#Underline	§n
#Italic	§o
#Reset	§r

#Execute init code on new players
execute @a[tag=!init] ~~~ function init
tag @a[tag=!init] add init

#Disable sending feedback to users
gamerule sendcommandfeedback false
#Write update code here

scoreboard players add @a tick 1

scoreboard players set @a[scores={thistEffect=..0}] thistEffect 0
scoreboard players set @a[scores={thistEffect=..0},tag=thirst] thistEffect 15
scoreboard players remove @a[scores={tick=20..,thistEffect=1..}] thistEffect 1
tag @a[scores={thistEffect=..0}] remove thirst

execute @a[m=!c,tag=isfreezing,scores={tick=20..},tag=!freezeImmunity,tag=!isonfire] ~~1~ summon o:freezing
execute @a[m=!c,tag=isburning,scores={tick=20..},tag=!fireImmunity,tag=!isonwater] ~~1~ summon o:burn
execute @a[m=!c,scores={tick=20..,thirst=..0}] ~~1~ summon o:thirst
execute @e[type=o:freezing] ~~~ tp @s @p
execute @e[type=o:burn] ~~~ tp @s @p
execute @e[type=o:thirst] ~~~ tp @s @p

scoreboard players add @a current_rate 1
execute @a ~~~ scoreboard players operation @s current_rate -= @s rate
execute @a[scores={current_rate=0..}] ~~~ scoreboard players set @s current_rate 0
execute @a[scores={current_rate=0..}] ~~~ function temperature
execute @a[scores={current_rate=..-1}] ~~~ scoreboard players operation @s current_rate += @s rate

event entity @a[scores={temperature=..5},tag=!isonfire,tag=!isinpowdersnow] o:become_freezing
event entity @a[scores={temperature=6..11},tag=!isonfire,tag=!isinpowdersnow] o:become_cold
event entity @a[scores={temperature=12..17},tag=!isonfire,tag=!isinpowdersnow] o:become_neutral
event entity @a[scores={temperature=18..23},tag=!isonfire,tag=!isinpowdersnow] o:become_warm
event entity @a[scores={temperature=24..},tag=!isonfire,tag=!isinpowdersnow] o:become_burning

event entity @a[tag=isinpowdersnow] o:become_freezing
event entity @a[tag=isonfire] o:become_burning

tag @a[tag=isonfire] remove isonfire
tag @a[tag=isinpowdersnow] remove isinpowdersnow

scoreboard players remove @a[scores={arrow_time=1..}] arrow_time 1
event entity @a[scores={arrow_time=..0}] o:stop_anim
scoreboard players set @a[scores={arrow_time=..0}] arrow_time 0

execute @a ~~~ function thirst
execute @a ~~~ function rate
execute @a ~~~ function humidity
scoreboard players remove @a[scores={tick=20..,targetcooldown=1..}] targetcooldown 5
execute @a[scores={tick=20..,targetcooldown=..0}] ~~~ function target
event entity @a[scores={tick=20..}] o:playerUpdate
effect @a[m=!c,scores={temperature=..0}] slowness 1 0 true
effect @a[m=!c,scores={temperature=..0}] weakness 1 0 true
effect @a[m=!c,scores={temperature=24..}] weakness 1 0 true

scoreboard players set @a[scores={tick=20..}] tick 0

#DEBUG
execute @a[tag=debug] ~~~ titleraw @s title {"rawtext": [{"text": "Rate: "}, {"score":{"name": "@s","objective": "current_rate"}}, {"text": "/"}, {"score":{"name": "@s","objective": "rate"}}]}
execute @a[tag=debug] ~~~ titleraw @s subtitle {"rawtext": [{"text": "Temperature: "}, {"score":{"name": "@s","objective": "temperature"}}, {"text": "/"}, {"score":{"name": "@s","objective": "target"}}, {"text": " Humidity: "}, {"score":{"name": "@s","objective": "humidity"}}]}

#Enable sending feedback to users
gamerule sendcommandfeedback true
