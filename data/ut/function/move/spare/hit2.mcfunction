#By Nebulirion

execute if entity @a[tag=spare_p,tag=passive_frisk] run scoreboard players set #friskSpare will 1
execute if score #friskSpare will matches 1 run scoreboard players operation #spareLim will += @s will25

execute unless score @s will <= #spareLim will run function ut:move/spare/fail/target_not_low
execute if score @s will <= #spareLim will unless score #atker will > @s will run function ut:move/spare/fail/user_too_low
execute if score @s will <= #spareLim will if score #atker will > @s will unless entity @s[tag=!undying] run function ut:move/spare/fail/target_too_strong
execute if score @s will <= #spareLim will if score #atker will > @s will if entity @s[tag=!undying] run function ut:move/spare/spare

execute if score #friskSpare will matches 1 run scoreboard players operation #spareLim will -= @s will25
scoreboard players set #friskSpare will 0