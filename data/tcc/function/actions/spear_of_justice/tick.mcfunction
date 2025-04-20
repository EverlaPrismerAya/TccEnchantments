execute if entity @s[tag=!entity.tcc.dealt_damage] run damage @e[type=!#tcc:immune_to_custom_aoe_damage,distance=..1.5,sort=nearest,limit=1] 6 tcc:mirage_trident by @s
execute if entity @s[tag=!entity.tcc.dealt_damage] run execute if entity @e[type=!#tcc:immune_to_custom_aoe_damage,distance=..1.5,sort=nearest,limit=1] run tag @s add entity.tcc.dealt_damage
execute if entity @s[predicate=tcc:in_ground] run kill @s
execute if entity @s[tag=entity.tcc.dealt_damage] run kill @s