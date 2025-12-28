#

scoreboard players set -state border 0
scoreboard players set -final border 1
scoreboard players set -starttime border 200
execute as @a[tag=playing] run scoreboard players add -starttime border 200

scoreboard players set -duration border 600
scoreboard players set -nextsize border 0

execute store result score -speed border run data get storage ut:maps Selected.Border.Speed[1]