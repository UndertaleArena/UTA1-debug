#By Nebulirion
#
execute store result score -GamesPlayed stat run data get storage utstats:main LoadedStats.Stats[0]
execute store result score -GamesFinished stat run data get storage utstats:main LoadedStats.Stats[1]
execute store result score -GamesWon stat run data get storage utstats:main LoadedStats.Stats[2]
execute store result score -KillCount stat run data get storage utstats:main LoadedStats.Stats[3]
execute store result score -SpareCount stat run data get storage utstats:main LoadedStats.Stats[4]
execute store result score -DeathCount stat run data get storage utstats:main LoadedStats.Stats[5]
execute store result score -DamageDealt stat run data get storage utstats:main LoadedStats.Stats[6]
execute store result score -DTused stat run data get storage utstats:main LoadedStats.Stats[7]
execute store result score -GameTime stat run data get storage utstats:main LoadedStats.Stats[8]
execute store result score -WinPoints stat run data get storage utstats:main LoadedStats.Stats[9]
execute store result score -LosePoints stat run data get storage utstats:main LoadedStats.Stats[10]
execute store result score -GamesQuit stat run data get storage utstats:main LoadedStats.Stats[11]

execute store result score -CharacterLevel stat run data get storage utstats:main LoadedStats.Levels[0]
execute store result score -CharacterExp stat run data get storage utstats:main LoadedStats.Levels[1]
execute store result score -CharacterTotal stat run data get storage utstats:main LoadedStats.Levels[2]
#