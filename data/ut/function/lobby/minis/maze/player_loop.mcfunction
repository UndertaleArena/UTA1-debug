#By Nebulirion

scoreboard players operation #sec store = @s maze_timer
scoreboard players operation #sec store /= 20 const

scoreboard players add @s[tag=!maze_win] maze_timer 1

function ut:move/effect/nojump/loop

summon marker ~ 153 ~ {Tags:[maze_police]}

scoreboard players set -gobackcan maze_timer 1

###MAIN
function ut:lobby/minis/maze/player_loop_pcheck

###END
kill @e[type=marker,tag=maze_police]

####SLIDE
execute if entity @s[tag=force_slide] at @s run function ut:lobby/minis/maze/forceslide