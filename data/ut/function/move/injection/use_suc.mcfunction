#By Nebulirion

execute if score -Enabled stat matches 1 run scoreboard players add @s st_cdtuse 1
scoreboard players set #reset dt 1
scoreboard players set @s unloadtime 20
function ut:player/infight/use

effect give @s slowness 2 2 true

execute as @e[type=armor_stand,tag=inject_target,limit=1] at @s run function ut:move/injection/use_suc_revive_pre
execute if entity @e[type=player,tag=inject_target,limit=1] positioned ~ ~1 ~ run function ut:move/injection/use_suc_buff_pre