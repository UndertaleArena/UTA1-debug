#By Nebulirion

#
scoreboard players reset * gpid
#
tag @a[tag=playing] add need_gpid
#
execute as @a[tag=need_gpid] run function ut:system/give_gpid_loop
#