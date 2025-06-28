function tcc:actions/generic_player_gamemode/store
tp ~ 1000 ~
gamemode creative
execute at @s positioned ~ ~-0.5 ~ summon end_crystal run damage @s 1 player_attack
execute at @s positioned ~ ~-0.5 ~ summon end_crystal run damage @s 1 player_attack
effect give @s minecraft:slow_falling 1 0 true
tp ~ ~ ~
function tcc:actions/generic_player_gamemode/restore