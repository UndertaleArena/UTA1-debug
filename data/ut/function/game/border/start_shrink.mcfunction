#By Nebulirion (Maybe)

execute if score -final borber matches 1 run scoreboard players set -haswarning border 1 
execute if score -haswarning border matches 1 as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ .8 2
execute if score -haswarning border matches 1 run tellraw @a [{"translate": "pfx.game"},{"translate": "border.start"}]
scoreboard players set -haswarning border 0

scoreboard players set -state border 1
scoreboard players set -temp border 0

#scoreboard players operation -speed border = -size border
#scoreboard players operation -speed border -= -nextsize border
#scoreboard players operation -speed border /= 40 const
#scoreboard players operation -speed border /= -duration border

#scoreboard players set -speed border 500
execute store result score -speed border run data get storage ut:maps Selected.Border.Speed[0]