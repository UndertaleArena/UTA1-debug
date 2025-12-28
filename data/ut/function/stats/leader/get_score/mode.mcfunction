#By Nebulirion

scoreboard players set #scored leaderboard 1

execute if score -FilterM leaderboard matches 1 run data modify storage utstats:main LoadedStats set from storage utstats:main LoadedPlayer.Gamemodes[0]
execute if score -FilterM leaderboard matches 2 run data modify storage utstats:main LoadedStats set from storage utstats:main LoadedPlayer.Gamemodes[1]
execute if score -FilterM leaderboard matches 3 run data modify storage utstats:main LoadedStats set from storage utstats:main LoadedPlayer.Gamemodes[2]
execute if score -FilterM leaderboard matches 4 run data modify storage utstats:main LoadedStats set from storage utstats:main LoadedPlayer.Gamemodes[3]
execute if score -FilterM leaderboard matches 5 run data modify storage utstats:main LoadedStats set from storage utstats:main LoadedPlayer.Gamemodes[4]
execute if score -FilterM leaderboard matches 6 run data modify storage utstats:main LoadedStats set from storage utstats:main LoadedPlayer.Gamemodes[5]
execute if score -FilterM leaderboard matches 7 run data modify storage utstats:main LoadedStats set from storage utstats:main LoadedPlayer.Gamemodes[6]