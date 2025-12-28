#By Nebulirion

execute store result score #mx1 store run data get entity @s Pos[0] 10
execute store result score #my1 store run data get entity @s Pos[1] 10
execute store result score #mz1 store run data get entity @s Pos[2] 10
scoreboard players add #my1 store 15

scoreboard players operation #mx1 store -= #mx3 store
scoreboard players operation #my1 store -= #my3 store
scoreboard players operation #mz1 store -= #mz3 store

#vec.m1 x vec.m2
scoreboard players operation #mxc store = #my1 store
scoreboard players operation #mxc store *= #mz2 store
scoreboard players operation #mx4 store = #mz1 store
scoreboard players operation #mx4 store *= #my2 store
scoreboard players operation #mxc store -= #mx4 store

#scoreboard players operation mxc distance = #mxc store

scoreboard players operation #myc store = #mz1 store
scoreboard players operation #myc store *= #mx2 store
scoreboard players operation #my4 store = #mx1 store
scoreboard players operation #my4 store *= #mz2 store
scoreboard players operation #myc store -= #my4 store

#scoreboard players operation myc distance = #myc store

scoreboard players operation #mzc store = #mx1 store
scoreboard players operation #mzc store *= #my2 store
scoreboard players operation #mz4 store = #my1 store
scoreboard players operation #mz4 store *= #mx2 store
scoreboard players operation #mzc store -= #mz4 store

#scoreboard players operation mzc distance = #mzc store

scoreboard players operation #mxc store *= #mxc store
scoreboard players operation #myc store *= #myc store
scoreboard players operation #mzc store *= #mzc store

scoreboard players operation #res store = #mxc store
scoreboard players operation #res store += #myc store
scoreboard players operation #res store += #mzc store

#scoreboard players operation res distance = #res store
scoreboard players operation div distance = #div store

#scoreboard players operation #res store *= 100 const

#div
scoreboard players operation #res store /= #div store
scoreboard players operation @s distance = #res store

#too much math this is terrible aaaaa

execute if score @s distance matches 0..400 run function ut:move/gaster_blaster/hitcheck