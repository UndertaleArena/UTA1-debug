#By Nebulirion

scoreboard players operation @s hp = @s hpmax
execute unless score dtRule gamerule matches 2..3 run scoreboard players set @s dt 0
scoreboard players operation @s mp = @s mpmax
scoreboard players operation @s cd = @s cdmax
scoreboard players set @s cddis 100
scoreboard players operation @s ml = @s mlmax 
scoreboard players set @s mldis 100
function ut:player/melee/reset
scoreboard players operation @s will = @s willmax
scoreboard players operation @s will25 = @s willmax
scoreboard players operation @s will25 /= 4 const

scoreboard players operation @s last_use = #out last_infight
scoreboard players operation @s last_damage = #out last_infight
scoreboard players operation @s last_damaged = #out last_infight
scoreboard players operation @s last_infight = #out last_infight

function ut:player/bossbar/refresh
function ut:player/attribute/speed