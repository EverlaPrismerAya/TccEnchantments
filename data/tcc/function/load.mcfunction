# invulnerable frames
scoreboard objectives add yamato_max_damage_count dummy
scoreboard objectives add amd_inv_frame dummy

#sonic blast
scoreboard objectives add sonic_blast_max_range dummy
scoreboard objectives add sonic_blast_cooldown dummy

#stress
scoreboard objectives add stress_effect dummy
scoreboard objectives add stress_reset deathCount

scoreboard objectives add stealth dummy

#generics
scoreboard objectives add generic_lifetime dummy
scoreboard objectives add tcc_misc dummy
scoreboard objectives add rng dummy

#custom projectiles
scoreboard objectives add player_uid dummy
scoreboard players add tcc.player_uid player_uid 0

scoreboard objectives add player_uid_enabled dummy

scoreboard objectives add entity_uid dummy
scoreboard players add tcc.entity_uid entity_uid 0

scoreboard objectives add entity_uid_enabled dummy

gamerule commandBlockOutput false
gamerule sendCommandFeedback true