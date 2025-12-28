###Generated from Nebulagen made By Nebulirion
#09/22/2021, 02:12:17

###RANDOM ROT
execute store result score -x store run data get entity @s UUID[1] 0.00002
execute store result score -y store run data get entity @s UUID[0] 0.00002

execute store result score -X store run data get entity @s Rotation[0] 10000
execute store result score -Y store run data get entity @a[tag=angel_p,limit=1] Rotation[1] 10000

scoreboard players operation -X store += -x store
scoreboard players operation -Y store += -y store

data modify storage ut:soul Temp set value [0.0f,0.0f]
execute store result storage ut:soul Temp[0] float 0.0001 run scoreboard players get -X store
execute store result storage ut:soul Temp[1] float 0.0001 run scoreboard players get -Y store
data modify entity @s Rotation set from storage ut:soul Temp
###

###CALCROT
scoreboard players operation #raylim store = @s range
scoreboard players operation #raylim store *= 4 const
scoreboard players operation #raylim store /= 5 const

#scoreboard players set #ray store 60
#execute at @a[tag=angel_p,limit=1] anchored eyes positioned ^ ^ ^6 run function ut:move/angel_shot/_aim/ray

scoreboard players set #ray store 1800

scoreboard players operation #ray store *= 4 const
scoreboard players operation #ray store /= @s speed

scoreboard players operation @s rot = #playerx rot
scoreboard players operation @s rot -= -X store
execute unless score @s rot matches -1799999..1800000 run function ut:move/angel_shot/_aim/fixrot

scoreboard players set @s plt2b 1000
scoreboard players operation @s rot *= 10 const
scoreboard players operation @s rot /= #ray store

