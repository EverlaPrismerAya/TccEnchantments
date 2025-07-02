#scrolls
execute if entity @s[nbt={Inventory:[{id:"minecraft:enchanted_book",components:{"minecraft:custom_model_data":5950001}}]}] at @s run function tcc:actions/hexes/aflame/scroll
execute if entity @s[nbt={Inventory:[{id:"minecraft:enchanted_book",components:{"minecraft:custom_model_data":5950002}}]}] at @s run function tcc:actions/hexes/ephemeral/scroll
execute if entity @s[nbt={Inventory:[{id:"minecraft:enchanted_book",components:{"minecraft:custom_model_data":5950003}}]}] at @s run function tcc:actions/hexes/hellbound/scroll

#enemy step
execute if entity @s[nbt={Inventory:[{Slot:100b,components:{"minecraft:enchantments":{levels:{"tcc:enemy_step":1}}}}]},scores={falling_speed=..-800}] at @s run function tcc:actions/enemy_step/tick

#generic falling speed
execute if entity @s[nbt={OnGround:0b}] run function tcc:actions/generic_falling_speed/tick
scoreboard players reset @s[nbt={OnGround:1b}] falling_speed

#sonic blast display
execute if entity @s[scores={sonic_blast_cooldown=1}] run title @s actionbar [{"text":" "}]
execute if entity @s[scores={sonic_blast_cooldown=2..20}] run title @s actionbar [{"translate":"enchantments.tcc.sonic_blast.cooldown.prefix","fallback":"还有"},{"score":{"objective":"sonic_blast_cooldown","name":"@s"}},{"translate":"enchantments.tcc.sonic_blast.cooldown.suffix","fallback":"刻冷却完毕"}]