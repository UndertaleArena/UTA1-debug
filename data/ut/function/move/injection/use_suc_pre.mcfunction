#By Nebulirion

scoreboard players set #fail store 0

execute positioned ^ ^1 ^2.5 if entity @e[type=!player,tag=inject_target,distance=2.5..,limit=1] run function ut:move/injection/use_fail
execute positioned ^ ^1 ^4.5 if entity @a[tag=inject_target,distance=4.5..,limit=1] run function ut:move/injection/use_fail

execute if score #fail store matches 0 run function ut:move/injection/use_suc