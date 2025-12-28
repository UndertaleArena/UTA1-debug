#By Nebulirion

data modify storage bossbar HeartA set value '[" ",{"selector":"@e[type=marker,tag=team_spawn,scores={tbid=2},limit=1]"}]'
data modify storage bossbar HeartB set value '[" ",{"selector":"@e[type=marker,tag=team_spawn,scores={tbid=1},limit=1]"}]'

data modify storage bossbar Arrow1 set value '["§7⏵⏵⏵"]'
data modify storage bossbar Arrow2 set value '["§7⏵⏵⏵"]'
data modify storage bossbar Arrow3 set value '["§7⏵⏵⏵"]'

function ut:game/siege/bossbar_style_arrow
data modify storage bossbar Arrow1 set from storage bossbar ArrowColored

function ut:game/siege/bossbar_update_a
function ut:game/siege/bossbar_update_b

function ut:game/siege/bossbar_update