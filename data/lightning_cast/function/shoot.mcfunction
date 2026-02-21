# Reset raycast_steps
scoreboard players set @s raycast_steps 0

# Begin the raycast function 0.1 blocks in front of caster
execute at @s anchored eyes positioned ^ ^ ^.1 run function lightning_cast:rayloop

# Reset advancement to enable reuse
advancement revoke @s only lightning_cast:use_stick