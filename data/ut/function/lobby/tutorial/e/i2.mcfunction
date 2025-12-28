#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.i2"}]


scoreboard players set flowey tutorial 13

###Bossbar Both
scoreboard players reset * bid
#
tag @a[tag=tut_p] add need_bid
#
execute as @a[tag=need_bid] run function ut:player/bossbar/give_bid_loop
function ut:player/bossbar/adjust
###

function ut:lobby/tutorial/e/sound
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/i3 3s