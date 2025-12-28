#By Nebulirion

#execute rotated ~30 ~ positioned ^ ^ ^8 store result score cur life if entity @a[tag=credit_p,distance=..6]
#execute rotated ~-30 ~ positioned ^ ^ ^8 store result score cru life if entity @a[tag=credit_p,distance=..6]

scoreboard players add @s x_pos 21
#execute if score @s x_pos matches 360.. run scoreboard players remove @s x_pos 359
execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s x_pos
#execute store result score test x_pos run data get entity @s Pose.Head[0]

tp @s ^ ^ ^.3 ~ ~5

execute positioned ~ ~1.5 ~ run function ut:lobby/credit/a/ak/axe/loop_pos