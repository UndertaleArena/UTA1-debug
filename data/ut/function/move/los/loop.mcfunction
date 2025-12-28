#By Nebulirion

execute unless block ~ ~ ~ #ut:trans run scoreboard players set #insight store 0
execute positioned ~-.5 ~-.5 ~-.5 if entity @a[tag=los_check,dx=0,dy=0,dz=0] run scoreboard players set #insight store 1

execute if score #insight store matches 2 positioned ^ ^ ^1 run function ut:move/los/loop