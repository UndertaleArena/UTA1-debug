#By Nebulirion

#Gamerules
function ut:game/dog/gamerule

###TEAM
#####Map
execute as @e[tag=arena_mid,sort=nearest,limit=1] at @s run function ut:game/team/map

scoreboard objectives setdisplay list st_celimc
scoreboard players operation -Goal gamescore = F_Goal gamerulemode
scoreboard players set -GoalSmall gamescore 100

#####Players
execute as @a[tag=!play_game,tag=!sy] at @s run function ut:game/start_spectator
execute as @a[tag=play_game] at @s run function ut:game/start_player
function ut:system/give_gpid
function ut:player/bossbar/give_bid_new

function ut:game/dog/bossbar_style

tag @a remove dog_owner
schedule function ut:game/dog/dog_at_mid 20s

scoreboard players set -IsDogExist dog_timer 0
scoreboard players set -IsDogCap dog_timer 0
scoreboard players set -IsDogCapBomb dog_timer 0
scoreboard players set -IsDogCapTeam dog_timer 0
data modify storage soul DogBack set value '{"text": "\\uF819\\uF818\\uF814"}'

#####Countdown
scoreboard players set #preGame game 1
function ut:game/countdown/t5
schedule function ut:game/countdown/t4 1s
schedule function ut:game/countdown/t3 2s
schedule function ut:game/countdown/t2 3s
schedule function ut:game/countdown/t1 4s
schedule function ut:game/dog/title 5s