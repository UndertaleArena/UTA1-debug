#By Nebulirion



execute unless score @s pid = #atker pid as @a[tag=playing] if score @s pid = #atker pid at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 2
execute unless score @s pid = #atker pid as @a[tag=playing] if score @s pid = #atker pid at @s run scoreboard players set @s last_damage 0

scoreboard players operation #before hp = @s hp

execute if entity @s[tag=!hp_lock] run scoreboard players add @s hp 400
execute if entity @s[tag=!hp_lock] run function ut:player/hp/gain

scoreboard players operation #after hp = @s hp

scoreboard players operation #lose will = #after hp 
scoreboard players operation #lose will -= #before hp 

execute if score #lose will matches 1.. if entity @s[tag=!hp_lock] run particle happy_villager ~ ~.9 ~ 0.3 0.45 0.3 0 9 normal @a[scores={Q=1..}]

scoreboard players operation #lose will *= 10 const
scoreboard players operation #lose will /= 100 const
scoreboard players operation #lose will /= 4 const

#execute if score @s pid = #atker pid run function ut:move/pie/hit_self
scoreboard players operation @s will -= #lose will
function ut:player/will/lose