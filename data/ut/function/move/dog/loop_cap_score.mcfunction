#By Nebulirion

scoreboard players add @s gamescoresmall 1
#execute if score @s gamescoresmall = -GoalSmall gamescore run scoreboard players set @s gamescoresmall 0
execute if score @s gamescoresmall >= -GoalSmall gamescore run function ut:game/dog/score

function ut:game/dog/bossbar_update

