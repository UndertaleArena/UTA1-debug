#By Nebulirion

scoreboard players operation @s hp += @e[tag=atker,limit=1] hp
scoreboard players operation @s dt += @e[tag=atker,limit=1] dt
function ut:system/hp_gain
function ut:system/dt_gain

tag @a[tag=vine_heal_target] remove vine_heal_target
kill @e[tag=atker,limit=1]
tag @s remove atker