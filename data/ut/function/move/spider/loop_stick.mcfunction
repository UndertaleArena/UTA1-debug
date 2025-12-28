#By Nebulirion

scoreboard players operation #target sid = @s sid
execute as @a[tag=playing,tag=!untargetable] if score @s pid = #target sid run tag @s add sticking_p

execute if score @s y_pos matches -5000..5000 positioned as @a[tag=sticking_p,limit=1] rotated ~ 0 run tp @s ^ ^ ^-.15
execute unless entity @a[tag=sticking_p] run function ut:void

###
execute store result score #this y_pos run data get entity @a[tag=sticking_p,limit=1] Pos[1] 1000
scoreboard players operation #this y_pos += @s y_pos
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #this y_pos
###

###
scoreboard players add @s life 1

tag @s add atker
scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players operation #damage damage = @s damage

execute if score @s life matches 25 as @a[tag=sticking_p,limit=1] run function ut:move/spider/bite
execute if score @s life matches 50 as @a[tag=sticking_p,limit=1] run function ut:move/spider/bite
execute if score @s life matches 60 run function ut:void

tag @s remove atker
###

tag @a[tag=sticking_p] remove sticking_p