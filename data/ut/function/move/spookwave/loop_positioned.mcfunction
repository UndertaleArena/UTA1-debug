###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
execute if entity @s[tag=music_player] run function ut:move/spookwave/music
execute if score @s life matches 2..12 run function ut:move/spookwave/zoom
###MOVEMENT
scoreboard players operation #this speed = @s speed
scoreboard players operation @s range -= #this speed
function ut:move/spookwave/_sys/movement
###HITCHECK
scoreboard players set #hits hitcheck 99
execute if score #stop speed matches 1.. run function ut:move/spookwave/hitcheck
###RANGE
execute if score @s range matches ..0 run function ut:void