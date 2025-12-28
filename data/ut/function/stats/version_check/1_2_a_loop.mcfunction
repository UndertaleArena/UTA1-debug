#By Nebulirion

##1
scoreboard players add -thiscount store 1

##2
data modify storage utstats:main Temp set value {Stats:[0,0,0,0,0,0,0,0,0,0,0,0]}
execute store result storage utstats:main Temp.Id int 1 run scoreboard players get -thiscount store
data modify storage utstats:main LoadedPlayer.Characters append from storage utstats:main Temp

data modify storage utstats:main LoadedPlayer.Favourites append value 0

##3
execute if score -thiscount store < -chrcount store run function ut:stats/version_check/1_2_a_loop