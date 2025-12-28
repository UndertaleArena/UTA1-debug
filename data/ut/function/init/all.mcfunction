#By Nebulirion

#gamerule
setworldspawn 255 6 255

function ut:init/gamerule
function ut:init/bossbar
function ut:init/teams
function ut:init/scoreboard
function ut:init/storage
function ut:stats/setup

kill @e[tag=item_loader]
summon item_frame 255 3 255 {Tags:[item_loader],UUID:[I;0,0,0,1],Fixed:1b}

#effects
execute as @a run function ut:player/effect