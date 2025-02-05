loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air
playsound minecraft:block.stone.break player @a[distance=..10] ~ ~ ~ 0.5
particle minecraft:block{block_state:"minecraft:stone"} ~ ~ ~ 0.3 0.3 0.3 0 64
function tcc:actions/vein_mining/vein_mining