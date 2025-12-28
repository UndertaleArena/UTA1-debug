#By Nebulirion

execute store result score @s y_pos run data get entity @s Pos[1] 100
execute if score @s y_pos < -LowPos y_pos run function ut:move/web/void
execute unless score @s y_pos < -LowPos y_pos run function ut:move/web/stop_success