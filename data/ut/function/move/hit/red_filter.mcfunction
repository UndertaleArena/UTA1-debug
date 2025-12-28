#By Nebulirion

execute store result score rx1 store run data get entity @s Rotation[0]
execute as @e[tag=atker,tag=!no_direction,limit=1] store result score rx1 store run data get entity @s Rotation[0]
execute as @e[tag=atker,tag=user_direction,limit=1] as @a[tag=atker_p,limit=1] store result score rx1 store run data get entity @s Rotation[0]
execute as @a[tag=atker_melee,limit=1] store result score rx1 store run data get entity @s Rotation[0]
execute store result score rx2 store run data get entity @s Rotation[0]

scoreboard players operation rxd store = rx2 store
scoreboard players operation rxd store -= rx1 store
execute if score rxd store matches ..-1 run scoreboard players add rxd store 360
execute if score rxd store matches 360.. run scoreboard players remove rxd store 360

scoreboard players set direction store 0
execute if score rxd store matches 225..314 run scoreboard players set direction store 1
execute if score rxd store matches 45..134 run scoreboard players set direction store 2

#tellraw @a [{"selector": "@s"},": ",{"score": {"name": "#damage","objective": "damage"}},"DMG, ",{"score": {"name": "direction","objective": "store"}},"DIR. "]

scoreboard players operation filter store = #damage damage
scoreboard players operation filter store /= 20 const
execute if score direction store matches 1.. run scoreboard players add @s filter_r 5
execute if score filter store matches 21.. run scoreboard players set filter store 20
execute unless score direction store matches 2 run scoreboard players operation @s filter_l += filter store
execute unless score direction store matches 1 run scoreboard players operation @s filter_r += filter store
execute if score @s filter_l matches 21.. run scoreboard players set @s filter_l 20
execute if score @s filter_r matches 21.. run scoreboard players set @s filter_r 20