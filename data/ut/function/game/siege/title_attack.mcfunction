
execute as @a[scores={tbid=1}] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 2 1

title @a[scores={tbid=1}] title {"translate":"gamemode.7","color":"yellow"}
title @a[scores={tbid=1}] subtitle {"translate":"gamemode.7.dsc.a","color":"white"}

title @a[scores={tbid=1}] times 10 40 10
scoreboard players set @a[scores={tbid=1}] title_timer 50

scoreboard players set #preGameSiege game 0
execute as @a[scores={tbid=1}] if score @s in_pregame matches 1 run function ut:game/pre_game_p_end