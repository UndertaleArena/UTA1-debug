#By Nebulirion

execute store result score #rot store run data get entity @s Rotation[0]
execute if score #rot store matches ..-1 run scoreboard players add #rot store 360
execute if score #rot store matches 360.. run scoreboard players remove #rot store 360

execute if score #rot store matches 0..19 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[9f,0f]}
execute if score #rot store matches 20..39 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[29f,0f]}
execute if score #rot store matches 40..59 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[49f,0f]}
execute if score #rot store matches 60..79 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[69f,0f]}
execute if score #rot store matches 80..99 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[89f,0f]}
execute if score #rot store matches 100..119 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[109f,0f]}
execute if score #rot store matches 120..139 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[129f,0f]}
execute if score #rot store matches 140..159 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[149f,0f]}
execute if score #rot store matches 160..179 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[169f,0f]}
execute if score #rot store matches 180..199 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[189f,0f]}
execute if score #rot store matches 200..219 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[209f,0f]}
execute if score #rot store matches 220..239 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[229f,0f]}
execute if score #rot store matches 240..259 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[249f,0f]}
execute if score #rot store matches 260..279 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[269f,0f]}
execute if score #rot store matches 280..299 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[289f,0f]}
execute if score #rot store matches 300..319 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[309f,0f]}
execute if score #rot store matches 320..339 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[329f,0f]}
execute if score #rot store matches 340..359 run summon bat ~ ~ ~ {Tags:["summon"],Rotation:[349f,0f]}