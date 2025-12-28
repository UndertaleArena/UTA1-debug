#By Nebulirion

# execute if entity @s[tag=gb_instant] run return run function ut:move/gaster_blaster/use_instant

execute if entity @s[tag=!gb_user] run function ut:move/gaster_blaster/use_prep
execute if entity @s[tag=gb_user] unless score @s unloadtime matches 1.. run function ut:move/gaster_blaster/use_shoot