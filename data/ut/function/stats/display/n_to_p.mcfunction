#By Nebulirion

scoreboard players operation out1 damage = in damage
scoreboard players operation out1 damage /= 100 const
scoreboard players operation out2 damage = in damage
scoreboard players operation out2 damage %= 100 const

scoreboard players reset out3 damage
execute if score out2 damage matches ..9 run scoreboard players set out3 damage 0