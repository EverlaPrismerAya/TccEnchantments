execute if entity @s[scores={stress_effect=1..,stress_reset=1..}] run scoreboard players set @s stress_effect 0
execute if entity @s[scores={stress_reset=1..}] run scoreboard players set @s stress_reset 0
execute if entity @s[scores={stress_effect=1..}] run scoreboard players remove @s stress_effect 1
execute if entity @s[scores={stress_effect=240..}] run damage @s 2 tcc:stress
execute if entity @s[scores={stress_effect=240..}] run scoreboard players remove @s stress_effect 2
execute if entity @s[scores={stress_effect=2000..}] run scoreboard players set @s stress_effect 2000