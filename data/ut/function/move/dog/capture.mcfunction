#By Nebulirion

execute if entity @s[tag=!fake_dog] run function ut:move/dog/capture_real
execute if entity @s[tag=fake_dog] run function ut:move/dog/capture_fake