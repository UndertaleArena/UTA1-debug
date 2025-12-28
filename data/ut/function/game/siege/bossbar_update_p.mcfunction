data modify storage bossbar Arrow2 set value []

execute if score #round game matches 2 run function ut:game/siege/bossbar_update_p2

data modify storage bossbar Progress set value []
#execute if score #Progress siegegame matches ..99 run data modify storage bossbar Progress append value "§f0"
#execute if score #Progress siegegame matches ..9 run data modify storage bossbar Progress append value "§f0"

#scoreboard players operation #Progress_ siegegame = #Progress siegegame
#scoreboard players operation #Progress_ siegegame /= 10 const

#1% 1
#10% 1.5
#100% 2
data modify storage bossbar Progress append value {"text":"\uF828 "}
execute if score #Progress siegegame matches 0..9 run data modify storage bossbar Progress append value {"text":"1","font":"minecraft:back.state"}
execute if score #Progress siegegame matches 10..99 run data modify storage bossbar Progress append value {"text":"1.","font":"minecraft:back.state"}
execute if score #Progress siegegame matches 100 run data modify storage bossbar Progress append value {"text":"11","font":"minecraft:back.state"}
data modify storage bossbar Progress append value {"score":{"name":"#Progress","objective":"siegegame"}}
data modify storage bossbar Progress append value "%"
execute if score #Progress siegegame matches 0..9 run data modify storage bossbar Progress append value {"text":"1","font":"minecraft:back.state"}
execute if score #Progress siegegame matches 10..99 run data modify storage bossbar Progress append value {"text":"1.","font":"minecraft:back.state"}
execute if score #Progress siegegame matches 100 run data modify storage bossbar Progress append value {"text":"11","font":"minecraft:back.state"}
data modify storage bossbar Progress append value {"text":"\uF828 "}

data modify storage bossbar Arrow2 append value {"storage": "bossbar","nbt": "Progress", "interpret": true}