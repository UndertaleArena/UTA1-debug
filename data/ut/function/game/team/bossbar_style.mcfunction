#By Nebulirion

data modify storage bossbar HeartA set value '[" ",{"selector":"@e[type=marker,tag=team_spawn,scores={tbid=1},limit=1]"}]'
data modify storage bossbar HeartB set value '[" ",{"selector":"@e[type=marker,tag=team_spawn,scores={tbid=2},limit=1]"}]'

function ut:game/team/bossbar_update