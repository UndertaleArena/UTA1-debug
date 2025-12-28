#By Nebulirion (Maybe)

scoreboard players remove -size border 1
scoreboard players remove -temp border 1000
execute if score -temp border matches 1000.. run function ut:game/border/shrink