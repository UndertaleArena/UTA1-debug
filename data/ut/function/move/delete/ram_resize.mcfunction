#Original By Nebulirion, edited by SY

scoreboard players remove -distance ray_distance 1

#loop check
execute unless block ~ 0 ~ bedrock positioned ~ ~ ~9 run function ut:move/delete/ram_resize

#resize success
execute if block ~ 0 ~ bedrock run scoreboard players operation ram_size store = -distance ray_distance
execute if score -distance ray_distance matches ..0 run scoreboard players set ram_size store 0

execute if block ~ 0 ~ bedrock run tellraw @a[tag=debug] ["Memory have been resized to: ",{"score":{"name":"ram_size","objective":"store"}}]

#check clear
execute positioned 256 0 -256 if score ram_size store matches 0 run fill ~ 0 ~ ~8 2 ~8 air