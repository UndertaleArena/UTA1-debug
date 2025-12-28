#By Nebulirion

execute positioned -1784.00 103.00 1270.00 unless entity @e[type=item,tag=monster_candy,distance=..10] run scoreboard players add #s_ruins_map timer 1
execute if score #s_ruins_map timer matches 600.. if score -GameMode game matches 7 run function ut:map/s_ruins/candy/spawn_check