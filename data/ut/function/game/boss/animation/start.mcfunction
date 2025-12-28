#By Nebulirion

scoreboard players set #animation game 1
scoreboard players set -absorb soul_count 0
execute as @a[tag=playing,tag=!boss] at @s run function ut:system/soul/uncan/main
execute as @a[tag=playing,tag=!boss] at @s run function ut:system/soul/drop_self
execute as @a[tag=playing,tag=!boss] at @s run function ut:system/soul/drop_all

effect give @s glowing

tag @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{soul:1b}}}}] add soul_animation
execute as @e[type=item,tag=soul_animation] run data merge entity @s {PickupDelay:32767s,NoGravity:1b}
