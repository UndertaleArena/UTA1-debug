#hihi this is neb
#my fav.number is 27

scoreboard players set @s ray_distance -625

scoreboard players set @s unloadtime 10

execute if block ~ 123 ~ red_wool run function ut:lobby/tutorial/s/r1/select
execute if block ~ 123 ~ orange_wool run function ut:lobby/tutorial/s/r2/select
execute if block ~ 123 ~ yellow_wool run function ut:lobby/tutorial/s/r3/select
execute if block ~ 123 ~ lime_wool run function ut:lobby/tutorial/s/r4/select
execute if block ~ 123 ~ green_wool run function ut:lobby/tutorial/s/r5/select
execute if block ~ 123 ~ cyan_wool run function ut:lobby/tutorial/s/r6/select
execute if block ~ 123 ~ blue_wool run function ut:lobby/tutorial/s/r7/select
execute if block ~ 123 ~ purple_wool run function ut:lobby/tutorial/s/r8/select
execute if block ~ 123 ~ magenta_wool run function ut:lobby/tutorial/s/r9/select
execute if block ~ 123 ~ pink_wool run function ut:lobby/tutorial/s/r10/select

execute as @a[tag=ray_user,tag=!mute_rayrc] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 1.75