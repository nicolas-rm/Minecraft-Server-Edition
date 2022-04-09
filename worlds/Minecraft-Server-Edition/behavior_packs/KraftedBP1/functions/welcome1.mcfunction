scoreboard objectives add hello_world1 dummy
scoreboard players set @a[tag=!hello_world1] hello_world1 160
scoreboard players set @a[tag=!hello_world1] hello_world1 160
scoreboard players set @a[tag=!hello_world1] hello_world1 160
tag @a add hello_world1
scoreboard players add @a[scores={hello_world1=!0}] hello_world1 -1
execute @a[scores={hello_world1=1}] ~~~ playsound block.end_portal.spawn @s