#By Nebulirion

#say checking!
data modify storage hitcheck List set from entity @e[tag=atker,limit=1] ArmorItems[2].components.minecraft:custom_data.hit_list
execute if data storage hitcheck List[0] run function ut:move/hit_list/check_loop