#By Nebulirion
#
execute if entity @s[tag=set_grhd] as @a[tag=ray_user] run function ut:lobby/gamerule/hpdisplay
execute if entity @s[tag=set_grfd] as @a[tag=ray_user] run function ut:lobby/gamerule/falldamage
execute if entity @s[tag=set_grsc] as @a[tag=ray_user] run function ut:lobby/gamerule/swapcharacter
execute if entity @s[tag=set_grtu] as @a[tag=ray_user] run function ut:lobby/gamerule/teamuniform
execute if entity @s[tag=set_grdr] as @a[tag=ray_user] run function ut:lobby/gamerule/dtrule
#GAMEMODEGAMERULE
execute if entity @s[tag=set_gra1] as @a[tag=ray_user] run function ut:lobby/gamerule/a/border
execute if entity @s[tag=set_gra2] as @a[tag=ray_user] run function ut:lobby/gamerule/a/respawn
execute if entity @s[tag=set_gra3] as @a[tag=ray_user] run function ut:lobby/gamerule/a/bonus
execute if entity @s[tag=set_grb1] as @a[tag=ray_user] run function ut:lobby/gamerule/b/absorb
execute if entity @s[tag=set_grb2] as @a[tag=ray_user] run function ut:lobby/gamerule/b/goal
execute if entity @s[tag=set_grb3] as @a[tag=ray_user] run function ut:lobby/gamerule/b/bonus
execute if entity @s[tag=set_grc2] as @a[tag=ray_user] run function ut:lobby/gamerule/c/goal
execute if entity @s[tag=set_grc3] as @a[tag=ray_user] run function ut:lobby/gamerule/c/bonus
execute if entity @s[tag=set_grd1] as @a[tag=ray_user] run function ut:lobby/gamerule/d/border
execute if entity @s[tag=set_grd2] as @a[tag=ray_user] run function ut:lobby/gamerule/d/goal
execute if entity @s[tag=set_grd3] as @a[tag=ray_user] run function ut:lobby/gamerule/d/bonus
execute if entity @s[tag=set_gre1] as @a[tag=ray_user] run function ut:lobby/gamerule/e/spawn
execute if entity @s[tag=set_gre2] as @a[tag=ray_user] run function ut:lobby/gamerule/e/goal
execute if entity @s[tag=set_gre3] as @a[tag=ray_user] run function ut:lobby/gamerule/e/bonus
execute if entity @s[tag=set_grf1] as @a[tag=ray_user] run function ut:lobby/gamerule/f/dog
execute if entity @s[tag=set_grf2] as @a[tag=ray_user] run function ut:lobby/gamerule/f/goal
execute if entity @s[tag=set_grf3] as @a[tag=ray_user] run function ut:lobby/gamerule/f/bonus
execute if entity @s[tag=set_grg3] as @a[tag=ray_user] run function ut:lobby/gamerule/g/bonus