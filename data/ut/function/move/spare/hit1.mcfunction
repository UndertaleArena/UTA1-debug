#By Nebulirion

execute if entity @a[tag=spare_p,tag=passive_frisk] run scoreboard players set #friskSpare will 1
execute if score #friskSpare will matches 1 run scoreboard players operation #spareLim will += @s will25

execute if score @s will <= #spareLim will if score #atker will > @s will if entity @s[tag=!undying] run function ut:move/spare/spare

execute if score #friskSpare will matches 1 run scoreboard players operation #spareLim will -= @s will25
scoreboard players set #friskSpare will 0