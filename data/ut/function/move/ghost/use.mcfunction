#By Nebulirion

scoreboard players set @s unloadtime 60
scoreboard players set @s cdcooldown 60
#function ut:player/infight/use

attribute @s generic.knockback_resistance modifier add ghostkbr 1.0 add_value
attribute @s generic.movement_speed modifier add ghostspeed 0.5 add_multiplied_total

particle minecraft:cloud ~ ~1.2 ~ 0.25 0.5 0.25 0.02 40 force @a[scores={Q=1..}]

effect give @s invisibility infinite 1 true

function ut:move/effect/nojump/clear

effect clear @s slowness

effect clear @s jump_boost
effect give @s minecraft:jump_boost infinite 2 true

scoreboard players set @s plt2 40

tag @s add noglow
tag @s[predicate=ut:effects/glowing] add hadglow
effect clear @s glowing

tag @s add no_mc_dmg
tag @s add untargetable
tag @s add no_particles
scoreboard players add @s[tag=!ghost_user] move_loop 1
tag @s add ghost_user

scoreboard players operation #user pid = @s pid
execute as @e[tag=stick] if score @s sid = #user pid run function ut:void

function ut:move/rot/12
data merge entity @e[tag=summon,limit=1] {Tags:[ghost_model,summon,hit],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:nautilus_shell",count:1b}],Pose:{Head:[0f,0f,0f]},CustomName:'"Napstablook"'}

scoreboard players operation @e[tag=summon,limit=1] sid = @s pid
scoreboard players operation @e[tag=summon,limit=1] tid = @s tid
scoreboard players add aid aid 1
scoreboard players operation @e[tag=summon,limit=1] aid = aid aid
tag @e[tag=summon,limit=1] remove summon