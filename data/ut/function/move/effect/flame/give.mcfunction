#By Nebulirion

scoreboard players set @s flame_timer 100
scoreboard players add @s[tag=!effect_flame] move_loop 1
tag @s add effect_flame

#effect give @s minecraft:hunger 100 0 false

#title @s title ["",{"translate":"sts.shocked"},{"translate":"sts.excl"}]
#title @s times 5 20 5
#scoreboard players set @s title_timer 25