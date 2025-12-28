###Generated from Nebulagen made By Nebulirion
#12/16/2021, 01:51:22

scoreboard players set #killprj speed 1
execute if block ~ ~ ~ #ut:prj_interact run function ut:move/_block/main
execute if score #killprj speed matches 1 run function ut:move/spear/inblock