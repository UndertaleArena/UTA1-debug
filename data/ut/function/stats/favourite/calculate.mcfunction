#By Nebulirion

execute store result score -Sans favourite run data get storage utstats:main LoadedPlayer.Favourites[0]
execute store result score -Papyrus favourite run data get storage utstats:main LoadedPlayer.Favourites[1]
execute store result score -Undyne favourite run data get storage utstats:main LoadedPlayer.Favourites[2]
execute store result score -Frisk favourite run data get storage utstats:main LoadedPlayer.Favourites[3]
execute store result score -Flowey favourite run data get storage utstats:main LoadedPlayer.Favourites[4]
execute store result score -Mettaton favourite run data get storage utstats:main LoadedPlayer.Favourites[5]
execute store result score -Muffet favourite run data get storage utstats:main LoadedPlayer.Favourites[6]
execute store result score -Chara favourite run data get storage utstats:main LoadedPlayer.Favourites[7]
execute store result score -Toriel favourite run data get storage utstats:main LoadedPlayer.Favourites[8]
execute store result score -Asgore favourite run data get storage utstats:main LoadedPlayer.Favourites[9]
execute store result score -Asriel favourite run data get storage utstats:main LoadedPlayer.Favourites[10]
execute store result score -Tobyfox favourite run data get storage utstats:main LoadedPlayer.Favourites[11]
execute store result score -Alphys favourite run data get storage utstats:main LoadedPlayer.Favourites[12]
execute store result score -Napstablook favourite run data get storage utstats:main LoadedPlayer.Favourites[13]
execute store result score -Maddummy favourite run data get storage utstats:main LoadedPlayer.Favourites[14]
execute store result score -Mettatonex favourite run data get storage utstats:main LoadedPlayer.Favourites[15]
execute store result score -NotSans0 favourite run data get storage utstats:main LoadedPlayer.Favourites[16]
execute store result score -NotSans1 favourite run data get storage utstats:main LoadedPlayer.Favourites[17]
execute store result score -NotSans2 favourite run data get storage utstats:main LoadedPlayer.Favourites[18]
execute store result score -NotSans3 favourite run data get storage utstats:main LoadedPlayer.Favourites[19]
execute store result score -NotSans4 favourite run data get storage utstats:main LoadedPlayer.Favourites[20]
execute store result score -NotSans5 favourite run data get storage utstats:main LoadedPlayer.Favourites[21]
execute store result score -NotSans6 favourite run data get storage utstats:main LoadedPlayer.Favourites[22]
execute store result score -NotSans7 favourite run data get storage utstats:main LoadedPlayer.Favourites[23]
execute store result score -NotSans8 favourite run data get storage utstats:main LoadedPlayer.Favourites[24]
execute store result score -NotSans9 favourite run data get storage utstats:main LoadedPlayer.Favourites[25]
execute store result score -NotSans10 favourite run data get storage utstats:main LoadedPlayer.Favourites[26]
execute store result score -NotSans11 favourite run data get storage utstats:main LoadedPlayer.Favourites[27]
execute store result score -NotSans12 favourite run data get storage utstats:main LoadedPlayer.Favourites[28]
execute store result score -NotSans13 favourite run data get storage utstats:main LoadedPlayer.Favourites[29]
execute store result score -NotSans14 favourite run data get storage utstats:main LoadedPlayer.Favourites[30]
execute store result score -NotSans15 favourite run data get storage utstats:main LoadedPlayer.Favourites[31]

scoreboard players set -Top favourite 0

