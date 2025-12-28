#By Nebulirion
#tag removing
tag @a remove in_parkour_mng

#tagging in-game players
execute positioned ~-7 ~-3 ~-12 run tag @a[dx=13,dy=12,dz=28] add in_parkour_mng

#MAIN
scoreboard players add parkour_timer tutorial 1
execute if score parkour_timer tutorial matches 6.. if entity @a[tag=in_parkour_mng] run function ut:lobby/minis/parkour/bone/spawn

execute positioned ~-8 ~-3 ~-11.5 run tp @a[dx=17,dy=1,dz=20,nbt={OnGround:1b}] ~7 ~4.1 ~24 -180 0
execute positioned ~-3 ~8 ~10.5 run tag @a[dx=5,dy=3,dz=0] add parkour_win
execute positioned ~-2 ~5 ~13.5 as @a[dx=3,dy=0,dz=2,tag=parkour_win] at @s run function ut:lobby/minis/parkour/win
#
execute if score hq_parkour info matches ..1 run function ut:lobby/minis/parkour/bone/hqp
execute unless score hq_parkour info matches ..1 run function ut:lobby/minis/parkour/bone/lqp