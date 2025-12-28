#By Nebulirion

data modify storage ut:temp UUID_TEMP set from storage ut:temp UUID
execute if score -success store matches 1 store success score -success store run data modify storage ut:temp UUID_TEMP set from entity @s Thrower

execute if score -success store matches 0 run function ut:player/nodrop2/found_drop_item