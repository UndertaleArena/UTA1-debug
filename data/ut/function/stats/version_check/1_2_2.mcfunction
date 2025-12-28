#By Nebulirion

data modify storage utstats:main LoadedPlayer.Scores.tut_sr set from storage utstats:main LoadedPlayer.Tutorial
data modify storage utstats:main LoadedPlayer.Scores.Q set value 3
data remove storage utstats:main LoadedPlayer.Tutorial

data modify storage utstats:main LoadedPlayer.DataVersion set value "1.2.2" 