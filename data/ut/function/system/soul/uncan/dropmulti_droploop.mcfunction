#By Nebulirion

function ut:system/soul/uncan/uncan

data remove storage soul SoulInv[0]
scoreboard players remove #drop soul 1
execute if score #drop soul matches 1.. run function ut:system/soul/uncan/dropmulti_droploop