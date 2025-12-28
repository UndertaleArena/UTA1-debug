#hihi this is neb
#my fav.number is 27

#say deac!
scoreboard players operation #from tut_s = @s tut_s
execute as @e[type=armor_stand,tag=tut_squit] if score @s tut_s = #from tut_s run kill @s

execute at @s run tp @s ~ 111 ~
item replace entity @s armor.head with air
tag @s remove tut_s_loaded