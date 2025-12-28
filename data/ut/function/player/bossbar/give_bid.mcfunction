#By Nebulirion

#say giving bid!!!!!!
#
scoreboard players reset * bid
#
tag @a[tag=playing] add need_bid
#
execute as @a[tag=need_bid] run function ut:player/bossbar/give_bid_loop
function ut:player/bossbar/adjust
#