#By Nebulirion

execute unless score GLbutton notgamerule matches 1 run scoreboard players set GLbutton notgamerule -1
execute if score GLbutton notgamerule matches 1 run scoreboard players set GLbutton notgamerule 0
execute if score GLbutton notgamerule matches -1 run scoreboard players set GLbutton notgamerule 1

execute at @s run function ut:lobby/gamerule/gr_close
scoreboard players set rot store 135
execute if score GLbutton notgamerule matches 1 at @s positioned ^ ^ ^-20 run function ut:lobby/gamerule/grm_open1