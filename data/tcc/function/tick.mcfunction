#yamato damage limiter
scoreboard players add @e[scores={yamato_max_damage_count=..9}] yamato_max_damage_count 1
scoreboard players reset @e[scores={yamato_max_damage_count=10}] yamato_max_damage_count
scoreboard players remove @e[scores={yamato_max_damage_count=11..}] yamato_max_damage_count 1
scoreboard players set @e[scores={yamato_max_damage_count=20..}] yamato_max_damage_count 20

#sonic blast range limiter
execute as @e[tag=tcc.entity.sonic_blast_owner,scores={sonic_blast_max_range=1}] at @s run function tcc:actions/sonic_blast/repeat
execute as @e[tag=tcc.entity.sonic_blast_owner,scores={sonic_blast_max_range=61..}] run tag @s remove tcc.entity.sonic_blast_owner
execute as @e[scores={sonic_blast_max_range=61..}] run scoreboard players reset @s sonic_blast_max_range