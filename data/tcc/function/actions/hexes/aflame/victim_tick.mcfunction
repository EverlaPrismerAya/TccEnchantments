scoreboard players remove @s aflame 1
scoreboard players add @s aflame_inv_frame 1
execute if score @s aflame_inv_frame matches 10.. run function tcc:actions/hexes/aflame/aflame_damage
particle minecraft:dust_pillar{block_state:"minecraft:lava"} ~ ~ ~ 0.5 0 0.5 0 10 normal