#By Nebulirion

tag @s remove candidate
tag @s add t1
tag @s add picked
scoreboard players remove -PlayersLeft skill 1
scoreboard players operation -Team1 skill += @s skill
function ut:system/team/balanced/calc_skill_dif

#tellraw @a [{"selector":"@s"}," picked, dif is:",{"score":{"name":"-Diffrence","objective": "skill"}}]
