###Generated from Nebulagen made By Nebulirion
#03/13/2021, 13:37:48

scoreboard players remove #temp plt2b 1
execute if score #temp plt2b matches 1.. positioned ^-.35 ^ ^ run function ut:move/dummy_friend/loop_prepare_user_pre_loop
execute if score #temp plt2b matches 0 as @e[type=husk,tag=dummy_preparing,tag=!flying_knife] anchored eyes run function ut:move/dummy_friend/loop_prepare_user
