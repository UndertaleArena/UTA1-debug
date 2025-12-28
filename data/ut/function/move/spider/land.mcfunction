#By Nebulirion

say still happens?

data merge entity @s {Pose:{Head:[0f,0f,0f]}}

tag @s add landed
tag @s remove inair
tag @s remove blockable
tag @s remove reflectable

execute positioned ^ ^ ^-1 align y run tp @s ~ ~ ~ ~ 0

scoreboard players set @s life 0

#scoreboard players operation #spider tid = @s tid
#scoreboard players set #target pid 0
#execute as @a[tag=playing,tag=!untargetable,sort=furthest] unless score @s tid = #spider tid run scoreboard players operation #target pid = @s pid
#scoreboard players operation @s sid = #target pid