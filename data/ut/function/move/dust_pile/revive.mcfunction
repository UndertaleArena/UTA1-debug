#By Nebulirion

scoreboard players operation -this pid = @s pid
execute as @a if score @s pid = -this pid run tag @s add revive_p

summon marker ~ ~ ~ {Tags:[respawn_loc,summon,arena_spawning]}
execute rotated as @s run tp @e[tag=summon,limit=1] ~ ~ ~ ~ 0
tag @e[tag=summon,limit=1] remove summon

execute as @a[tag=revive_p,limit=1] run function ut:player/respawn
scoreboard players add @a[tag=revive_p,limit=1] L 1
scoreboard players set @a[tag=revive_p,limit=1] untarget_timer 20
tag @a[tag=revive_p,limit=1] add playing

kill @e[tag=respawn_loc]
execute unless score -injecttaglock store matches 1 run tag @a remove revive_p

function ut:move/dust_pile/remove