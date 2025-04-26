# Pfft, who needs gravity?
#data merge entity @s {NoGravity:1b}

# Create a vector from 2 different XYZ positions...
execute store result score #x1 tcc_misc run data get entity @s Pos.[0] 1000
execute store result score #y1 tcc_misc run data get entity @s Pos.[1] 1000
execute store result score #z1 tcc_misc run data get entity @s Pos.[2] 1000

execute at @s facing entity @p[nbt={Inventory:[{Slot:-106b,components:{"minecraft:enchantments":{levels:{"tcc:mine_curse":1}}}}]}] eyes run tp @s ^ ^ ^.1
execute at @s facing entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"tcc:mine_curse":1}}}}}] eyes run tp @s ^ ^ ^.1

execute store result score #x2 tcc_misc run data get entity @s Pos.[0] 1000
execute store result score #y2 tcc_misc run data get entity @s Pos.[1] 1000
execute store result score #z2 tcc_misc run data get entity @s Pos.[2] 1000

scoreboard players operation #x2 tcc_misc -= #x1 tcc_misc
scoreboard players operation #y2 tcc_misc -= #y1 tcc_misc
scoreboard players operation #z2 tcc_misc -= #z1 tcc_misc

# ...and set fished item's velocity to it!
execute store result entity @s Motion.[0] double 0.018 run scoreboard players get #x2 tcc_misc
execute store result entity @s Motion.[1] double 0.018 run scoreboard players get #y2 tcc_misc
execute store result entity @s Motion.[2] double 0.018 run scoreboard players get #z2 tcc_misc
