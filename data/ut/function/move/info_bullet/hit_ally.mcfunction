#By Nebulirion

scoreboard players remove #hits hitcheck 1
###ATKER_P
execute as @a[tag=playing] if score @s pid = #atker pid at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 2
execute as @a[tag=playing] if score @s pid = #atker pid at @s run scoreboard players set @s last_damage 0
#execute as @a[tag=playing] if score @s pid = #atker pid run function ut:player/infight/damage
###BUFF
scoreboard players operation @s hid = #atker pid
function ut:move/effect/infolink/give
###STATS
scoreboard players add @s ml 20
function ut:player/melee/change
scoreboard players add @s mp 40
function ut:player/mp/change
###EFFECTS
playsound minecraft:entity.zombie.infect player @s ~ ~ ~ 0.5 1.4
execute positioned as @s positioned ~ ~1 ~ run particle instant_effect ^ ^ ^-1 0.05 0 0.05 0 20 force @a[scores={Q=2..}]
###KILLONHIT
execute as @e[tag=atker,limit=1] run function ut:void