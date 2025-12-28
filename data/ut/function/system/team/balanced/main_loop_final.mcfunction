#By Nebulirion

execute if score -Team1 skill <= -Team2 skill run scoreboard players set -Diffrence skill 90000
execute if score -Team1 skill > -Team2 skill run scoreboard players set -Diffrence skill 0
scoreboard players set -Min skill_dif 2147483647
execute as @a[tag=player,tag=!picked] run function ut:system/team/balanced/find_candidate
execute as @a[tag=candidate,limit=1] run function ut:system/team/balanced/join_t1

execute as @a[tag=player,tag=!picked] run function ut:system/team/balanced/join_t2

execute if score -PlayersLeft skill matches 1..3 run function ut:system/team/balanced/main_loop_final