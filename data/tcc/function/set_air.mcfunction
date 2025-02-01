execute unless block ~ ~ ~ #tcc:destroyer_unbreakable run setblock ~ ~ ~ air
execute if block ~ ~ ~ #tcc:destroyer_unbreakable unless block #minecraft:wither_immune run setblock ~ ~ ~ air destroy
particle minecraft:sonic_boom ~ ~ ~
execute unless block ~ ~ ~ #tcc:destroyer_unbreakable run playsound minecraft:block.glass.break block @a ~ ~ ~