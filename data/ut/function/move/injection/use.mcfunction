#By Nebulirion

tag @s add inject_rc

function ut:move/injection/hint

execute unless entity @e[tag=inject_target] run function ut:move/injection/use_self
execute if entity @e[tag=inject_target] run function ut:move/injection/use_suc_pre

tag @e remove inject_target
tag @s remove inject_rc