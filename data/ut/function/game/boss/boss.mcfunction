#By Nebulirion

tag @s add boss
tag @s add no_mc_dmg

scoreboard players set #hasBoss game 1
execute store result score #playerCount game if entity @a[tag=playing]
execute store result score #bossDiff game if entity @a[tag=playing,tag=!boss]

#####
scoreboard players set dropSoul gamerule 3
function ut:game/boss/animation/start
scoreboard players set dropSoul gamerule 0

#####BOSS STAT
scoreboard players set #boss hpmax 20
scoreboard players operation #boss hpmax *= #playerCount game
scoreboard players add #boss hpmax 100

scoreboard players operation @s hpmax *= #boss hpmax
scoreboard players operation @s hpmax /= 100 const
scoreboard players operation @s willmax *= #boss hpmax
scoreboard players operation @s willmax /= 100 const

execute as @e[type=armor_stand,tag=dust_pile] run tag @s add dust_pile_norevive

scoreboard players set #bossani game 100
scoreboard players set @a[tag=playing] L 1
scoreboard players set @a[tag=playing] soul_count 0
execute store result score @s soul_count run clear @s carrot_on_a_stick[custom_data~{soul:1b}] 0

function ut:player/strong_setup

scoreboard players operation #backup store = dtRule gamerule
scoreboard players set dtRule gamerule 2
execute as @a[tag=playing,tag=!boss,tag=!respawning] run function ut:player/restore
execute as @a[tag=playing,tag=!boss,tag=respawning] run scoreboard players set @s respawnTimer 40
kill @e[tag=respawn_soul]
scoreboard players operation dtRule gamerule = #backup store

scoreboard players operation @s cdregen *= #boss hpmax
scoreboard players operation @s cdregen /= 100 const
scoreboard players operation @s mpregen *= #boss hpmax
scoreboard players operation @s mpregen /= 100 const

#####Clear S-Move
scoreboard players operation #boss pid = @s pid
execute as @e[tag=move,tag=!name] if score @s sid = #boss pid run function ut:void
execute as @e[tag=move,tag=stick] run function ut:void

#####TID
execute as @a run scoreboard players operation @s ptid = @s tid
scoreboard players operation #boss tid = @s tid
execute as @e[tag=move] if score @s tid = #boss tid run scoreboard players set @s tid 32767
execute as @e[tag=move] if score @s tid matches ..32766 run scoreboard players set @s tid 1

scoreboard players add @s st_playboss 1
scoreboard players add @s bosscount 1

scoreboard players set @a[tag=playing,tag=!boss] tid 1
scoreboard players set @s tid 32767
team join nosoul @a[tag=playing,tag=!boss]
team join boss @s

function ut:move/effect/untargetable/give
scoreboard players set @s untarget_timer 100
scoreboard players set @s unloadtime 9999999
effect give @s slowness 5 124
effect give @s weakness 5 124