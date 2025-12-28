#By Nebulirion

execute store result score @s x_pos run data get entity @s Pos[0] 100
execute store result score @s y_pos run data get entity @s Pos[1] 100
execute store result score @s z_pos run data get entity @s Pos[2] 100

#scoreboard players reset @s move
#
#execute store result score t x_pos run data get entity @s Pos[0] 100
#execute store result score t y_pos run data get entity @s Pos[1] 100
#execute store result score t z_pos run data get entity @s Pos[2] 100
#
#scoreboard players operation @s x_pos -= t x_pos
#scoreboard players operation @s y_pos -= t y_pos
#scoreboard players operation @s z_pos -= t z_pos
#
#scoreboard players operation @s x_pos *= @s x_pos
#scoreboard players operation @s y_pos *= @s y_pos
#scoreboard players operation @s z_pos *= @s z_pos
#
#scoreboard players operation @s momentum = @s x_pos
#scoreboard players operation @s momentum += @s y_pos
#scoreboard players operation @s momentum += @s z_pos
#
#scoreboard players operation @s x_pos = t x_pos
#scoreboard players operation @s y_pos = t y_pos
#scoreboard players operation @s z_pos = t z_pos
#
#execute store result score lim momentum run attribute @s generic.movement_speed get 100
#scoreboard players set 4317 const 4317
#scoreboard players operation lim momentum *= 4317 const
#
#execute if score @s shift matches 1 run scoreboard players operation lim momentum *= 30 #const
#execute if score @s shift matches 1 run scoreboard players operation lim momentum /= 100 #const
#
#scoreboard players operation lim momentum /= #checkPerSec momentum
#
#scoreboard players operation lim momentum *= lim momentum
#scoreboard players operation lim momentum /= 10000 const
#
#scoreboard players operation lim momentum *= #sensitivity momentum
#scoreboard players operation lim momentum /= 100 const
#
#execute if entity @s[tag=credit_p] run scoreboard players set lim momentum 100
#
##Result
execute unless predicate ut:effects/blue if entity @s[tag=can_change_chr] unless score #preGame game matches 1 if score -GameMode game matches 4 run function ut:system/chrswitch/inventory_clear
#execute if score @s momentum > lim momentum run scoreboard players set @s ismoving 1
#execute unless score @s momentum > lim momentum run scoreboard players set @s ismoving 0
##