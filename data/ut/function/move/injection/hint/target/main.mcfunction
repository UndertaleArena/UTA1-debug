# by Nebulirion, edited by SY91419

scoreboard players operation #user pid = @s pid
scoreboard players operation #user tid = @s tid

execute positioned ~ ~1 ~ positioned ^ ^ ^2.5 summon marker run function ut:move/injection/hint/target/dust
execute positioned ~ ~1 ~ positioned ^ ^ ^4.5 summon marker run function ut:move/injection/hint/target/player

tag @e[tag=inject_target_can,limit=1,sort=nearest] add inject_target
tag @e remove inject_target_can