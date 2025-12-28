#By Nebulirion

scoreboard players reset @s kid
tag @s remove dog_owner
tag @s add dogkilled
scoreboard players set @s hp 0
function ut:player/hp/zero
tag @s remove dogkilled