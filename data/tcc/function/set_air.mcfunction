execute unless block ~ ~ ~ #tcc:destroyer_unbreakable run setblock ~ ~ ~ air
execute if block ~ ~ ~ #tcc:destroyer_unbreakable run execute unless block ~ ~ ~ #minecraft:wither_immune run setblock ~ ~ ~ air destroy
particle minecraft:smoke ~ ~ ~ 0.25 0.25 0.25 0 30
particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0 3
particle minecraft:lava ~ ~ ~ 0.25 0.25 0.25 0 1
execute unless block ~ ~ ~ #tcc:destroyer_unbreakable run playsound minecraft:entity.wither.break_block block @a ~ ~ ~ 0.2 1