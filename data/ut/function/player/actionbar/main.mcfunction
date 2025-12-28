#By Nebulirion

# check if somehow not initialized
execute unless score @s UI matches 0.. run scoreboard players set @s UI 0

# Default UI
execute if score @s UI matches 0 run function ut:player/actionbar/new
# Newly idk what is this
execute if score @s UI matches 1 run function ut:player/user_interface/main
#
execute if score @s title_timer matches 1.. run scoreboard players remove @s title_timer 1
#