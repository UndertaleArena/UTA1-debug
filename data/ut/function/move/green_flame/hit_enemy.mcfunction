#By Nebulirion

execute at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.2 0.2 0.2 0 4 normal @a[scores={Q=1..}]
#
scoreboard players remove @s will 20
function ut:player/will/lose
#
scoreboard players set #gain dt 400
scoreboard players set #gain will 400
scoreboard players set #damage damage 0
#
function ut:move/hit/main
#
execute as @a if score @s pid = #atker pid run tag @s add spare_p
scoreboard players operation #atker will = @a[limit=1,tag=spare_p] will

execute if entity @a[tag=spare_p,tag=passive_frisk] run scoreboard players set #friskSpare will 1
execute if score #friskSpare will matches 1 run scoreboard players operation #spareLim will += @s will25

execute if score @s will <= #spareLim will if score #atker will > @s will if entity @s[tag=!undying] run function ut:move/spare/spare

execute if score #friskSpare will matches 1 run scoreboard players operation #spareLim will -= @s will25
scoreboard players set #friskSpare will 0

tag @a[tag=spare_p] remove spare_p 
#
execute if score @e[tag=atker,limit=1] st_ckillc matches 2.. as @a[tag=playing] if score @s pid = #atker pid if score @s chr matches 9 if score -Enabled stat matches 1 run function ut:stats/advancement_secret