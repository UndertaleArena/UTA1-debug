#By Nebulirion
scoreboard players reset * bid
execute as @a[tag=playing] run scoreboard players operation @s bid = @s gpid
function ut:player/bossbar/adjust
#