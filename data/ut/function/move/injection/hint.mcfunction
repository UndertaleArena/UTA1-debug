#By Nebulirion

scoreboard players operation #user pid = @s pid
scoreboard players operation #user tid = @s tid

execute positioned ~ ~1 ~ positioned ^ ^ ^2.5 summon marker run function ut:move/injection/hint_dust
execute positioned ~ ~1 ~ positioned ^ ^ ^4.5 summon marker run function ut:move/injection/hint_player

tag @e[tag=inject_target_can,limit=1,sort=nearest] add inject_target
tag @e remove inject_target_can

# find target
## has target
execute at @n[type=!player,tag=inject_target,limit=1] run particle dust{color:[0,1,0],scale:1} ~ ~1.8 ~ .3 .3 .3 0 3 force @s
execute at @n[type=player,tag=inject_target,limit=1] run particle dust{color:[0,1,0],scale:1} ~ ~1 ~ .3 .7 .3 0 3 force @s
## have no target, do self use
execute unless entity @e[tag=inject_target] at @s run particle dust{color:[0,1,0],scale:1} ~ ~1 ~ .3 .7 .3 0 3 force @s

execute if entity @s[tag=!inject_rc] run tag @e remove inject_target