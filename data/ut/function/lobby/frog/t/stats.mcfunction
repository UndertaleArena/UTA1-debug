#By Nebulirion

execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.75 2 0.75

scoreboard players operation #statfilter frog = @s trigger
scoreboard players remove #statfilter frog 170

scoreboard players operation -FilterS leaderboard = #statfilter frog

scoreboard players set -FilterCM leaderboard 0
scoreboard players set -FilterC leaderboard 0
scoreboard players set -FilterM leaderboard 0
execute if score @s frogfilter matches 1..16 run scoreboard players set -FilterCM leaderboard 1
execute if score @s frogfilter matches 51..57 run scoreboard players set -FilterCM leaderboard 2

execute if score -FilterCM leaderboard matches 1 run scoreboard players operation -FilterC leaderboard = @s frogfilter
execute if score -FilterCM leaderboard matches 2 run scoreboard players operation -FilterM leaderboard = @s frogfilter
execute if score -FilterCM leaderboard matches 2 run scoreboard players remove -FilterM leaderboard 50

function ut:stats/leader/filter/chr
function ut:stats/leader/filter/mode
function ut:stats/leader/filter/stat

function ut:stats/leader/main