#yamato damage limiter
scoreboard players add @e[scores={yamato_max_damage_count=..14}] yamato_max_damage_count 1
scoreboard players reset @e[scores={yamato_max_damage_count=15}] yamato_max_damage_count
scoreboard players remove @e[scores={yamato_max_damage_count=16..}] yamato_max_damage_count 2
scoreboard players set @e[scores={yamato_max_damage_count=30..}] yamato_max_damage_count 25

#sonic blast range and time limiter
execute as @e[tag=tcc.entity.sonic_blast_owner] run function tcc:actions/sonic_blast/tick
scoreboard players remove @e[scores={sonic_blast_cooldown=1..}] sonic_blast_cooldown 1
scoreboard players add @e sonic_blast_cooldown 0
execute as @a[scores={sonic_blast_cooldown=1}] run title @s actionbar [{"text":" "}]
execute as @a[scores={sonic_blast_cooldown=2..20}] run title @s actionbar [{"translate":"enchantments.tcc.sonic_blast.cooldown.prefix","fallback":"还有"},{"score":{"objective":"sonic_blast_cooldown","name":"@s"}},{"translate":"enchantments.tcc.sonic_blast.cooldown.suffix","fallback":"刻冷却完毕"}]
execute as @e[scores={sonic_blast_max_range=61..}] run scoreboard players reset @s sonic_blast_max_range
execute as @e[scores={sonic_blast_max_range=1..}] run scoreboard players add @s sonic_blast_max_range 1

#amd invulnerability frame
scoreboard players add @e amd_inv_frame 0
scoreboard players remove @e[scores={amd_inv_frame=1..}] amd_inv_frame 1

#no gravity arrow vanish
execute as @e[tag=tcc.entity.arrow_no_gravity] at @s if predicate tcc:in_ground run function tcc:actions/arrow_no_gravity/vanish
execute as @e[tag=tcc.entity.arrow_no_gravity] at @s unless predicate tcc:in_ground run function tcc:actions/arrow_no_gravity/tick