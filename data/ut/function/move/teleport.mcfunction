#By Nebulirion

tag @s add teleporter
execute if entity @s[tag=dog_owner] if entity @e[tag=captured,tag=annoying_dog,tag=!dog_bomb] run function ut:move/dog/free_p
tag @s remove teleporter