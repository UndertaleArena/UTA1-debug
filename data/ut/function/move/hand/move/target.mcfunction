#Original By Nebulirion, SY edited

#rotation
execute as @e[tag=assist_use,limit=1] if entity @s[distance=1..] facing entity @s eyes run tp @e[tag=hand_curr] ~ ~ ~ ~ ~
execute unless entity @e[tag=assist_use,limit=1,distance=1..] rotated as @p[tag=hand_user] run tp @s ~ ~ ~ ~ ~

#origin pos data
execute store result score t x_pos run data get entity @s Pos[0] 100
execute store result score t y_pos run data get entity @s Pos[1] 100
execute store result score t z_pos run data get entity @s Pos[2] 100

#score calculation
scoreboard players operation #check store = @e[tag=assist_use,limit=1] y_pos
scoreboard players operation #check store -= t y_pos

#move check
execute if entity @e[tag=assist_use,limit=1,distance=1..] rotated as @s if block ^ ^ ^.35 #ut:trans run tp @s ^ ^ ^.35
execute if entity @p[tag=assist_use,limit=1,distance=2..] rotated as @s unless block ^ ^ ^.35 #ut:trans if score #check store matches ..-100 if block ^ ^-.5 ^ #ut:trans run tp @s ~ ~-.5 ~ ~ 0
execute if entity @e[tag=assist_use,limit=1,distance=1..] rotated as @s unless block ^ ^ ^.35 #ut:trans if score #check store matches 100.. if block ^ ^.5 ^ #ut:trans run tp @s ~ ~.5 ~ ~ 0

#stuck check
##motion calculate
execute store result score @s x_pos run data get entity @s Pos[0] 100
execute store result score @s y_pos run data get entity @s Pos[1] 100
execute store result score @s z_pos run data get entity @s Pos[2] 100
scoreboard players operation @s x_pos -= t x_pos
scoreboard players operation @s y_pos -= t y_pos
scoreboard players operation @s z_pos -= t z_pos
##stuck confirm
execute if entity @s[scores={x_pos=0,y_pos=0,z_pos=0}] if entity @e[tag=assist_use,limit=1,distance=1..] run tag @s add stuck
##score reset
scoreboard players reset @s x_pos
scoreboard players reset @s y_pos
scoreboard players reset @s z_pos

#rotation change shoot
execute as @p[tag=hand_user] if score @s plt1 matches 1.. rotated as @s at @e[tag=hand_curr] run tp @e[tag=hand_curr] ~ ~ ~ ~ ~
