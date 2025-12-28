#By Nebulirion

scoreboard players operation @s passive_timer *= 50 const
scoreboard players operation @s mpregen -= @s passive_timer
scoreboard players operation @s passive_timer /= 50 const
execute if score @s passive_timer matches ..3 run scoreboard players set @s passive_timer 0
execute if score @s passive_timer matches 4.. run scoreboard players operation @s passive_timer /= 4 const
scoreboard players operation @s passive_timer *= 50 const
scoreboard players operation @s mpregen += @s passive_timer
scoreboard players operation @s passive_timer /= 50 const