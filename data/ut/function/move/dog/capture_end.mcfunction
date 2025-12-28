#By Nebulirion

scoreboard players set -IsDogCap dog_timer 0
scoreboard players set -IsDogExist dog_timer 0
scoreboard players set -IsDogCapTeam dog_timer 0

execute unless score #ended game matches 1 run schedule function ut:game/dog/dog_at_mid 10s append

particle end_rod ~ ~.4 ~ .2 .2 .2 0.2 25 force @a[scores={Q=2..}]

tag @a[tag=this_owner] remove dog_owner

scoreboard players operation #this aid = @s aid
execute as @e[tag=dog_model] if score @s aid = #this aid run function ut:void
function ut:void

execute as @e[tag=fake_dog] at @s run function ut:move/dog/remove_fake