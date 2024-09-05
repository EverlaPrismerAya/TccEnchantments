execute unless block ~ ~ ~ #minecraft:wither_immune run setblock ~ ~ ~ air
execute unless block ~ ~ ~ #minecraft:wither_immune run particle minecraft:sonic_boom ~ ~ ~
execute unless block ~ ~ ~ #minecraft:wither_immune run summon bat ~ ~ ~ {NoAI:true,CustomName:"世界毁灭者",active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:300,show_particles:false}]}
execute unless block ~ ~ ~ #minecraft:wither_immune run execute as @p at @s run damage @e[type=bat,name="世界毁灭者",sort=nearest,limit=1] 999 dragon_breath
execute unless block ~ ~ ~ #minecraft:wither_immune run playsound minecraft:block.glass.break block @a ~ ~ ~