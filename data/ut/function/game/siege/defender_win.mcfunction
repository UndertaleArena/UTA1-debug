#By Nebulirion

 
execute as @a[tag=playing] if score @s tid = @e[tag=arena_point_b,scores={maplock=1},limit=1] tid run tag @s add winner

function ut:game/win

tag @a remove winner