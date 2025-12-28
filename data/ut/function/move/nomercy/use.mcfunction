#By Nebulirion

tag @s add nomercy_user

function ut:move/effect/nomercy/give

execute anchored eyes run function ut:move/red_trident/cast

scoreboard players set @s unloadtime 10
function ut:player/infight/use

tag @s remove nomercy_user