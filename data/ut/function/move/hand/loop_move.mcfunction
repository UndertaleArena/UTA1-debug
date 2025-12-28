#Original by Nebulirion, SY edited

#find assist
execute as @e[tag=hand_assist] if score @s pid = #user pid run tag @s add assist_use

#state check
execute if score #temp store matches 1 run function ut:move/hand/move/follow
execute if score #temp store matches 2 run function ut:move/hand/move/circle
execute if score #temp store matches 3 if entity @s[tag=hand_rev] run function ut:move/hand/move/follow
execute if score #temp store matches 3 if entity @s[tag=!hand_rev] run function ut:move/hand/move/target

#hitcheck
function ut:move/hand/hitcheck

#stuckcheck
execute if entity @s[tag=!stuck] if score @s life matches 1.. run scoreboard players remove @s life 1
execute if entity @s[tag=stuck] run function ut:move/hand/stuckcheck
execute if score @s life matches ..0 run scoreboard players reset @s life

#tag removing
tag @e[tag=assist_use] remove assist_use
tag @s remove hand_rev