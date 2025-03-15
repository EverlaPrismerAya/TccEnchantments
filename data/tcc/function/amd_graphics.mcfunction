scoreboard players add @s amd_max_damage_count 1
particle minecraft:explosion ~ ~1 ~ 
damage @s[scores={amd_inv_frame=0}] 2.1 minecraft:sonic_boom by @p[distance=0.1..]
scoreboard players add @s[scores={amd_inv_frame=0}] amd_max_damage_count 3