#By ANTHINY609
# muffet passive trigger pre

# Shield Repair plt
execute if score #true_damage damage matches 1.. run scoreboard players set @s plt4 30
# Check if Shield Break
#execute if score @s shield matches 1.. run function ut:player/hp/shield