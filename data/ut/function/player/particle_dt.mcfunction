#By Nebulirion

#
execute if entity @s[tag=dt_ready,tag=!no_particles,tag=!passive_papyrus] run particle dust{color:[1,0,0],scale:0.7} ~ ~1 ~ 0.25 0.45 0.25 1 1 force @a[distance=0.1..]
execute if entity @s[tag=dt_ready,tag=!no_particles,tag=passive_papyrus] if score @s dt >= @s dthalf if score @s dt < @s dtmax run particle dust{color:[1,0,0],scale:0.7} ~ ~1 ~ 0.25 0.45 0.25 1 1 force @a[distance=0.1..]
execute if entity @s[tag=dt_ready,tag=!no_particles,tag=passive_papyrus] if score @s dt = @s dtmax run particle dust{color:[1,0.5,0],scale:0.7} ~ ~1 ~ 0.25 0.45 0.25 1 2 force @a[distance=0.1..]