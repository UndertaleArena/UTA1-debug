#By Nebulirion
#
execute if entity @s[tag=!launched] run playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 2 1.4
tag @s add launched
#
execute if score @s life matches 2 run item replace entity @s armor.head with feather
execute if score @s life matches 2 run item replace entity @s[tag=wing_mirror] armor.head with feather[custom_model_data=1]

#
execute if score @s life matches ..9 run scoreboard players remove @s rot 87000
scoreboard players operation #temp store = @s life
scoreboard players operation #temp store %= 24 const
#execute if score @s life matches 12.. if score #temp store matches ..11 run scoreboard players remove @s rot 20000
#execute if score @s life matches 12.. if score #temp store matches 12.. run scoreboard players add @s rot 20000

###ROT
scoreboard players operation -X store = #playerx rot
scoreboard players operation -Y store = #playery rot

scoreboard players operation -X store -= @s[tag=!wing_mirror] rot
scoreboard players operation -X store += @s[tag=wing_mirror] rot

scoreboard players operation -Y store /= 2 const

data modify storage ut:soul Temp set value [0.0f,0.0f]
execute store result storage ut:soul Temp[0] float 0.0001 run scoreboard players get -X store
execute store result storage ut:soul Temp[1] float 0.0001 run scoreboard players get -Y store
data modify entity @s Rotation set from storage ut:soul Temp
###POS
execute rotated ~ 0 run tp @s ^ ^.6 ^-.8
###

execute if score @s life matches 20..49 run function ut:move/angel_form/shoot

function ut:move/lifetime