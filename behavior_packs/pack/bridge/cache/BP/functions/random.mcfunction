{
	"file_path": "C:\\Users\\Owner\\AppData\\Local\\Packages\\Microsoft.MinecraftUWP_8wekyb3d8bbwe\\LocalState\\games\\com.mojang\\development_behavior_packs\\More Enchantments Addon\\functions\\random.mcfunction",
	"file_type": "function",
	"format_version": 0,
	"file_uuid": "6be3d727_a718_40cb_8621_9e7ad58c5d7d",
	"file_version": 0,
	"cache_content": "scoreboard objectives add t dummy\r\nscoreboard players add @a t 1\r\n\r\nexecute @a[scores={t=600}] ~ ~ ~ function r\r\nexecute @a[scores={t=600}] ~ ~ ~ scoreboard players reset @s t\r\n"
}