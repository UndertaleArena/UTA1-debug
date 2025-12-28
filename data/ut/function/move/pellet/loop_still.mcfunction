#By Nebulirion

tag @s add atker
scoreboard players operation #atker pid = @s pid
execute as @a if score @s pid = #atker pid at @s[tag=pellet_user_snipe] anchored eyes positioned ^ ^ ^ as @e[tag=atker,limit=1] run function ut:move/pellet/loop_still_pat1
execute as @a if score @s pid = #atker pid at @s[tag=!pellet_user_snipe] anchored eyes positioned ^ ^ ^ as @e[tag=atker,limit=1] run function ut:move/pellet/loop_still_pat0
tag @s remove atker