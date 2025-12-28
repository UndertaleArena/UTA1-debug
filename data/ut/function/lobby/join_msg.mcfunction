#By Nebulirion

execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2

tellraw @s ["",{"translate":"pfx.info"},{"translate":"cht.tj0","with":[{"selector":"@e[tag=tr_soul]"}]}]
tellraw @s ["",{"translate":"cht.tj7","color":"gray"},{"text":"§6[§r/tm§6]§r","clickEvent":{"action":"suggest_command","value":"/tm <text>"}},{"translate":"cht.tj8","color":"gray"}]

#tm §ojoined the team!§r