#By Nebulirion

#
function ut:choose/soul
execute unless score @s chr matches 8 run function ut:choose/spare
execute if score -InGame game matches 1 if score -TeamMode game matches 1 if score teamUniform gamerule matches 1 run function ut:choose/uniform
#
execute if score @s chr matches 12 if score -InGame game matches 0 run loot replace entity @s inventory.8 loot ut:dog
execute if score @s[advancements={ut:chr/undyne/lv20=true}] chr matches 3 if score -InGame game matches 0 run function ut:lobby/misc/undyne_skin/give
tag @s[tag=double_dog] remove double_dog
#
execute unless score -InGame game matches 0 run clear @s carrot_on_a_stick[custom_data~{selector:1b}]
execute unless score -InGame game matches 0 if score homeEvent gamerule matches 1.. run function ut:choose/compass
#
execute store result score @s mpcost run data get entity @s Inventory[{Slot:0b}].components."minecraft:custom_data".cost
execute store result score @s cdmax run data get entity @s Inventory[{Slot:1b}].components."minecraft:custom_data".cd
#
execute if score -InGame game matches 1 if score -Enabled stat matches 1 if score @s last_chr_ingame matches 1.. if score @s st_gametime matches 1.. run function ut:stats/game/entry
scoreboard players operation @s last_chr_ingame = @s chr
#
scoreboard players set @s advancement 0
execute unless score -tobying store matches 1 run function ut:choose/maxrate
#
scoreboard players operation @s willmax = hpmaxRate gamerule
#
function ut:player/very_strong_setup
function ut:player/bossbar/refresh

#Get stats for boots
function ut:choose/stats