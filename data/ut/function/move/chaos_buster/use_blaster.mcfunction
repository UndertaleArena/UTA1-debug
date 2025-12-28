#By Nebulirion

playsound minecraft:entity.ender_dragon.ambient player @a ~ ~ ~ 0.25 2

scoreboard players set @s plt1 64
execute anchored eyes positioned ^-.25 ^-.1 ^1 facing ^.25 ^ ^20 if score @s plt1 matches 1.. if block ~ ~ ~ #ut:trans run function ut:move/chaos_buster/use_blaster_loop

summon minecraft:marker ~ ~ ~ {Tags:[atker,blaster,user_direction],CustomName:'{"translate":"chr.asriel.mpn2"}'}

scoreboard players set #damage damage 300
scoreboard players operation #damage damage *= @s atk
scoreboard players operation #damage damage /= #rate atk

scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid

execute as @a[tag=blaster_target] unless score @s tid = #atker tid at @s run function ut:move/chaos_buster/hitcheck_blast

tag @a[tag=blaster_target] remove blaster_target
kill @e[tag=blaster]
#

scoreboard players set @s unloadtime_2nd 22
scoreboard players set @s[tag=attack_buffed] unloadtime_2nd 10
scoreboard players set @s unloadtime 4
scoreboard players add @s mpcooldown 8
function ut:player/infight/use

execute if data entity @s SelectedItem.components."minecraft:custom_data".chaos_buster run function ut:move/chaos_buster/next_stage