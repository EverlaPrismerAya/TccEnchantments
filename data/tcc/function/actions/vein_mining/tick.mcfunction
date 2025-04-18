execute as @s if block ~ ~ ~ minecraft:air run function tcc:actions/vein_mining/vein_mining_trigger
execute unless block ~ ~ ~ minecraft:air run scoreboard players add @s generic_lifetime 1
execute unless entity @a[distance=..10] run kill @s
kill @s[scores={generic_lifetime=200..}]