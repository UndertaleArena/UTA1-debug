#By Nebulirion

execute unless data entity @s SelectedItem.components."minecraft:custom_data".lazer run function ut:move/lazer/stop

playsound minecraft:ui.toast.in player @a ~ ~ ~ 0.8 1.6
playsound minecraft:entity.creeper.hurt player @a ~ ~ ~ 0.2 1.2

summon minecraft:marker ~ ~ ~ {Tags:[atker,lazer,killonhit,user_direction],CustomName:'{"translate":"chr.mettaton.mpn"}'}

scoreboard players remove @s plt1 1
scoreboard players add @s unloadtime 1
scoreboard players add @s mpcooldown 1
execute if score @s[tag=!attack_buffed] plt1 matches ..0 run function ut:move/lazer/stop

scoreboard players set #lazerhit plt1 0
scoreboard players set @s plt1b 28
execute if entity @s[tag=lazer_user] anchored eyes facing ^ ^ ^16 positioned ^-0.3 ^-0.2 ^.5 run function ut:move/lazer/loop_l

kill @e[tag=atker]