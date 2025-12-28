#By Nebulirion

scoreboard players set #fullUndoFlag store 0
execute if entity @s[tag=attack_buffed,tag=!injected,tag=!effect_soul_bravery] run scoreboard players set #fullUndoFlag store 1
execute if entity @s[tag=!injected,tag=!effect_soul_bravery] run tag @s remove attack_buffed
execute if score #fullUndoFlag store matches 1 run function ut:move/_buffed/remove_status_new