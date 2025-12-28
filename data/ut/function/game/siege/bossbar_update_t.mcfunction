data modify storage bossbar Arrow2 set value []

execute if score #round game matches 1 run function ut:game/siege/bossbar_update_t1
execute if score #round game matches 2 run function ut:game/siege/bossbar_update_t2

data modify storage bossbar Progress set value []
# Limited Time Warn
execute if score #round game matches 2 if score #Tick siegegame matches ..600 run data modify storage bossbar Progress append value {"text":"","color":"red"}
# Base Time Display
data modify storage bossbar Progress append value {"score":{"name":"#Minute","objective":"siegegame"}}
data modify storage bossbar Progress append value ":"
execute if score #Second siegegame matches ..9 run data modify storage bossbar Progress append value "0"
data modify storage bossbar Progress append value {"score":{"name":"#Second","objective":"siegegame"}}
# Progression Arrow
data modify storage bossbar Arrow2 append value {"storage": "bossbar","nbt": "Progress", "interpret": true}