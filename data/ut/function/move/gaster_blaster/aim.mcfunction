#By Nebulirion

#execute as @a[tag=playing] unless score @s tid = #this tid run tag @s add gb_enemy

scoreboard players set @s plt3 0

execute if score @s plt3 matches ..64 positioned ^ ^ ^1 run function ut:move/gaster_blaster/aim_loop

#tag @a remove gb_enemy