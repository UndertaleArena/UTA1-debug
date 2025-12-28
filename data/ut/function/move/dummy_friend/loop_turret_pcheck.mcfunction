###Generated from Nebulagen made By Nebulirion
#03/13/2021, 13:37:48

tag @s add dummy_friend_user_player_entity

scoreboard players set #toofar3 plt1 0
scoreboard players set #toofar5 plt1 0

execute unless entity @s[distance=..3] facing entity @s eyes as @e[type=armor_stand,tag=dummying,limit=1] run function ut:move/dummy_friend/loop_turret_toofar
execute unless entity @s[distance=..6] run scoreboard players set #toofar5 plt1 1

tag @s remove dummy_friend_user_player_entity