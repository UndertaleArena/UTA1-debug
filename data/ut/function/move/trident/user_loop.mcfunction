#By Nebulirion

#execute if score @s plt1 matches 12.. if score @s plt1b matches 1 anchored eyes run particle dust{color:[0.0,0.9,0.9],scale:0.8} ^-0.15 ^0.05 ^0.5 0 0 0 1 3 force @a
#execute if score @s plt1 matches 12.. unless score @s plt1b matches 1 anchored eyes run particle dust{color:[1.0,0.6,0.0],scale:0.8} ^0.15 ^0.05 ^0.5 0 0 0 1 3 force @a
#
execute unless data entity @s SelectedItem.components."minecraft:custom_data".trident run function ut:move/trident/user_stop
#
tag @s add trident_p
function ut:move/effect/nojump/give
#
scoreboard players operation #this pid = @s pid
scoreboard players set #broken damage 0
#
execute if score @s plt1 matches 2..11 unless score @s plt1 matches 6 as @e[tag=trident,tag=swing] if score @s sid = #this pid at @s run function ut:move/trident/loop_3
execute if score @s plt1 matches 2..11 unless score @s plt1 matches 6 as @e[tag=trident,tag=swing] if score @s sid = #this pid at @s run function ut:move/trident/loop_3
execute if score @s plt1 matches 7 run function ut:move/trident/change
execute as @e[tag=trident,tag=!swing] if score @s sid = #this pid at @s run function ut:move/trident/loop
#
scoreboard players operation #broken damage /= 5 const
scoreboard players operation @s cd += #broken damage
function ut:player/cd/change
#
tag @s remove trident_p
#
scoreboard players add @s cdcooldown 1
scoreboard players remove @s plt1 1
execute unless score @s plt1 matches 1.. run function ut:move/trident/user_stop