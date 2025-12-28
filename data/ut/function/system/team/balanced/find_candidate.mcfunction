#By Nebulirion

scoreboard players operation @s skill_dif = @s skill
scoreboard players operation @s skill_dif -= -Diffrence skill
execute if score @s skill_dif matches ..-1 run scoreboard players operation @s skill_dif *= -1 const

execute if score @s skill_dif < -Min skill_dif run function ut:system/team/balanced/find_candidate_newbest
