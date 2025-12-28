#
execute unless score -state border matches 1..3 run function ut:game/border/state_0
execute if score -state border matches 1 run function ut:game/border/state_1
execute if score -state border matches 2 run function ut:game/border/state_2

scoreboard players add -drawintv border 1
execute as @a at @s run function ut:game/border/player_loop
execute if score -drawintv border >= -drawintvmx border run scoreboard players set -drawintv border 0

tp @s ~ ~ ~ ~5 ~