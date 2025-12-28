#By Nebulirion
#
scoreboard players operation @s hpbase = @s hpmax
scoreboard players operation @s mpbase = @s mpmax
scoreboard players operation @s dtbase = @s dtmax
function ut:player/setup
scoreboard players set @s dt 0
function ut:choose/resetmove
#