#By Nebulirion

execute as @e[tag=vine_summon] if score @s life matches 90.. if score @s aid = #atker aid at @s run tp @s ~ ~-.2 ~

scoreboard players add @s life2 1
execute if score @s life2 matches 1.. run function ut:move/vine/loop_landed2

#execute if score @s life matches 80.. run function ut:move/vine/fin