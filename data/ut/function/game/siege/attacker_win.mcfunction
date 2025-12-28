#By Nebulirion

execute as @a[tag=playing] unless score @s tid = #defend tid run tag @s add winner

function ut:game/win

tag @a remove winner