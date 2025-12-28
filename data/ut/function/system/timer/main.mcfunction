#By Nebulirion

#
scoreboard players add #gameTick game 1
execute if score #preGame game matches 1 as @a[tag=playing] run function ut:game/spawnlock
execute if score -GameMode game matches 2 if score #hasBoss game matches 1 if score #animation game matches 1 run function ut:game/boss/animation/loop
#
scoreboard players add #timerSec timer 1
execute if score #timerSec timer matches 20.. run function ut:system/timer/second
#
execute if score hasBorder gamerule matches 1 as @e[type=marker,tag=arena_sp,limit=1,scores={maplock=1}] at @s run function ut:game/border/loop
#
execute if score -GameMode game matches 7 run function ut:game/siege/loop
execute if score -GameMode game matches 6 run function ut:game/dog/loop
execute if score -GameMode game matches 5 run function ut:game/soul/loop
execute if score -GameMode game matches 4 run function ut:game/team/loop
#
execute if score -use map matches 19 run function ut:map/s_ruins/loop
execute if score -use map matches 12 run function ut:map/core/loop
#
execute if score homeEvent gamerule matches 1.. as @a if score @s thrown_comp matches 1.. run function ut:player/nodrop2/main