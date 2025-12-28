#

scoreboard players operation -temp border += -speed border
execute if score -temp border matches 1000.. run function ut:game/border/shrink
execute if score -temp border matches ..-1000 run function ut:game/border/shrink_neg

scoreboard players remove -resettime border 1
execute if score -resettime border matches ..0 run function ut:game/border/start_again