damage @s[type=!player] 3 tcc:aflame
damage @s[type=player] 1.5 tcc:aflame
effect give @s slowness 5 1 true
particle minecraft:flame ~ ~ ~ 0.5 2 0.5 0.01 20
scoreboard players reset @s aflame_inv_frame