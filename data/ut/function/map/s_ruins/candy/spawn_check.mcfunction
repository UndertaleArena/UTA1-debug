#By Nebulirion
#In this hellish world, you can only take 1 pieces of candy...

scoreboard players set #s_ruins_map timer 0
execute positioned -1784.00 103.00 1270.00 unless entity @e[type=item,tag=monster_candy,distance=..10] run function ut:map/s_ruins/candy/spawn