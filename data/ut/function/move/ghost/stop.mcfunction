#By Nebulirion

effect clear @s invisibility

effect clear @s jump_boost
effect give @s minecraft:jump_boost infinite 0 true

attribute @s generic.movement_speed modifier remove ghostspeed
attribute @s generic.knockback_resistance modifier remove ghostkbr

effect give @s[tag=hadglow] glowing 5 1 true
tag @s remove noglow
tag @s remove hadglow

scoreboard players reset @s plt2
scoreboard players reset @s plt2b
scoreboard players reset @s cdcooldown
scoreboard players set @s unloadtime 2
scoreboard players remove @s[tag=ghost_user] move_loop 1
tag @s remove untargetable
tag @s remove no_particles
tag @s remove ghost_armor
tag @s remove ghost_user
tag @s[tag=!boss] remove no_mc_dmg

particle minecraft:cloud ~ ~1.2 ~ 0.25 0.5 0.25 0.02 40 force @a[scores={Q=1..}]

scoreboard players operation #this pid = @s pid
execute as @e[tag=ghost_model,type=armor_stand] if score @s sid = #this pid run function ut:void

execute if data entity @s Inventory[{Slot:103b,components:{"minecraft:custom_data":{ArmorItems:[{},{},{}]}}}] run function ut:move/ghost/reset_armor
function ut:move/head/change

