# Give Lightning Stick
give @s blaze_rod[custom_name=[{"text":"<<","color":"gold","bold":true,"italic":false,"obfuscated":true},{"text":"Lightning Stick","color":"gold","bold":true,"italic":false,"obfuscated":false},{"text":">>","color":"gold","bold":true,"italic":false,"obfuscated":true}],lore=[[{"text":"Smite your enemies","color":"dark_purple"}],[{"text":"with the fear of ","color":"dark_purple"},{"text":"God","color":"gold"},{"text":"!","color":"dark_purple"}]],rarity="epic",enchantment_glint_override=true,equippable={"slot": "mainhand","equip_sound": "block.enchantment_table.use"},consumable={"consume_seconds": 10000,"animation": "none","has_consume_particles": false},custom_data={"lightning": true}] 1

# Play sound
function lightning_cast:equip_sound