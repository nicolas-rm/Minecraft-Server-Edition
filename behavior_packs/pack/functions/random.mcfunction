#bridge-file-version: #0
scoreboard objectives add t dummy
scoreboard players add @a t 1
 
execute @a[scores={t=600}] ~ ~ ~ function r
execute @a[scores={t=600}] ~ ~ ~ scoreboard players reset @s t
 