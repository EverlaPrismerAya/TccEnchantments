scoreboard players add @e[scores={yamato_max_damage_count=..9}] yamato_max_damage_count 1
scoreboard players reset @e[scores={yamato_max_damage_count=10}] yamato_max_damage_count
scoreboard players remove @e[scores={yamato_max_damage_count=11..}] yamato_max_damage_count 1
scoreboard players set @e[scores={yamato_max_damage_count=20..}] yamato_max_damage_count 20