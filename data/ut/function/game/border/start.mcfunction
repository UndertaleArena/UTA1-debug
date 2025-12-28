#By Nebulirion (Maybe)

#say border start!

#scoreboard players set -startsize border 900
#scoreboard players set -endsize border 120
execute store result score -startsize border run data get storage ut:maps Selected.Border.Size[0]
execute store result score -endsize border run data get storage ut:maps Selected.Border.Size[1]

scoreboard players set @a border -1
scoreboard players set @a border_timer -10

scoreboard players set -haswarning border 1

scoreboard players set -drawintv border 0
scoreboard players set -drawintvmx border 4
scoreboard players set -state border 0
scoreboard players set -final border 0
scoreboard players operation -size border = -startsize border
scoreboard players operation -nextsize border = -endsize border

scoreboard players set -starttime border 0

scoreboard players set #extratime border 200
scoreboard players operation #totalextratime border = #extratime border
scoreboard players operation #totalextratime border *= -PlayerCount game
scoreboard players operation -starttime border += #totalextratime border

#scoreboard players set -duration border 600

scoreboard players set -damage border 100
execute store result score -center_x border run data get entity @e[tag=arena_sp,limit=1,scores={maplock=1}] Pos[0] 10
execute store result score -center_z border run data get entity @e[tag=arena_sp,limit=1,scores={maplock=1}] Pos[2] 10