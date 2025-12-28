#By Nebulirion

tellraw @s[tag=seelbdisplay,tag=lb_playing] [{"text":"|| ","color":"gold"},{"text":"","color":"white","extra":[{"score":{"name":"@s","objective": "leaderboard_rank"}},". ",{"selector":"@s"}," - ",{"score":{"name":"@s","objective": "leaderboard"}}]}]
