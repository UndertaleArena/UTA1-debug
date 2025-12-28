#By Nebulirion

scoreboard players set -new mlmax 60
effect give @s minecraft:slowness 1 1 true

summon minecraft:marker ~ ~ ~ {Tags:[atker,knife,killonhit,blockable],CustomName:'{"translate":"chr.chara.mwxn"}'}

scoreboard players set #damage damage 900
scoreboard players operation #damage damage *= @s atk
scoreboard players operation #damage damage /= #rate atk

execute as @a[tag=victim,limit=1,tag=!untargetable] at @s run function ut:move/real_knife/hitcheck
kill @e[tag=atker]

function ut:move/real_knife/stop

scoreboard players set @s unloadtime 5
function ut:player/infight/use