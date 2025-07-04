# invulnerable frames
scoreboard objectives add yamato_max_damage_count dummy
scoreboard objectives add amd_inv_frame dummy

#sonic blast
scoreboard objectives add sonic_blast_max_range dummy
scoreboard objectives add sonic_blast_cooldown dummy

#stress
scoreboard objectives add stress_effect dummy
scoreboard objectives add stress_reset deathCount

#stealth
scoreboard objectives add stealth dummy

#aflame
scoreboard objectives add aflame dummy
scoreboard objectives add weak_aflame dummy
scoreboard objectives add aflame_inv_frame dummy

#ephemeral
scoreboard objectives add ephemeral_stamina dummy

#hellbound
scoreboard objectives add hellbound_vex_lifetime dummy

#enemy step
scoreboard objectives add enemy_step dummy

#generics
scoreboard objectives add generic_lifetime dummy
scoreboard objectives add tcc_misc dummy
scoreboard objectives add falling_speed dummy
scoreboard objectives add gamemode dummy
scoreboard objectives add tcc_hp health

#custom projectiles
scoreboard objectives add player_uid dummy
scoreboard players add tcc.player_uid player_uid 0

scoreboard objectives add entity_uid dummy
scoreboard players add tcc.entity_uid entity_uid 0

gamerule commandBlockOutput false
gamerule sendCommandFeedback true