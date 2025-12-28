###Generated from Nebulagen made By Nebulirion
#12/16/2021, 01:51:22

scoreboard players set #check hitcheck 0
execute if score #hits hitcheck matches 1.. run scoreboard players add #check hitcheck 1
execute if score #check hitcheck matches 1 run function ut:move/counter/check
execute if score #check hitcheck matches 2 run function ut:move/bone/hit