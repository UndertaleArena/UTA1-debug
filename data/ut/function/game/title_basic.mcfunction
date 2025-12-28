#By Nebulirion

#Extra
scoreboard players set #preGame game 0
execute as @a[tag=playing] if score @s in_pregame matches 1 run function ut:game/pre_game_p_end