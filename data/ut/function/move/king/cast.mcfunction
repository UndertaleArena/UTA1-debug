#By Nebulirion

scoreboard players add #rot2 store 40
scoreboard players operation #rot store = #rot2 store
execute positioned ^ ^-.3 ^ run function ut:move/rot/12
data merge entity @e[tag=summon,limit=1] {Tags:[king_shockwave,prj,prj_sp,summon,move],NoGravity:1b,Marker:1b,Fire:32767s,CustomName:'{"translate":"chr.asgore.dtn"}'}

scoreboard players set #this damage 0
scoreboard players set #this lifetime 6
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

execute as @e[tag=summon,limit=1] positioned as @s align y run function ut:move/cast