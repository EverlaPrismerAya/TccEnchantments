scoreboard players set min rng 0
scoreboard players set max rng 99
function tcc:rng
scoreboard players operation @s tcc_misc = out rng
execute if entity @s[scores={tcc_misc=..49}] run summon creeper ~ ~ ~ {Tags:["tcc.entity.summoned_by_mine_curse"],Fuse:20,ignited:true}
execute if entity @s[scores={tcc_misc=..49}] run execute as @e[type=creeper,tag=tcc.entity.summoned_by_mine_curse,sort=nearest,limit=1] at @s run function tcc:actions/mine_curse/motion
kill @s