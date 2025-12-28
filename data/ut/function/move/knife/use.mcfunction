#By Nebulirion

scoreboard players set -new mlmax 30
effect give @s[tag=!attack_buffed] minecraft:slowness 1 1 true

summon minecraft:marker ~ ~ ~ {Tags:[atker,knife,killonhit,blockable],CustomName:'{"translate":"chr.chara.mw"}'}

scoreboard players set #damage damage 300
scoreboard players operation #damage damage *= @s atk
scoreboard players operation #damage damage /= #rate atk

execute as @a[tag=victim,limit=1,tag=!untargetable] at @s run function ut:move/knife/hitcheck
kill @e[tag=atker]

scoreboard players set @s unloadtime 5
function ut:player/infight/use