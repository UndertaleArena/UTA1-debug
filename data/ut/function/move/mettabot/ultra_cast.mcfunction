# by SY91419, debug usage

# score
scoreboard players remove @s plt3 1
#cast
execute rotated ~ 0 positioned ~ ~1.5 ~ run function ut:move/mettabot/cast
# loop
execute if score @s plt3 matches 1.. run function ut:move/mettabot/ultra_cast