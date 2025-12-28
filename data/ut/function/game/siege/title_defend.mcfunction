
execute as @a[scores={tbid=2}] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 2 1

title @a[scores={tbid=2}] title {"translate":"gamemode.7","color":"yellow"}
title @a[scores={tbid=2}] subtitle {"translate":"gamemode.7.dsc.b","color":"white"}

title @a[scores={tbid=2}] times 10 40 10
scoreboard players set @a[scores={tbid=2}] title_timer 50

scoreboard players set #preGame game 0
execute as @a[scores={tbid=2}] if score @s in_pregame matches 1 run function ut:game/pre_game_p_end