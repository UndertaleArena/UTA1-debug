#by Neb and SY91419 is kinda doing stuff too i guess

scoreboard players set @a[tag=ray_user,limit=1] unloadtime 20

tellraw @s [{"text":" "}]
tellraw @s [{"translate":"cht.linemid","color":"gold"}]
tellraw @s [{"storage":"ut:modes","nbt":"Selected.Name","interpret":true,"color": "yellow","bold": true}]

execute if score -GameMode game matches 0..3 run tellraw @s [{"translate":"gminfo.t0","color":"gray"}]
execute if score -GameMode game matches 4..7 run tellraw @s [{"translate":"gminfo.t1","color":"gray"}]

tellraw @s [{"text":" "}]

execute if score -GameMode game matches 0 run tellraw @s [{"translate":"gminfo.0.1"}]
execute if score -GameMode game matches 0 run tellraw @s [{"translate":"gminfo.0.2"}]
execute if score -GameMode game matches 0 run tellraw @s [{"translate":"gminfo.0.3"}]

execute if score -GameMode game matches 1 run tellraw @s [{"translate":"gminfo.1.1"}]
execute if score -GameMode game matches 1 run tellraw @s [{"translate":"gminfo.1.2"}]
execute if score -GameMode game matches 1 run tellraw @s [{"translate":"gminfo.1.3"}]
execute if score -GameMode game matches 1 run tellraw @s [{"translate":"gminfo.1.4"}]

execute if score -GameMode game matches 2 run tellraw @s [{"translate":"gminfo.2.1"}]
execute if score -GameMode game matches 2 run tellraw @s [{"translate":"gminfo.2.2"}]
execute if score -GameMode game matches 2 run tellraw @s [{"translate":"gminfo.2.3"}]
execute if score -GameMode game matches 2 run tellraw @s [{"translate":"gminfo.2.4"}]
execute if score -GameMode game matches 2 run tellraw @s [{"translate":"gminfo.2.5"}]

execute if score -GameMode game matches 3 run tellraw @s [{"translate":"gminfo.3.1"}]
execute if score -GameMode game matches 3 run tellraw @s [{"translate":"gminfo.3.2"}]
execute if score -GameMode game matches 3 run tellraw @s [{"translate":"gminfo.3.3"}]
execute if score -GameMode game matches 3 run tellraw @s [{"translate":"gminfo.3.4"}]

execute if score -GameMode game matches 4 run tellraw @s [{"translate":"gminfo.4.1"}]
execute if score -GameMode game matches 4 run tellraw @s [{"translate":"gminfo.4.2"}]
execute if score -GameMode game matches 4 run tellraw @s [{"translate":"gminfo.4.3"}]
execute if score -GameMode game matches 4 run tellraw @s [{"translate":"gminfo.4.4"}]

execute if score -GameMode game matches 5 run tellraw @s [{"translate":"gminfo.5.1"}]
execute if score -GameMode game matches 5 run tellraw @s [{"translate":"gminfo.5.2"}]
execute if score -GameMode game matches 5 run tellraw @s [{"translate":"gminfo.5.3"}]
execute if score -GameMode game matches 5 run tellraw @s [{"translate":"gminfo.5.4"}]

execute if score -GameMode game matches 6 run tellraw @s [{"translate":"gminfo.6.1"}]
execute if score -GameMode game matches 6 run tellraw @s [{"translate":"gminfo.6.2"}]
execute if score -GameMode game matches 6 run tellraw @s [{"translate":"gminfo.6.3"}]
execute if score -GameMode game matches 6 run tellraw @s [{"translate":"gminfo.6.4"}]
execute if score -GameMode game matches 6 run tellraw @s [{"translate":"gminfo.6.5"}]
execute if score -GameMode game matches 6 run tellraw @s [{"translate":"gminfo.6.6"}]

execute if score -GameMode game matches 7 run tellraw @s [{"translate":"gminfo.7.1"}]
execute if score -GameMode game matches 7 run tellraw @s [{"translate":"gminfo.7.2"}]
execute if score -GameMode game matches 7 run tellraw @s [{"translate":"gminfo.7.3"}]
execute if score -GameMode game matches 7 run tellraw @s [{"translate":"gminfo.7.4"}]
execute if score -GameMode game matches 7 run tellraw @s [{"translate":"gminfo.7.5"}]
execute if score -GameMode game matches 7 run tellraw @s [{"translate":"gminfo.7.6"}]

tellraw @s [{"translate":"cht.linemid","color":"gold"}]