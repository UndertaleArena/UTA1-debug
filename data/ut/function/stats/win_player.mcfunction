#By Nebulirion

tag @s[tag=winner] add hi_i_won
tag @s[tag=!hi_i_won] add hi_i_lost

#function ut:stats/win_chr

scoreboard players add @s st_gamesfinished 1
scoreboard players add @s[tag=hi_i_won] st_gameswon 1

###SKILLED WINRATE###
scoreboard players operation teamQ store = ingame_teams info
execute if score -GameMode game matches 2 if entity @s[team=!boss] run scoreboard players set teamQ store 2

scoreboard players set weight st_wp 840
scoreboard players operation weight st_wp *= teamQ store

scoreboard players set weight st_lp 840
scoreboard players operation weight st_lp *= teamQ store
scoreboard players remove teamQ store 1
scoreboard players operation weight st_lp /= teamQ store
scoreboard players add teamQ store 1
#####################

scoreboard players operation @s[tag=hi_i_lost] st_lp += weight st_lp
scoreboard players operation @s[tag=hi_i_won] st_wp += weight st_wp

tag @s remove hi_i_lost
tag @s remove hi_i_won