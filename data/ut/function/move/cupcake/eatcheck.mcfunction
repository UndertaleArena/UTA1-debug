#By Nebulirion

scoreboard players set #check hitcheck 0

execute if score #check hitcheck matches 0 run execute positioned ~ ~1.25 ~ run function ut:move/hitbox/20x20x20
execute if score #check hitcheck matches 1 run function ut:move/counter/check
execute if score #check hitcheck matches 2 run function ut:move/cupcake/eat