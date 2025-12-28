#By Nebulirion


scoreboard players set #killprj speed 0
scoreboard players set #temp speed 0

#playsound minecraft:block.slime_block.fall player @a

scoreboard players set -distance ray_distance 16
execute if score -distance ray_distance matches 1.. positioned ^ ^ ^-0.1 run function ut:move/_bounce2/outray

scoreboard players set -bounced store 0

execute align xyz run function ut:move/_bounce2/non_corner
execute if score -bounced store matches 0 align xyz run function ut:move/_bounce2/inner_corner