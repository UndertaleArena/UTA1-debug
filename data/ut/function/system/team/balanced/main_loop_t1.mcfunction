#By Nebulirion

scoreboard players set -Min skill_dif 2147483647
scoreboard players operation -Diffrence skill -= -Average skill
scoreboard players operation -Diffrence skill *= -1 const
execute as @a[tag=player,tag=!picked] run function ut:system/team/balanced/find_candidate
execute as @a[tag=candidate,limit=1] run function ut:system/team/balanced/join_t1