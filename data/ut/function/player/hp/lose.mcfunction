#By Nebulirion

###
scoreboard players set @s[scores={hp=..-1}] hp 0
execute if score @s hp matches 0 run function ut:player/hp/zero
#
function ut:player/hp/update