#yamato damage limiter
scoreboard players add @e[scores={yamato_max_damage_count=..14}] yamato_max_damage_count 1
scoreboard players reset @e[scores={yamato_max_damage_count=15}] yamato_max_damage_count
scoreboard players remove @e[scores={yamato_max_damage_count=16..}] yamato_max_damage_count 2
scoreboard players set @e[scores={yamato_max_damage_count=30..}] yamato_max_damage_count 25

#sonic blast range and time limiter
execute as @e[tag=tcc.entity.sonic_blast_owner] run function tcc:actions/sonic_blast/tick
scoreboard players remove @e[scores={sonic_blast_cooldown=1..}] sonic_blast_cooldown 1
scoreboard players add @e sonic_blast_cooldown 0
execute as @e[scores={sonic_blast_max_range=61..}] run scoreboard players reset @s sonic_blast_max_range
execute as @e[scores={sonic_blast_max_range=1..}] run scoreboard players add @s sonic_blast_max_range 1

#amd invulnerability frame
scoreboard players add @e amd_inv_frame 0
scoreboard players remove @e[scores={amd_inv_frame=1..}] amd_inv_frame 1

#no gravity arrow vanish
execute as @e[tag=tcc.entity.arrow_no_gravity] at @s if predicate tcc:in_ground run function tcc:actions/arrow_no_gravity/vanish
execute as @e[tag=tcc.entity.arrow_no_gravity] at @s unless predicate tcc:in_ground run function tcc:actions/arrow_no_gravity/tick

#arrow things
execute as @e[tag=tcc.entity.geology_cannon_projectile] at @s run particle minecraft:dust_color_transition{from_color: [0.4, 1.0, 1.0], scale: 1.0, to_color: [0.0, 0.3, 0.3]} ~ ~ ~ 0.2 0.2 0.2 0 30
execute as @e[tag=tcc.entity.player_missile] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 3
execute as @e[tag=tcc.entity.player_missile] at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0.05 4

execute as @e[tag=tcc.entity.player_missile] at @s if predicate tcc:in_ground run function tcc:actions/arrow_no_gravity/vanish
execute as @e[tag=tcc.entity.geology_cannon_projectile] at @s if predicate tcc:in_ground run function tcc:actions/arrow_no_gravity/vanish

#stress effect
execute as @e[scores={stress_effect=1..}] at @s run function tcc:actions/stress/tick

#vein mining
execute as @e[tag=tcc.entity.vein_trigger,type=minecraft:marker] at @s run function tcc:actions/vein_mining/tick

#betray trident
execute as @e[type=minecraft:trident,nbt={DealtDamage:true},tag=tcc.entity.betray_trident] at @s run damage @p[distance=..3] 8 minecraft:trident by @s

#mirage trident
execute as @e[type=minecraft:trident,tag=tcc.entity.mirage_trident] at @s run function tcc:actions/spear_of_justice/tick

#fishing rod
execute as @e[type=minecraft:fishing_bobber] at @s run function tcc:actions/fishing_rod/tick

execute as @e[type=marker,tag=tcc.entity.mine_curse_marker] at @s unless entity @e[type=fishing_bobber,distance=..2] run function tcc:actions/mine_curse/triggered
scoreboard players add @e[type=marker,tag=tcc.entity.mine_curse_marker] generic_lifetime 1
kill @e[type=marker,tag=tcc.entity.mine_curse_marker,scores={generic_lifetime=20..}]

execute as @e[type=marker,tag=tcc.entity.honey_hole_marker] at @s unless entity @e[type=fishing_bobber,distance=..2] run function tcc:actions/honey_hole/triggered
scoreboard players add @e[type=marker,tag=tcc.entity.honey_hole_marker] generic_lifetime 1
kill @e[type=marker,tag=tcc.entity.honey_hole_marker,scores={generic_lifetime=20..}]

#aflame
execute as @e[scores={aflame=1..}] at @s run function tcc:actions/hexes/aflame/victim_tick

#player tick
execute as @a run function tcc:player_tick

#hellbound
execute if entity @e[type=vex,tag=tcc.entity.hellbound_vex] run function tcc:actions/hexes/hellbound/tick

execute as @e[type=witch] at @s if block ~ ~ ~ soul_campfire if block ~ ~1 ~ powder_snow run damage @s 1 tcc:aflame