tag @s remove isfreezing
tag @s remove iscold
tag @s remove isneutral
tag @s remove iswarm
tag @s remove isburning

scoreboard players operation @s target -= @s temperature
tag @s[scores={target=1..}] add hotter
tag @s[scores={target=4..}] add fastChange
tag @s[scores={target=..-1}] add colder
tag @s[scores={target=..-4}] add fastChange
scoreboard players operation @s target += @s temperature

event entity @s[tag=hotter] o:become_hotter
event entity @s[tag=colder] o:become_colder
scoreboard players add @s[tag=hotter] temperature 1
scoreboard players add @s[tag=hotter,tag=fastChange] temperature 1
scoreboard players remove @s[tag=colder] temperature 1
scoreboard players remove @s[tag=colder,tag=fastChange] temperature 1

tag @s remove hotter
tag @s remove colder
tag @s remove fastChange

event entity @s[scores={temperature=..5}] o:become_freezing
event entity @s[scores={temperature=6..11}] o:become_cold
event entity @s[scores={temperature=12..17}] o:become_neutral
event entity @s[scores={temperature=18..23}] o:become_warm
event entity @s[scores={temperature=24..}] o:become_burning

tag @s[scores={temperature=..5}] add isfreezing
tag @s[scores={temperature=6..11}] add iscold
tag @s[scores={temperature=12..17}] add isneutral
tag @s[scores={temperature=18..23}] add iswarm
tag @s[scores={temperature=24..}] add isburning
