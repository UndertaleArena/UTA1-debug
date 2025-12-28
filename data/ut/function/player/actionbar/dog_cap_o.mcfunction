#By Nebulirion

scoreboard players set #DisPerFlag store 1

execute if score #sameteam store matches 1 run data modify storage soul ActionList append value '{"text":"\\uFD01","color":"gray"}'
execute unless score #sameteam store matches 1 run data modify storage soul ActionList append value '{"text":"\\uFD01","color":"dark_gray"}'
