#By Nebulirion
#
tag @s remove can_change_chr
scoreboard players set @s dt 0
execute if entity @s[tag=transformed] run function ut:move/sp_show/transform_reset
function ut:player/strong_setup
#