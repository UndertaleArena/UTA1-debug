#By Nebulirion

execute if entity @s[tag=gb_aim,tag=!gb_target] run function ut:move/gaster_blaster/aim_loop
execute if entity @s[tag=gb_skull] run function ut:move/gaster_blaster/skull_loop
execute if entity @s[tag=spared_soul] run function ut:move/spare/soul/loop
execute if entity @s[tag=soul_item] run function ut:move/soul_item/loop
execute if entity @s[tag=dust_pile] run function ut:move/dust_pile/loop
execute if entity @s[tag=syringe] run function ut:move/injection/syringe_loop
execute if entity @s[tag=respawn_soul] run function ut:move/respawn/loop
execute if entity @s[tag=fallen_soul] run function ut:move/fallen_soul/loop
execute if entity @s[tag=annoying_dog] run function ut:move/dog/loop
execute if entity @s[tag=hand_assist] run function ut:move/hand/assist/loop
execute if entity @s[tag=hand] run function ut:move/hand/loop
execute if entity @s[tag=dog_bridge] run function ut:move/dog/ai/t1/v1/bridge_loop
execute if entity @s[tag=jumppad_as] run function ut:move/jumppad/loop
execute if entity @s[tag=name] run function ut:move/name/loop
execute if entity @s[tag=siege_rock] run function ut:move/siege_rock/loop
execute if entity @s[tag=boss_soul] run function ut:move/soul/loop
execute if entity @s[tag=delete_target] run function ut:move/delete/loop
execute if entity @s[tag=kb_slime] run function ut:move/_knockback/loop
execute if entity @s[tag=pellet_tut] run function ut:move/pellets_tutorial/loop