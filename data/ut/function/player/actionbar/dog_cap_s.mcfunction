#By Nebulirion
#By Nebulirion

execute if entity @e[tag=annoying_dog,tag=dog_bomb,tag=captured] run scoreboard players set #dbFlag store 1
execute if score #dbFlag store matches 1 run function ut:player/actionbar/dog_cap_s_b
execute if score #dbFlag store matches 0 run function ut:player/actionbar/dog_cap_s_r