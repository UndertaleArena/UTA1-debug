#

#say border stop!
scoreboard players set -state border 3
scoreboard players set -haswarning border 1
execute if score -final border matches 0 run tellraw @a [{"translate": "pfx.game"},{"translate": "border.stop"}]
execute if score -final border matches 0 run function ut:game/border/start_final