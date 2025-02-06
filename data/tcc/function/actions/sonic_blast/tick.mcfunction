execute as @s[scores={sonic_blast_max_range=1,sonic_blast_cooldown=20}] at @s run function tcc:actions/sonic_blast/repeat
execute as @s[scores={sonic_blast_cooldown=..19}] at @s run function tcc:actions/sonic_blast/disable
execute as @s[scores={sonic_blast_max_range=61..}] run tag @s remove tcc.entity.sonic_blast_owner