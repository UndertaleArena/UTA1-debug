#By Nebulirion

execute if entity @s[tag=!bomb_mtt_user] run function ut:move/bomb_mtt/use_prep
execute if entity @s[tag=bomb_mtt_user] unless score @s unloadtime matches 1.. run function ut:move/bomb_mtt/use_shoot