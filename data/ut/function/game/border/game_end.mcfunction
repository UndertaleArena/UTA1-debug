#

scoreboard players set -state border 2
scoreboard players set -final border 0

scoreboard players set -duration border 600
scoreboard players set -nextsize border 0

scoreboard players operation -speed border = -size border
scoreboard players operation -speed border -= -startsize border
scoreboard players operation -speed border *= 1000 const
scoreboard players set -resettime border 320
scoreboard players operation -speed border /= -resettime border

scoreboard players set -nextsize border 0