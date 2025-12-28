#By Nebulirion

tag @r[tag=!spectator,tag=!player] add player
scoreboard players remove pl store 1
execute if score pl store matches 1.. run function ut:system/team/balanced/get_players