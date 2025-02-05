tag @e[distance=0.1..,limit=1,sort=nearest] add tcc.entity.sonic_blast_owner
scoreboard players add @e[tag=tcc.entity.sonic_blast_owner,limit=1,sort=nearest] sonic_blast_max_range 1
playsound minecraft:entity.warden.sonic_boom player @a[distance=..10] ~ ~ ~ 0.85 1
kill @s