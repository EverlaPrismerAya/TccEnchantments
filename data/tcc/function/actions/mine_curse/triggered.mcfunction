execute store result score @s tcc_misc run random value 0..99
execute if entity @s[scores={tcc_misc=..49}] run summon creeper ~ ~ ~ {Tags:["tcc.entity.summoned_by_mine_curse"],Fuse:20,ignited:true}
execute if entity @s[scores={tcc_misc=..49}] run execute as @e[type=creeper,tag=tcc.entity.summoned_by_mine_curse,sort=nearest,limit=1] at @s run function tcc:actions/mine_curse/motion
kill @s