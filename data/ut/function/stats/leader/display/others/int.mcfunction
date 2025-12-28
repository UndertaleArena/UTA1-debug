#By Nebulirion

tellraw @a[tag=seelbdisplay,tag=!lb_playing] [{"text":"|| ","color":"gold"},{"text":"","color":"gray","extra":[{"score":{"name":"@s","objective": "leaderboard_rank"}},". ",{"selector":"@s"}," - ",{"score":{"name":"@s","objective": "leaderboard"}}]}]
