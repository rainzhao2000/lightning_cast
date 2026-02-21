# Reset advancement to enable reuse
advancement revoke @s only lightning_cast:use_stick

# 1. Increment safety counter
scoreboard players add @s raycast_steps 1

# 2. CHECK IMPACT: If block is NOT air or water, strike!
execute unless block ~ ~ ~ air unless block ~ ~ ~ water run return run summon lightning_bolt

# 3. DETECT ENTITY HIT: Hit entities except caster
execute unless entity @s[dx=0] if entity @e[dx=0] run return run summon lightning_bolt

# 4. CHECK STEPS: If reached 300 steps (150 blocks), strike!
execute if score @s raycast_steps matches 300.. run return run summon lightning_bolt

# 5. RECURSE: Move forward 0.5 blocks and run again
execute positioned ^ ^ ^0.5 run function lightning_cast:rayloop
