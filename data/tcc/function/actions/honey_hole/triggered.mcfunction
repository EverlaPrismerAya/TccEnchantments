execute store result score @s tcc_misc run random value 0..99
execute if entity @s[scores={tcc_misc=..19}] run loot spawn ~ ~ ~ loot tcc:enchantments/honey_hole
execute if entity @s[scores={tcc_misc=..19}] run execute as @e[type=item,distance=..2] at @s run function tcc:actions/honey_hole/motion
kill @s