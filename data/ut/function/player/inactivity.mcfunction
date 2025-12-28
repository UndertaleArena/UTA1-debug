#By Nebulirion

execute unless predicate ut:effects/glowing run tellraw @s ["",{"translate":"pfx.warning"},{"translate":"cht.afk"}]
execute unless predicate ut:effects/glowing at @s run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 1

effect give @s glowing 5 1 true