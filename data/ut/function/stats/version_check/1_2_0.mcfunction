#By Nebulirion

data modify storage utstats:main LoadedPlayer.Player.Levels set from storage utstats:main LoadedPlayer.Levels
data modify storage utstats:main LoadedPlayer.Player.Stats set from storage utstats:main LoadedPlayer.Stats
data remove storage utstats:main LoadedPlayer.Levels
data remove storage utstats:main LoadedPlayer.Stats

data modify storage utstats:main LoadedPlayer.Gamemodes[0].Levels set value [1,0,0]
data modify storage utstats:main LoadedPlayer.Gamemodes[1].Levels set value [1,0,0]
data modify storage utstats:main LoadedPlayer.Gamemodes[2].Levels set value [1,0,0]
data modify storage utstats:main LoadedPlayer.Gamemodes[3].Levels set value [1,0,0]
data modify storage utstats:main LoadedPlayer.Gamemodes[4].Levels set value [1,0,0]
data modify storage utstats:main LoadedPlayer.Gamemodes[5].Levels set value [1,0,0]
data modify storage utstats:main LoadedPlayer.Gamemodes[6].Levels set value [1,0,0]
data modify storage utstats:main LoadedPlayer.Gamemodes[7].Levels set value [1,0,0]

data modify storage utstats:main LoadedPlayer.DataVersion set value "1.2.0" 