#By Nebulirion
#

scoreboard players operation #other_damge damage = #true_damage damage
execute if entity @s[tag=dt_shield] run function ut:player/hp/dt_shield
execute if entity @s[tag=passive_muffet,tag=!passive_muffet_cd] at @s run function ut:move/passive/muffet/remove_shield

execute if score @s shield > 0 const run function ut:player/hp/shield
#
scoreboard players operation #other_damge damage -= #true_damage damage
scoreboard players operation @s hp -= #true_damage damage
execute if score @s hp < 0 const run scoreboard players operation #true_damage damage += @s hp
function ut:player/hp/lose
#