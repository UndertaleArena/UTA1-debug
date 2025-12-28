#By Nebulirion (Maybe)

scoreboard players set -state border 0
scoreboard players set -final border 0
scoreboard players operation -size border = -startsize border
scoreboard players operation -nextsize border = -endsize border

scoreboard players set -starttime border 0

scoreboard players set #extratime border 20
execute store result score #totalextratime border if entity @a[tag=playing]
scoreboard players operation #totalextratime border *= #extratime border
scoreboard players operation -starttime border += #totalextratime border