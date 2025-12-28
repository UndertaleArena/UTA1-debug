#By Nebulirion#By Nebulirion

scoreboard players set #psoul gamescore 0
execute store result score #psoul gamescore run clear @s carrot_on_a_stick[custom_data~{soul:1b,fallen:1b}]
execute if score #enemy tid matches 1 store result score #clearcount gamescore run clear @s carrot_on_a_stick[custom_data~{soul:1b,ownerTeam:1}]
execute if score #enemy tid matches 1 run scoreboard players operation #psoul gamescore += #clearcount gamescore
execute if score #enemy tid matches 2 store result score #clearcount gamescore run clear @s carrot_on_a_stick[custom_data~{soul:1b,ownerTeam:2}]
execute if score #enemy tid matches 2 run scoreboard players operation #psoul gamescore += #clearcount gamescore
execute if score #enemy tid matches 3 store result score #clearcount gamescore run clear @s carrot_on_a_stick[custom_data~{soul:1b,ownerTeam:3}]
execute if score #enemy tid matches 3 run scoreboard players operation #psoul gamescore += #clearcount gamescore
execute if score #enemy tid matches 4 store result score #clearcount gamescore run clear @s carrot_on_a_stick[custom_data~{soul:1b,ownerTeam:4}]
execute if score #enemy tid matches 4 run scoreboard players operation #psoul gamescore += #clearcount gamescore
execute if score #enemy tid matches 5 store result score #clearcount gamescore run clear @s carrot_on_a_stick[custom_data~{soul:1b,ownerTeam:5}]
execute if score #enemy tid matches 5 run scoreboard players operation #psoul gamescore += #clearcount gamescore
execute if score #enemy tid matches 6 store result score #clearcount gamescore run clear @s carrot_on_a_stick[custom_data~{soul:1b,ownerTeam:6}]
execute if score #enemy tid matches 6 run scoreboard players operation #psoul gamescore += #clearcount gamescore
execute if score #enemy tid matches 7 store result score #clearcount gamescore run clear @s carrot_on_a_stick[custom_data~{soul:1b,ownerTeam:7}]
execute if score #enemy tid matches 7 run scoreboard players operation #psoul gamescore += #clearcount gamescore
execute if score #enemy tid matches 8 store result score #clearcount gamescore run clear @s carrot_on_a_stick[custom_data~{soul:1b,ownerTeam:8}]
execute if score #enemy tid matches 8 run scoreboard players operation #psoul gamescore += #clearcount gamescore

execute if score #psoul gamescore matches 1.. as @a if score @s tid = #this tid at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 2 1
execute if score #psoul gamescore matches 1.. as @a unless score @s tid = #this tid at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 2 0.8
execute if score #psoul gamescore matches 1 run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm12","with":[{"selector":"@s","bold":false},{"score":{"name":"#psoul","objective":"gamescore"}}]}]
execute if score #psoul gamescore matches 2.. run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm12p","with":[{"selector":"@s","bold":false},{"score":{"name":"#psoul","objective":"gamescore"}}]}]
execute as @e[tag=this_home,limit=1] run function ut:game/home/soul_score

execute store result score @s soul_count run clear @s carrot_on_a_stick[custom_data~{soul:1b}] 0