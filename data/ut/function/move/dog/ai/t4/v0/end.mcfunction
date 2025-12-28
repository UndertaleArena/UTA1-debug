#By Nebulirion

playsound minecraft:entity.evoker.prepare_wololo player @a ~ ~ ~ 2 1.78

scoreboard players remove @s dogaic 1

particle cloud ~ ~.4 ~ 0.7 0.7 0.7 0.1 100 normal @a[scores={Q=2..}]
tp @s @e[tag=arena_sp,limit=1,scores={maplock=1}]

summon marker ^ ^ ^.2 {Tags:[shadowclone]}
summon marker ^ ^ ^-.2 {Tags:[shadowclone]}
summon marker ^-.2 ^ ^ {Tags:[shadowclone]}
summon marker ^.2 ^ ^ {Tags:[shadowclone]}

execute as @e[tag=shadowclone,type=marker] facing ~ ~ ~ positioned as @s rotated ~180 0 run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=!fake_dog] run tag @e[type=marker,tag=shadowclone,limit=1,sort=random] add realdoggo
scoreboard players set -narutoflag store 1
execute as @e[tag=shadowclone,tag=realdoggo] at @s run function ut:move/dog/cast
execute as @e[tag=shadowclone,tag=!realdoggo] at @s run function ut:move/dog/cast_fake
scoreboard players set -narutoflag store 0

kill @e[tag=shadowclone]

scoreboard players operation #this aid = @s aid
execute as @e[tag=dog_model] if score @s aid = #this aid run function ut:void
function ut:void
