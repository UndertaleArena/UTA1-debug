#By Nebulirion

# particle
scoreboard players operation #player pid = @s pid
execute at @s if entity @s[tag=!passive_muffet_cd,tag=!respawning,tag=!no_particles] as @a[tag=playing] unless score @s pid = #player pid run particle infested ~ ~.2 ~ 0.2 0.2 0.2 0 10 force @s
# check if filling 
execute if score @s passive_timer matches 0 if entity @s[tag=passive_muffet_cd] run function ut:move/passive/muffet/give
scoreboard players remove @s[scores={passive_timer=1..}] passive_timer 1
# shield repair
execute if score @s plt4 matches 1.. run scoreboard players remove @s plt4 1
execute if score @s plt4 matches 0 if entity @s[tag=!passive_muffet_cd] run function ut:move/passive/muffet/apply_shield