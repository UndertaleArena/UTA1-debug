#By Nebulirion

scoreboard players remove -distance ray_distance 1
execute if block ~ ~ ~ #ut:trans run function ut:move/_bounce2/outray_out
execute if score -distance ray_distance matches 1.. positioned ^ ^ ^-0.1 run function ut:move/_bounce2/outray