#Original By Nebulirion, edited by SY

#fill wall
scoreboard players set @s ray_distance 0
execute positioned ~ 1 ~ run function ut:move/delete/store_walling

#paste lowest
clone 257 1 -255 263 1 -249 ~1 1 ~1

#structure loading
setblock ~ 1 ~ structure_block[mode=load]{mode:"LOAD",name:"ut:delete_store",posX:1,posY:1,posZ:1,ignoreEntities:1b} destroy
##load redstone block
setblock ~ 2 ~ redstone_block
setblock ~ 2 ~ polished_andesite

#check entity there
execute unless block ~ 1 ~ structure_block run tellraw @a[tag=debug] ["",{"text":"Seems structure bugged, check plz"}]

#id check
execute unless score ram_size store matches 0.. run scoreboard players set ram_size store 0
execute if score #temp store > ram_size store run scoreboard players operation ram_size store = #temp store
execute store result entity @s data.sid int 1 run scoreboard players get #temp store

tellraw @a[tag=debug] ["Max: ",{"score":{"name":"ram_size","objective":"store"}},", cur: ",{"score":{"name":"#temp","objective":"store"}}]

# dog residue check
execute if entity @e[tag=tmp.dog_residu] run function ut:move/delete/residu/start