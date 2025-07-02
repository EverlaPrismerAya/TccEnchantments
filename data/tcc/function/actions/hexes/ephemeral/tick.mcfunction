scoreboard players add @s[scores={ephemeral_stamina=..299}] ephemeral_stamina 1
scoreboard players add @s ephemeral_stamina 0
title @s actionbar [{"translate":"enchantment.tcc.hex_ephemeral.display","bold":true,"color":"gold","fallback": "剩余体力:"},{"score": {"name":"@s","objective":"ephemeral_stamina"},"color":"blue"}]