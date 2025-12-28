#By Nebulirion

scoreboard players operation #gain dt /= 4 const

scoreboard players operation #helper pid = @s hid
execute as @a[tag=playing,tag=!respawning] if score @s pid = #helper pid run function ut:player/dt/gain
