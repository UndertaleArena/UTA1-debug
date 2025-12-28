###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

scoreboard players set #killprj speed 1
execute if block ~ ~ ~ #ut:prj_interact run function ut:move/_block/main
execute if score #killprj speed matches 1 run function ut:move/bomb/inblock