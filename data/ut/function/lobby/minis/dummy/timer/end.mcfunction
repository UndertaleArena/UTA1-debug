#By Nebulirion

#announcement
tellraw @s [{"translate":"pfx.info"},{"translate":"mini.shoot1","with":[{"score":{"name":"@s","objective":"dummy"}}]}]
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 2 1

#result check
execute unless score @s dummy_best matches 0.. run scoreboard players set @s dummy_best 0
execute if score @s dummy > @s dummy_best run function ut:lobby/minis/dummy/player/update_record

#execute unless score @s dummy > @s dummy_best run tellraw @s ["Personal Best: ",{"score":{"name":"@s","objective":"dummy_best"}}]

#tag remove
function ut:lobby/minis/dummy/player/out