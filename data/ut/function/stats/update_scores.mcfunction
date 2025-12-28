#By Nebulirion

execute store result storage utstats:main LoadedPlayer.Scores.keychain int 1 run scoreboard players get @s keychain
execute store result storage utstats:main LoadedPlayer.Scores.tutorial int 1 run scoreboard players get @s tutorial
execute store result storage utstats:main LoadedPlayer.Scores.tut_sr int 1 run scoreboard players get @s tut_sr
execute store result storage utstats:main LoadedPlayer.Scores.Q int 1 run scoreboard players get @s Q
execute store result storage utstats:main LoadedPlayer.Scores.N int 1 run scoreboard players get @s N
execute store result storage utstats:main LoadedPlayer.Scores.C int 1 run scoreboard players get @s C
execute store result storage utstats:main LoadedPlayer.Scores.tut_sr int 1 run scoreboard players get @s tut_sr
execute store result storage utstats:main LoadedPlayer.Scores.clear_maze_total int 1 run scoreboard players get @s clear_maze_total
execute store result storage utstats:main LoadedPlayer.Scores.dummy_best int 1 run scoreboard players get @s dummy_best
execute store result storage utstats:main LoadedPlayer.Scores.credit int 1 run scoreboard players get @s credit
execute store result storage utstats:main LoadedPlayer.Scores.frog int 1 run scoreboard players get @s frog
execute store result storage utstats:main LoadedPlayer.Scores.undyne_skin int 1 run scoreboard players get @s undyne_skin

execute if entity @s[tag=cev] run data modify storage utstats:main LoadedPlayer.Scores.tag_cev set value 1b
execute if entity @s[tag=pinky] run data modify storage utstats:main LoadedPlayer.Scores.tag_pinky set value 1b
execute if entity @s[tag=vip] run data modify storage utstats:main LoadedPlayer.Scores.tag_vip set value 1b
execute if entity @s[tag=!cev] run data modify storage utstats:main LoadedPlayer.Scores.tag_cev set value 0b
execute if entity @s[tag=!pinky] run data modify storage utstats:main LoadedPlayer.Scores.tag_pinky set value 0b
execute if entity @s[tag=!vip] run data modify storage utstats:main LoadedPlayer.Scores.tag_vip set value 0b