#By Nebulirion

playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 1.6 1.8

#execute run particle dust{color:[1.0,1.0,0.0],scale:1.2} ~ ~1 ~ .4 .6 .4 0.2 20 normal @a[scores={Q=2..}]
execute run particle minecraft:end_rod ~ ~1.2 ~ .1 .1 .1 0.135 8 normal @a[scores={Q=2..}]
#
execute as @a[tag=atker_melee] run tag @s add spare_p
scoreboard players operation #atker will = @a[limit=1,tag=spare_p] will

execute if entity @a[tag=spare_p,tag=passive_frisk] run scoreboard players set #friskSpare will 1
execute if score #friskSpare will matches 1 run scoreboard players operation #spareLim will += @s will25

execute if score @s will <= #spareLim will if score #atker will > @s will if entity @s[tag=!undying] run function ut:move/spare/spare

execute if score #friskSpare will matches 1 run scoreboard players operation #spareLim will -= @s will25
scoreboard players set #friskSpare will 0

tag @a[tag=spare_p] remove spare_p 
#