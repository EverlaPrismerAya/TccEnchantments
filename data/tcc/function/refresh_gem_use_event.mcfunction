advancement revoke @a only tcc:events/refresh_gem_use_event
playsound minecraft:block.beacon.activate player @s
particle minecraft:dragon_breath ~ ~ ~ 1 0 1 0.1 60
particle minecraft:end_rod ~ ~ ~ 1 0 1 0.1 30
item modify entity @s weapon.mainhand tcc:remove_enchantment_cost