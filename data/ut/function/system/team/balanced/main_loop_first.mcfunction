#By Nebulirion

scoreboard players set -FristPick skill 0
scoreboard players set -Min skill_dif 2147483647

execute if score -Imbalanced skill matches 0 run tag @r[tag=player,tag=!picked] add candidate
execute if score -Imbalanced skill matches 1 as @a[tag=player,tag=!picked] run function ut:system/team/balanced/find_candidate

execute as @a[tag=candidate,limit=1] run function ut:system/team/balanced/join_t1