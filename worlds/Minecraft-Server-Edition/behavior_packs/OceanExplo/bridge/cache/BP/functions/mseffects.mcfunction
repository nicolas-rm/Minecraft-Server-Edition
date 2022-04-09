{
	"file_path": "C:\\Users\\Serap\\AppData\\Local\\Packages\\Microsoft.MinecraftUWP_8wekyb3d8bbwe\\LocalState\\games\\com.mojang\\development_behavior_packs\\OceanExplorationBP\\functions\\mseffects.mcfunction",
	"file_type": "function",
	"format_version": 0,
	"file_uuid": "c6eec5ec_99d6_4aa3_ad2f_e157588d8096",
	"file_version": 3,
	"cache_content": "scoreboard objectives add ocean_effects dummy ocean_effects\nscoreboard players set @a[tag=!oceaneffects] ocean_effects 20\nexecute @e[type=ocean:effects] ~~~ tp @s @p\ntag @a add oceaneffects\nscoreboard players remove @a[scores={ocean_effects=0..}] ocean_effects 1\nexecute @a[scores={ocean_effects=0}] ~~~ summon ocean:effects ~~~\nscoreboard players set @a[scores={ocean_effects=0}] ocean_effects 20"
}