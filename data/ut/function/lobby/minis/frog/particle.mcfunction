#By Nebulirion

scoreboard players reset frog_timer tutorial
execute at @e[tag=frog_info] as @a unless score @s frog matches 1.. run particle block_marker{block_state:"minecraft:barrier"} ~ ~2 ~ 0 0 0 0 0 force @s