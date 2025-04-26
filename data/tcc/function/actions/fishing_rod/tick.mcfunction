execute at @s[tag=!tcc.entity.initialized] if entity @p[distance=..30,nbt={Inventory:[{Slot:-106b,components:{"minecraft:enchantments":{levels:{"tcc:mine_curse":1}}}}]}] run function tcc:actions/mine_curse/tag
execute at @s[tag=!tcc.entity.initialized] if entity @p[distance=..30,nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"tcc:mine_curse":1}}}}}] run function tcc:actions/mine_curse/tag
execute at @s[tag=!tcc.entity.initialized] if entity @p[distance=..30,nbt={Inventory:[{Slot:-106b,components:{"minecraft:enchantments":{levels:{"tcc:honey_hole":1}}}}]}] run function tcc:actions/honey_hole/tag
execute at @s[tag=!tcc.entity.initialized] if entity @p[distance=..30,nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"tcc:honey_hole":1}}}}}] run function tcc:actions/honey_hole/tag

execute at @s[tag=tcc.entity.initialized] if block ~ ~0.18 ~ water run tag @s add tcc.entity.trigger
scoreboard players add @s[tag=tcc.entity.trigger] generic_lifetime 1
execute if entity @s[tag=tcc.entity.trigger,scores={generic_lifetime=40..}] if block ~ ~0.22 ~ water run tag @s add tcc.entity.triggered

execute if entity @s[tag=tcc.entity.triggered,tag=tcc.entity.mine_curse,tag=!tcc.entity.summoned] as @s run function tcc:actions/mine_curse/trigger

execute if entity @s[tag=tcc.entity.triggered,tag=tcc.entity.honey_hole,tag=!tcc.entity.summoned] as @s run function tcc:actions/honey_hole/trigger