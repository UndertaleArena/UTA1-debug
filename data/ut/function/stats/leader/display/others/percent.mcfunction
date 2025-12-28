#By Nebulirion

scoreboard players operation in damage = @s leaderboard
function ut:stats/display/n_to_p
tellraw @a[tag=seelbdisplay,tag=!lb_playing] [{"text":"|| ","color":"gold"},{"text":"","color":"gray","extra":[{"score":{"name":"@s","objective": "leaderboard_rank"}},". ",{"selector":"@s"}," - ",{"score":{"name":"out1","objective":"damage"}},{"text":"."},{"score":{"name":"out3","objective":"damage"}},{"score":{"name":"out2","objective":"damage"}},{"text":"%"}]}]
