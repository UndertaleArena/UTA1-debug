#By Nebulirion

execute if score @s trigger matches 1..3 run function ut:lobby/setting/player/night_vision
execute if score @s trigger matches 11..14 run function ut:lobby/setting/player/display_quality
execute if score @s trigger matches 21..23 run function ut:lobby/setting/player/character

execute if score @s trigger matches 101..200 run function ut:lobby/frog/trigger