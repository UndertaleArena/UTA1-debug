#By Nebulirion

execute if score -Enabled stat matches 1 run scoreboard players add @s st_cdtuse 1
scoreboard players set @s unloadtime 10
function ut:player/infight/use
#
tag @s add has_save
#
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1.6
#
summon minecraft:item ~ ~ ~ {Tags:[move,summon,save],Age:-32768s,PickupDelay:32767s,NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:gold_ingot",count:1b},CustomName:'{"translate":"chr.frisk.dtn"}',Thrower:[I;0,0,0,0]}
#
execute as @e[type=item,tag=summon,limit=1] positioned ~ ~.4 ~ run function ut:move/save/cast
scoreboard players operation @s plt3 = @s dtmax
scoreboard players operation @s dtmax /= 2 const
function ut:player/bossbar/refresh
#
function ut:move/save/item_load