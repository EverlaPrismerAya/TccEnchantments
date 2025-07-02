particle minecraft:explosion_emitter ~ ~ ~
particle minecraft:flame ~ ~ ~ 0 0 0 0.5 100
playsound minecraft:entity.generic.explode player @a ~ ~ ~
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 50
execute as @e[distance=..4.5,tag=!tcc.entity.hellbound_vex,type=!#tcc:immune_to_custom_aoe_damage] run damage @s 20 explosion by @e[tag=tcc.entity.hellbound_vex,sort=nearest,limit=1]
kill @s