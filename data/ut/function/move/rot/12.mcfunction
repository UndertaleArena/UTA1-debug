#By Nebulirion

execute unless score #rot store matches -2147483648..2147483647 store result score #rot store run data get entity @s Rotation[0]
execute if score #rot store matches ..-1 run scoreboard players add #rot store 360
execute if score #rot store matches 360.. run scoreboard players remove #rot store 360

execute if score #rot store matches 0..29 run summon armor_stand ~ ~ ~ {Tags:["summon"],Rotation:[14f,0f]}
execute if score #rot store matches 30..59 run summon armor_stand ~ ~ ~ {Tags:["summon"],Rotation:[44f,0f]}
execute if score #rot store matches 60..89 run summon armor_stand ~ ~ ~ {Tags:["summon"],Rotation:[74f,0f]}
execute if score #rot store matches 90..119 run summon armor_stand ~ ~ ~ {Tags:["summon"],Rotation:[104f,0f]}
execute if score #rot store matches 120..149 run summon armor_stand ~ ~ ~ {Tags:["summon"],Rotation:[134f,0f]}
execute if score #rot store matches 150..179 run summon armor_stand ~ ~ ~ {Tags:["summon"],Rotation:[164f,0f]}
execute if score #rot store matches 180..209 run summon armor_stand ~ ~ ~ {Tags:["summon"],Rotation:[194f,0f]}
execute if score #rot store matches 210..239 run summon armor_stand ~ ~ ~ {Tags:["summon"],Rotation:[224f,0f]}
execute if score #rot store matches 240..269 run summon armor_stand ~ ~ ~ {Tags:["summon"],Rotation:[254f,0f]}
execute if score #rot store matches 270..299 run summon armor_stand ~ ~ ~ {Tags:["summon"],Rotation:[284f,0f]}
execute if score #rot store matches 300..329 run summon armor_stand ~ ~ ~ {Tags:["summon"],Rotation:[314f,0f]}
execute if score #rot store matches 330..359 run summon armor_stand ~ ~ ~ {Tags:["summon"],Rotation:[344f,0f]}
scoreboard players reset #rot store