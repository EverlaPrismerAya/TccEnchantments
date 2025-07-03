particle minecraft:dust_pillar{block_state:"minecraft:dirt"} ~ ~ ~ 2 0 2 0 300 normal
particle minecraft:dust_pillar{block_state:"minecraft:stone"} ~ ~ ~ 2 0 2 0 300 normal
playsound minecraft:entity.generic.big_fall player @a ~ ~ ~
scoreboard players reset @s[scores={enemy_step=3..}] enemy_step
scoreboard players add @s enemy_step 1
execute if score @s enemy_step matches 1..2 run playsound tcc:enchantment.enemy_step.step_on_1 player @a ~ ~ ~
execute if score @s enemy_step matches 3 run playsound tcc:enchantment.enemy_step.step_on_2 player @a ~ ~ ~