scoreboard players add @s[scores={stealth=..99}] stealth 1
scoreboard players add @s stealth 0

execute as @s[scores={stealth=1..99}] run function tcc:actions/stealth/display

execute if score @s stealth matches 99 run playsound minecraft:block.beacon.activate player @s