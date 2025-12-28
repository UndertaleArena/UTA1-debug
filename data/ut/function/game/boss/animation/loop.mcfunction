#By Nebulirion

scoreboard players remove #bossani game 1
scoreboard players add #bossanitimer game 1

execute if score #bossanitimer game matches 2.. as @e[type=item,tag=soul_animation,limit=1,sort=furthest] at @s run function ut:game/boss/animation/item_to_as
execute if score #bossanitimer game matches 2.. run scoreboard players set #bossanitimer game 0

execute as @e[type=armor_stand,tag=soul_animation] at @s facing entity @a[tag=boss,limit=1] eyes run function ut:game/boss/animation/loop_as

execute as @a[tag=boss] at @s run particle portal ~ ~ ~ 0 0 0 0.1 10 normal @a[scores={Q=1..}]

scoreboard players add @a[tag=boss] untarget_timer 1

execute unless entity @e[type=armor_stand,tag=soul_animation] run scoreboard players remove #bossani game 10
execute if score #bossani game matches ..0 as @a[tag=boss] run function ut:game/boss/boss_annouce