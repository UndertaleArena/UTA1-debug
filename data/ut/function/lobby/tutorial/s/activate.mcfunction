#hihi this is neb
#my fav.number is 27

#say ac!
scoreboard players operation #from tut_s = @s tut_s
execute as @e[type=armor_stand,tag=tut_squit] if score @s tut_s = #from tut_s run kill @s
execute at @s positioned ^ ^ ^8.25 positioned ~ 113.75 ~ run function ut:lobby/tutorial/s/leave_button

execute at @s run tp @s ~ 111 ~
item replace entity @s armor.head with golden_carrot
scoreboard players set @s life 20
tag @s add tut_s_loaded