# Reset raycast_steps
scoreboard players set @s raycast_steps 0

# Play sound
execute at @s run playsound block.beacon.power_select master @s ~ ~ ~ 1 2 1

# Begin the raycast function 0.1 blocks in front of caster
execute at @s anchored eyes positioned ^ ^ ^0.1 run function lightning_cast:rayloop