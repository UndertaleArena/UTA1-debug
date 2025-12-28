#By Nebulirion

scoreboard players add GRbutton notgamerule 1
execute unless score GRbutton notgamerule matches 0..1 run scoreboard players set GRbutton notgamerule 0

execute if score GRbutton notgamerule matches 0 at @s run function ut:lobby/gamerule/gr_close
execute if score GRbutton notgamerule matches 1 at @s positioned ^ ^ ^-20 run function ut:lobby/gamerule/gr_open