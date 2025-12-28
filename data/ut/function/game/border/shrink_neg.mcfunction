#By Nebulirion (Maybe)

scoreboard players add -size border 1
scoreboard players add -temp border 1000
execute if score -temp border matches ..-1000 run function ut:game/border/shrink_neg