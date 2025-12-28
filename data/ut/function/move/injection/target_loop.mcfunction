#By Nebulirion

#particles
#execute anchored eyes run particle dust{color:[1,0,0],scale:0.8} ^0.15 ^0.1 ^0.5 0 0 0 1 3 force @a
#

particle item{item:white_terracotta} ~ ~0.9 ~ 0.2 0.5 0.2 0 7 force @a

#function ut:player/infight/use

#execute if score @s dt matches ..1000 run particle item{item:white_terracotta} ~ ~0.9 ~ 0.2 0.5 0.2 0 3 normal @a[scores={Q=2..}]
#execute if score @s dt matches ..600 run particle item{item:white_terracotta} ~ ~0.9 ~ 0.2 0.5 0.2 0 3 normal @a[scores={Q=2..}]
#execute if score @s dt matches ..200 run particle item{item:white_terracotta} ~ ~0.9 ~ 0.2 0.5 0.2 0 6 normal @a[scores={Q=2..}]


#execute if score @s last_damage matches 100.. run scoreboard players operation @s dt -= @s melt_speed
#execute if score @s last_damage matches 100.. run function ut:player/dt/lose
#execute if score @s dt matches ..0 run function ut:move/injection/target_stop
#