#By Nebulirion
#########

###STARTING
team leave @a
tag @a add lb_player
tag @s add seelbdisplay

###STORE ALL SCORES
data modify storage utstats:temp All.Full set from storage utstats:main Data
function ut:stats/leader/data_next

###SORTING THE SCORES
scoreboard players set -Index leaderboard_rank 0
scoreboard players set @e[tag=lb_player] leaderboard_rank 0
function ut:stats/leader/sorting/main

###DISPLAYING SCORES
scoreboard players operation -Limit leaderboard_rank = DISPLAY leaderboard_rank

#tellraw @a[tag=seelbdisplay] [{"translate":"cht.linemid","color":"gold"}]

tellraw @a[tag=seelbdisplay] ""

execute unless score -FilterCM leaderboard matches 1..2 run tellraw @a[tag=seelbdisplay] [{"text":"|| ","color":"gold"},{"text":"","color":"gold","extra":[{"nbt":"PickleMeterA","storage": "ut:soul","interpret": true},{"translate":"frog.lbd0"}]}]
execute if score -FilterCM leaderboard matches 1..2 run tellraw @a[tag=seelbdisplay] [{"text":"|| ","color":"gold"},{"text":"","color":"gold","extra":[{"nbt":"PickleMeterA","storage": "ut:soul","interpret": true},{"translate":"frog.lbd0"},{"translate":"frog.lbd1","with":[{"nbt":"PickleMeterB","storage": "ut:soul","interpret": true}]}]}]

scoreboard players set -Index leaderboard_rank 0
function ut:stats/leader/display

scoreboard players add -Limit leaderboard_rank 1
execute as @a[tag=seelbdisplay,tag=!lb_onrank] run function ut:stats/leader/display_line

#tellraw @a[tag=seelbdisplay] [{"translate":"cht.linemid","color":"gold"}]

#tellraw @a[tag=seelbdisplay] [{"text":" "}]

###ENDING
tag @a remove lb_onrank
#
tag @a remove lb_player
kill @e[tag=lb_player,type=marker]
#
tag @a remove seelbdisplay
execute as @a run function ut:system/team/join