scoreboard players operation -Top favourite > -Sans favourite
scoreboard players operation -Top favourite > -Papyrus favourite 
scoreboard players operation -Top favourite > -Undyne favourite
scoreboard players operation -Top favourite > -Frisk favourite 
scoreboard players operation -Top favourite > -Flowey favourite
scoreboard players operation -Top favourite > -Mettaton favourite
scoreboard players operation -Top favourite > -Muffet favourite
scoreboard players operation -Top favourite > -Chara favourite
scoreboard players operation -Top favourite > -Toriel favourite
scoreboard players operation -Top favourite > -Asgore favourite
scoreboard players operation -Top favourite > -Asriel favourite
scoreboard players operation -Top favourite > -Tobyfox favourite 
scoreboard players operation -Top favourite > -Alphys favourite
scoreboard players operation -Top favourite > -Napstablook favourite
scoreboard players operation -Top favourite > -Maddummy favourite
scoreboard players operation -Top favourite > -Mettatonex favourite
scoreboard players operation -Top favourite > -NotSans0 favourite 
scoreboard players operation -Top favourite > -NotSans1 favourite 
scoreboard players operation -Top favourite > -NotSans2 favourite 
scoreboard players operation -Top favourite > -NotSans3 favourite 
scoreboard players operation -Top favourite > -NotSans4 favourite 
scoreboard players operation -Top favourite > -NotSans5 favourite 
scoreboard players operation -Top favourite > -NotSans6 favourite 
scoreboard players operation -Top favourite > -NotSans7 favourite 
scoreboard players operation -Top favourite > -NotSans8 favourite 
scoreboard players operation -Top favourite > -NotSans9 favourite 
scoreboard players operation -Top favourite > -NotSans10 favourite
scoreboard players operation -Top favourite > -NotSans11 favourite
scoreboard players operation -Top favourite > -NotSans12 favourite
scoreboard players operation -Top favourite > -NotSans13 favourite
scoreboard players operation -Top favourite > -NotSans14 favourite
scoreboard players operation -Top favourite > -NotSans15 favourite

execute if score -Top favourite = -Sans favourite run scoreboard players set @s st_favchr 1
execute if score -Top favourite = -Papyrus favourite run scoreboard players set @s st_favchr 2
execute if score -Top favourite = -Undyne favourite run scoreboard players set @s st_favchr 3
execute if score -Top favourite = -Frisk favourite run scoreboard players set @s st_favchr 4
execute if score -Top favourite = -Flowey favourite run scoreboard players set @s st_favchr 5
execute if score -Top favourite = -Mettaton favourite run scoreboard players set @s st_favchr 6
execute if score -Top favourite = -Muffet favourite run scoreboard players set @s st_favchr 7
execute if score -Top favourite = -Chara favourite run scoreboard players set @s st_favchr 8
execute if score -Top favourite = -Toriel favourite run scoreboard players set @s st_favchr 9
execute if score -Top favourite = -Asgore favourite run scoreboard players set @s st_favchr 10
execute if score -Top favourite = -Asriel favourite run scoreboard players set @s st_favchr 11
execute if score -Top favourite = -Tobyfox favourite run scoreboard players set @s st_favchr 12
execute if score -Top favourite = -Alphys favourite run scoreboard players set @s st_favchr 13
execute if score -Top favourite = -Napstablook favourite run scoreboard players set @s st_favchr 14
execute if score -Top favourite = -Maddummy favourite run scoreboard players set @s st_favchr 15
execute if score -Top favourite = -Mettatonex favourite run scoreboard players set @s st_favchr 16
execute if score -Top favourite = -NotSans0 favourite run scoreboard players set @s st_favchr 17
execute if score -Top favourite = -NotSans1 favourite run scoreboard players set @s st_favchr 18
execute if score -Top favourite = -NotSans2 favourite run scoreboard players set @s st_favchr 19
execute if score -Top favourite = -NotSans3 favourite run scoreboard players set @s st_favchr 20
execute if score -Top favourite = -NotSans4 favourite run scoreboard players set @s st_favchr 21
execute if score -Top favourite = -NotSans5 favourite run scoreboard players set @s st_favchr 22
execute if score -Top favourite = -NotSans6 favourite run scoreboard players set @s st_favchr 23
execute if score -Top favourite = -NotSans7 favourite run scoreboard players set @s st_favchr 24
execute if score -Top favourite = -NotSans8 favourite run scoreboard players set @s st_favchr 25
execute if score -Top favourite = -NotSans9 favourite run scoreboard players set @s st_favchr 26
execute if score -Top favourite = -NotSans10 favourite run scoreboard players set @s st_favchr 27
execute if score -Top favourite = -NotSans11 favourite run scoreboard players set @s st_favchr 28
execute if score -Top favourite = -NotSans12 favourite run scoreboard players set @s st_favchr 29
execute if score -Top favourite = -NotSans13 favourite run scoreboard players set @s st_favchr 30
execute if score -Top favourite = -NotSans14 favourite run scoreboard players set @s st_favchr 31
execute if score -Top favourite = -NotSans15 favourite run scoreboard players set @s st_favchr 32

execute if score -Top favourite matches 0 run scoreboard players set @s st_favchr 0