#By Nebulirion

title @s subtitle ""

#scoreboard players operation #hitcross damage += #damage damage

execute if score #damage damage matches 0 run function ut:player/actionbar/hitcross/lv3
execute if score #damage damage matches 1..99 run function ut:player/actionbar/hitcross/lv1
execute if score #damage damage matches 100..199 run function ut:player/actionbar/hitcross/lv2
execute if score #damage damage matches 200..399 run function ut:player/actionbar/hitcross/lv3
execute if score #damage damage matches 400..599 run function ut:player/actionbar/hitcross/lv4
execute if score #damage damage matches 600.. run function ut:player/actionbar/hitcross/lv5

#scoreboard players set #hitcross damage 0
