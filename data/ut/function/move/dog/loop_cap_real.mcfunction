#By Nebulirion

scoreboard players set -Reached gamescoresmall 0

scoreboard players add @s life 1
execute if score @s life matches 20.. if entity @s[tag=!dog_bomb] if entity @a[tag=this_owner,tag=!untargetable] as @e[tag=team_spawn] if score @s tid = -this tid run function ut:move/dog/loop_cap_score

execute if score -Reached gamescoresmall matches 1 run function ut:move/dog/capture_end
