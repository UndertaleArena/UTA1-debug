#By Nebulirion

execute if score #core_state map matches 0 run playsound minecraft:block.beacon.activate block @a ~ ~ ~ .5 2
execute if score #core_state map matches 1 run playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ .5 2

particle dust{color:[0.0,0.8,1.0],scale:1.0} ~ ~ ~ .25 .25 .25 0 10 normal @a[scores={Q=2..}]
particle dust{color:[0.0,0.8,1.0],scale:1.0} ~ ~-1 ~ .25 .25 .25 0 10 normal @a[scores={Q=2..}]
particle dust{color:[0.0,0.8,1.0],scale:1.0} ~ ~-2 ~ .25 .25 .25 0 10 normal @a[scores={Q=2..}]
particle dust{color:[0.0,0.8,1.0],scale:1.0} ~ ~-3 ~ .25 .25 .25 0 10 normal @a[scores={Q=2..}]
particle dust{color:[0.0,0.8,1.0],scale:1.0} ~ ~-4 ~ .25 .25 .25 0 10 normal @a[scores={Q=2..}]
particle dust{color:[0.0,0.8,1.0],scale:1.0} ~ ~-5 ~ .25 .25 .25 0 10 normal @a[scores={Q=2..}]
particle dust{color:[0.0,0.8,1.0],scale:1.0} ~ ~-6 ~ .25 .25 .25 0 10 normal @a[scores={Q=2..}]
particle dust{color:[0.0,0.8,1.0],scale:1.0} ~ ~-7 ~ .25 .25 .25 0 10 normal @a[scores={Q=2..}]
particle dust{color:[0.0,0.8,1.0],scale:1.0} ~ ~-8 ~ .25 .25 .25 0 10 normal @a[scores={Q=2..}]

execute if score #core_state map matches 0 run fill ~ ~ ~ ~ ~-8 ~ light_blue_stained_glass replace air
execute if score #core_state map matches 1 run fill ~ ~ ~ ~ ~-8 ~ air replace light_blue_stained_glass

execute if score #core_state map matches 0 positioned ~-.5 ~-8 ~-.5 as @a[tag=playing,dx=0,dy=8,dz=0] run function ut:map/core/laser_player
execute if score #core_state map matches 1 positioned ~-.75 ~-8 ~-.75 as @e[type=husk,tag=decoration_prj,dx=0.5,dy=8,dz=0.5] run function ut:void
