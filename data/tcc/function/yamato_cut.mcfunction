scoreboard players add @s yamato_max_damage_count 1
scoreboard players add @s[scores={yamato_max_damage_count=30..}] yamato_max_damage_count 2
damage @s[scores={yamato_max_damage_count=..15}] 0.5 tcc:fragile by @p[distance=0.1..]
particle minecraft:sonic_boom ~ ~1 ~ 
playsound minecraft:entity.wither.hurt player @a ~ ~ ~ 0.2 0
particle minecraft:sculk_charge_pop ~ ~ ~ 1 1 1 0.1 3