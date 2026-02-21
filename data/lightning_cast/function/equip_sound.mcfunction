# Play sound
execute at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 1 1 1

# Reset advancement so every craft replays sound
advancement revoke @s only lightning_cast:craft_stick