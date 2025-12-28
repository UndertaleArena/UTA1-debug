#By Nebulirion

execute if score #sameteam store matches 1 if score @s tbid matches 1 run scoreboard players operation #display gamescoresmall = dogCacheA gamescore
execute if score #sameteam store matches 1 if score @s tbid matches 2 run scoreboard players operation #display gamescoresmall = dogCacheB gamescore
execute unless score #sameteam store matches 1 if score @s tbid matches 2 run scoreboard players operation #display gamescoresmall = dogCacheA gamescore
execute unless score #sameteam store matches 1 if score @s tbid matches 1 run scoreboard players operation #display gamescoresmall = dogCacheB gamescore

execute if score #sameteam store matches 1 run data modify storage soul ActionList append value '[{"text":"\\uF838\\uF831"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"gamescoresmall","name":"#display"}},{"text":"s"}]},{"text":"","color":"white","font":"minecraft:display.dog.lower","extra":[{"score":{"objective":"gamescoresmall","name":"#display"}},{"text":"%"}]},{"text":"\\uF818\\uF811"}]'
execute unless score #sameteam store matches 1 run data modify storage soul ActionList append value '[{"text":"\\uF838\\uF831"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"gamescoresmall","name":"#display"}},{"text":"s"}]},{"text":"","color":"red","font":"minecraft:display.dog.lower","extra":[{"score":{"objective":"gamescoresmall","name":"#display"}},{"text":"%"}]},{"text":"\\uF818\\uF811"}]'