#By Nebulirion

function ut:system/soul/drop_one

data remove storage soul SoulInv[0]
scoreboard players remove #drop soul 1
execute if score #drop soul matches 1.. run function ut:system/soul/dropmulti_droploop