#By Nebulirion

execute unless score hq_parkour info matches 1 run scoreboard players set hq_parkour info 2
execute if score hq_parkour info matches 1 run scoreboard players set hq_parkour info 13
execute if score hq_parkour info matches 2 run scoreboard players set hq_parkour info 1

tag @s add tellraw
tag @a[tag=in_parkour_mng] add tellraw
execute if score hq_parkour info matches 13 run tellraw @a[tag=tellraw] ["",{"translate":"pfx.info"},{"translate":"set.parkour0"}]
execute if score hq_parkour info matches 1 run tellraw @a[tag=tellraw] ["",{"translate":"pfx.info"},{"translate":"set.parkour1"}]
tellraw @s {"translate":"set.parkour2","color":"gray"}
tag @a[tag=tellraw] remove tellraw