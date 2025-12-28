#By Nebulirion#By Nebulirion

function ut:game/border/game_end
scoreboard players operation -speed border *= 4 const

scoreboard players set #endedround game 1
scoreboard players set -Enabled stat 0

#####Players
tag @a add no_mc_dmg
effect give @a minecraft:weakness infinite 1 true

#####Timer
function ut:game/celebrate
schedule clear ut:game/celebrate

schedule function ut:game/team/reset_round 4s