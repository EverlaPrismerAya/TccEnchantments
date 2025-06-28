execute as @e[distance=0.5..2.2,type=!#tcc:immune_to_custom_aoe_damage] run damage @s 7 minecraft:generic by @p
function tcc:actions/enemy_step/bounce
particle minecraft:dust_pillar{block_state:"minecraft:dirt"} ~ ~ ~ 2 0 2 0 300 normal
particle minecraft:dust_pillar{block_state:"minecraft:stone"} ~ ~ ~ 2 0 2 0 300 normal
playsound minecraft:entity.generic.big_fall player @a ~ ~ ~