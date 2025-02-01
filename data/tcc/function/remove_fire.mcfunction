execute unless dimension minecraft:the_nether run setblock ~ ~ ~ water[level=1] keep
execute if dimension minecraft:the_nether run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0 20
execute if dimension minecraft:the_nether run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace water
execute if dimension minecraft:the_nether run playsound minecraft:block.fire.extinguish block @a ~ ~ ~