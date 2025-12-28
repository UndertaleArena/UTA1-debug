#By Nebulirion

scoreboard players operation #atker pid = @s pid
execute as @e[type=armor_stand,tag=dummy_friend,tag=turret] if score @s pid = #atker pid run tag @s add dummy_charging

execute unless entity @e[tag=dummy_charging,limit=1] run function ut:move/dummy_charge/use_prep_fail
execute if entity @e[tag=dummy_charging,limit=1] run function ut:move/dummy_charge/use_prep_suc

tag @e remove dummy_charging