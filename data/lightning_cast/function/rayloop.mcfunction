# 1. Increment safety counter
scoreboard players add @s raycast_steps 1

# 2. CHECK IMPACT: If block is NOT air, strike!
execute unless block ~ ~ ~ air run return run summon lightning_bolt

# 2. CHECK STEPS: If reached 300 steps (150 blocks), strike!
execute if score @s raycast_steps matches 300.. run return run summon lightning_bolt

# 5. RECURSE: Move forward 0.5 blocks and run again
execute positioned ^ ^ ^0.5 run function lightning_cast:rayloop
