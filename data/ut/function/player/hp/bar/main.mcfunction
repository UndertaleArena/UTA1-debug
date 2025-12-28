#By Nebulirion

###

scoreboard players set #divrate hp 50
execute if score @s hpmax matches 2500.. run function ut:player/hp/bar/limit
scoreboard players operation #red hp = @s hpmax
scoreboard players operation #red hp /= #divrate hp
scoreboard players operation #yellow hp = @s hp
scoreboard players operation #yellow hp /= #divrate hp

scoreboard players operation #red hp -= #yellow hp

data modify storage hp Bar.temp set value []
execute if score #yellow hp matches 1.. run function ut:player/hp/bar/loop_y
execute if score #red hp matches 1.. run function ut:player/hp/bar/loop_r

data modify block 255 2 255 front_text.messages[2] set value '{"storage": "hp","nbt": "Bar.temp[]", "interpret": true, "separator":"", "bold":true}'

scoreboard players operation #block pid = @s pid
execute as @e[tag=name] if score @s sid = #block pid run function ut:player/hp/bar/update