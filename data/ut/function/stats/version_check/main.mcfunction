#By Nebulirion

#1.1.3#
execute unless data storage utstats:main LoadedPlayer.DataVersion run function ut:stats/version_check/1_1_3

#1.2.a#
execute unless data storage utstats:main LoadedPlayer{DataVersion:"1.2.a"} unless data storage utstats:main LoadedPlayer{DataVersion:"1.2.0"} run function ut:stats/version_check/1_2_a

#1.2.0#
execute unless data storage utstats:main LoadedPlayer{DataVersion:"1.2.0"} run function ut:stats/version_check/1_2_0

function ut:stats/version_check/1_2_2