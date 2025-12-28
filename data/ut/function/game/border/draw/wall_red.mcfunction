#By Nebulirion

particle dust{color:[1.0,0.0,0.0],scale:2.0} ^ ^1 ^ 0 0 0 0 1 force @s
function ut:game/border/draw/wall_red_side
execute if score -drawtype border matches 1 rotated ~180 0 run function ut:game/border/draw/wall_red_side