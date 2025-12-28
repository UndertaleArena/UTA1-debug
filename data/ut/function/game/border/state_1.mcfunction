#

scoreboard players operation -temp border += -speed border
execute if score -temp border matches 1000.. run function ut:game/border/shrink
execute if score -temp border matches ..-1000 run function ut:game/border/shrink_neg

execute if score -size border < -nextsize border run function ut:game/border/stop