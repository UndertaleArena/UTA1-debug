#By Nebulirion

scoreboard players set @s last_damage 0
function ut:player/infight/use

scoreboard players operation @s[tag=!amalgamate_after_save] hp = @s hpmax
#scoreboard players operation @s hp /= 2 const
scoreboard players operation @s[tag=!amalgamate_after_save] will = @s willmax
#scoreboard players operation @s will /= 2 const
function ut:player/bossbar/refresh

#function ut:player/dt/fill
#tag @s add dt_lock

#scoreboard players operation @s melt_speed = @s dtmax
#scoreboard players set -temp melt_speed 320
#scoreboard players operation @s melt_speed /= -temp melt_speed
#effect give @s hunger infinite 0 false

scoreboard players add @s[tag=!amalgamate] move_loop 1
tag @s add amalgamate
tag @s add hp_lock

tag @s remove revive_p