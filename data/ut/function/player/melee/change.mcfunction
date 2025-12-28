#By Nebulirion

execute if entity @s[tag=!effect_infolink] run function ut:player/melee/change_default
execute if entity @s[tag=effect_infolink] run function ut:move/effect/infolink/meleechange

scoreboard players operation #temp ml = @s ml
scoreboard players operation #temp ml *= 100 const
scoreboard players operation #temp ml /= @s mlmax
scoreboard players operation @s mldis = #temp ml
execute if score @s ml >= @s mlmax run function ut:player/melee/reset