#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.h3"}]

scoreboard players set flowey tutorial 11

###Bossbar HP
scoreboard players reset * bid
#
tag @a[tag=tut_p] add need_bid
#
execute as @a[tag=need_bid] run function ut:player/bossbar/give_bid_loop
function ut:player/bossbar/adjust
#disable dt
bossbar set p1_dt players
bossbar set p2_dt players
bossbar set p3_dt players
bossbar set p4_dt players
bossbar set p5_dt players
bossbar set p6_dt players
bossbar set p7_dt players
bossbar set p8_dt players
bossbar set p9_dt players
bossbar set p10_dt players
bossbar set p11_dt players
bossbar set p12_dt players
bossbar set p13_dt players
bossbar set p14_dt players
bossbar set p15_dt players
bossbar set p16_dt players
###

function ut:lobby/tutorial/e/sound
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/h4 2s