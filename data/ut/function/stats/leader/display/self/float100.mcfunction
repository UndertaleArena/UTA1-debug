#By Nebulirion

scoreboard players operation in damage = @s leaderboard
scoreboard players operation in damage *= 100 const
function ut:stats/display/n_to_s
tellraw @s[tag=seelbdisplay,tag=lb_playing] [{"text":"|| ","color":"gold"},{"text":"","color":"white","extra":[{"score":{"name":"@s","objective": "leaderboard_rank"}},". ",{"selector":"@s"}," - ",{"score":{"name":"out1","objective":"damage"}},{"text":"."},{"score":{"name":"out3","objective":"damage"}},{"score":{"name":"out2","objective":"damage"}}]}]
