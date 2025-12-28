#By Nebulirion

tag @s add atker
scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players operation #damage damage = @s damage
execute positioned ~-2 ~ ~-2 as @a[dx=3,dy=1,dz=3,tag=playing,tag=!untargetable,tag=!effect_immune] unless score @s stun_timer matches 16.. unless score @s tid = #atker tid run function ut:move/king/hitcheck
tag @s remove atker

#particle dust{color:[1.0,0.78,0.063],scale:1} ^ ^.2 ^.3 .5 0 .5 1 8
particle dust{color:[1.0,0.984,0.063],scale:1} ^1 ^.2 ^ .5 0 .5 1 8 normal @a[scores={Q=3..}]
particle dust{color:[1.0,0.984,0.063],scale:1} ^-1 ^.2 ^ .5 0 .5 1 8 normal @a[scores={Q=3..}]
#particle block{block_state:stone} ^ ^ ^ 2 0 2 0 10

tp @s ~ ~ ~ ~ ~-15
execute unless score @s life matches 5.. rotated ~ 0 run tp @s ^ ^ ^.8

execute at @s unless block ~ ~ ~ #ut:trans run tp @s ~ ~1 ~
execute at @s if block ~ ~ ~ #ut:trans if block ~ ~-1 ~ #ut:trans run tp @s ~ ~-1 ~

execute at @s unless block ~ ~ ~ #ut:trans positioned ^ ^ ^-1 run scoreboard players set @s life 5
execute at @s if block ~ ~-1 ~ #ut:trans positioned ^ ^ ^-1 run scoreboard players set @s life 5

execute if score @s life matches 4.. rotated ~ 0 positioned ^ ^ ^.8 run function ut:move/king/stop