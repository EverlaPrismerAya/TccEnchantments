scoreboard players set min rng 0
scoreboard players set max rng 99
function tcc:rng
scoreboard players operation @s tcc_misc = out rng
execute if entity @s[scores={tcc_misc=..19}] run loot spawn ~ ~ ~ loot tcc:enchantments/honey_hole
execute if entity @s[scores={tcc_misc=..19}] run execute as @e[type=item,distance=..2] at @s run function tcc:actions/honey_hole/motion
kill @s