#By Nebulirion

execute as @a[tag=playing] if score @s pid = #atker pid at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 2
execute as @a[tag=playing] if score @s pid = #atker pid at @s run scoreboard players set @s last_damage 0

function ut:move/effect/kindness/give