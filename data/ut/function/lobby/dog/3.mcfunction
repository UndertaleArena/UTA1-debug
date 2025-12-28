#By Nebulirion

execute if score dog info matches 141 if score -total gamesfinished matches 3.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line102"}]
execute if score dog info matches 141 unless score -total gamesfinished matches 3.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line101"}]
execute if score dog info matches 142 if score -total gamesfinished matches 3.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line103"}]
execute if score dog info matches 142 unless score -total gamesfinished matches 3.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line101"}]
execute if score dog info matches 143 if score -total gamesfinished matches 3.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line104"}]
execute if score dog info matches 143 unless score -total gamesfinished matches 3.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line101"}]
execute if score dog info matches 144 if score -total gamesfinished matches 3.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line105"}]
execute if score dog info matches 144 unless score -total gamesfinished matches 3.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line101"}]

execute if score dog info matches 145 if score -total gamesfinished matches 7.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line107"}]
execute if score dog info matches 145 unless score -total gamesfinished matches 7.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line106"}]
execute if score dog info matches 146 if score -total gamesfinished matches 7.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line108"}]
execute if score dog info matches 146 unless score -total gamesfinished matches 7.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line106"}]

execute if score dog info matches 147 if score -total gamesfinished matches 7.. unless score @s credit matches 1.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line109"}]
execute if score dog info matches 147 unless score -total gamesfinished matches 7.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line106"}]
execute if score dog info matches 147 if score @s credit matches 1.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line107"}]

execute if score dog info matches 148 if score @s credit matches 3.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line110"}]
execute if score dog info matches 148 unless score @s credit matches 3.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line109"}]

execute if score dog info matches 149 if score allow_join info matches 1 run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line111"}]
execute if score dog info matches 149 unless score allow_join info matches 1 run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line306"}]

execute if score dog info matches 150 unless score OVERGROWTH root matches 20.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line306"}]
execute if score dog info matches 150 if score OVERGROWTH root matches 20..49 run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line121"}]
execute if score dog info matches 150 if score OVERGROWTH root matches 50..99 run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line122"}]
execute if score dog info matches 150 if score OVERGROWTH root matches 100..149 run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line123"}]
execute if score dog info matches 150 if score OVERGROWTH root matches 150.. run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line124"}]

execute if score dog info matches 151 run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.line151","with":[{"translate": "cht.math", "with":[{"nbt": "RNGgenerator.Letters[24]","storage": "soul"},{"nbt": "RNGgenerator.Numbers[4]","storage": "soul"}]}]}]