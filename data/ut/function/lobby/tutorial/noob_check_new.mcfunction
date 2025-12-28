#be like temmie

execute unless score fun info matches 1..100 run function ut:fun

particle block_marker{block_state:"minecraft:barrier"} ~.1 ~2.5 ~ 0 0 0 0 0 force @s

tellraw @s ["",{"translate":"pfx.tutorial"},{"translate":"tut.reminder"}]
playsound minecraft:entity.villager.celebrate player @s ~ ~ ~ 1 1.8
function ut:choose/soul
scoreboard players set @s tutorial 1