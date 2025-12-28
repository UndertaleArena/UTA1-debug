#By Nebulirion

execute store result score rx1 store run data get entity @s Rotation[0]
execute as @e[tag=atker,tag=!no_direction,limit=1] store result score rx1 store run data get entity @s Rotation[0]
execute as @e[tag=atker,tag=user_direction,limit=1] as @a[tag=atker_p,limit=1] store result score rx1 store run data get entity @s Rotation[0]
execute as @a[tag=atker_melee,limit=1] store result score rx1 store run data get entity @s Rotation[0]
execute store result score rx2 store run data get entity @s Rotation[0]

scoreboard players operation rxd store = rx2 store
scoreboard players operation rxd store -= rx1 store
execute if score rxd store matches ..-1 run scoreboard players add rxd store 360
scoreboard players remove rxd store 90
execute if score rxd store matches ..-1 run scoreboard players add rxd store 360

scoreboard players remove rxd store 180
execute if score rxd store matches ..-1 run scoreboard players operation rxd store *= -1 const

scoreboard players operation rxd store /= 18 const

scoreboard players operation @s filter_r = rxd store
scoreboard players set @s filter_l 10
scoreboard players operation @s filter_l -= @s filter_r
execute if score @s filter_l matches ..3 run scoreboard players set @s filter_l 0
execute if score @s filter_r matches ..3 run scoreboard players set @s filter_r 0
execute if score @s filter_l matches 4..9 run scoreboard players set @s filter_l 10
execute if score @s filter_r matches 4..9 run scoreboard players set @s filter_r 10