#By Nebulirion

scoreboard players operation in damage = @s leaderboard
scoreboard players operation in damage /= 20 const

scoreboard players operation out1 damage = in damage
scoreboard players operation out1 damage /= 60 const
scoreboard players operation out2 damage = in damage
scoreboard players operation out2 damage %= 60 const
scoreboard players operation out3 damage = out1 damage
scoreboard players operation out3 damage %= 60 const
scoreboard players operation out4 damage = out1 damage
scoreboard players operation out4 damage /= 60 const

scoreboard players reset out2p damage
execute if score out2 damage matches ..9 run scoreboard players set out2p damage 0
scoreboard players reset out3p damage
execute if score out3 damage matches ..9 run scoreboard players set out3p damage 0
scoreboard players reset out4p damage
execute if score out4 damage matches ..9 run scoreboard players set out4p damage 0

tellraw @s[tag=seelbdisplay,tag=lb_playing] [{"text":"|| ","color":"gold"},{"text":"","color":"white","extra":[{"score":{"name":"@s","objective": "leaderboard_rank"}},". ",{"selector":"@s"}," - ",{"score":{"name":"out4p","objective":"damage"}},{"score":{"name":"out4","objective":"damage"}},{"text":":"},{"score":{"name":"out3p","objective":"damage"}},{"score":{"name":"out3","objective":"damage"}},{"text":":"},{"score":{"name":"out2p","objective":"damage"}},{"score":{"name":"out2","objective":"damage"}}]}]
