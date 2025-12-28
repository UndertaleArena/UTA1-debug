#By Nebulirion

execute store result score #rot store run data get entity @s Rotation[0]
execute if score #rot store matches ..-1 run scoreboard players add #rot store 360
execute if score #rot store matches 360.. run scoreboard players remove #rot store 360

execute if score #rot store matches 0..19 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[9f,-90f],IsBaby:1b}
execute if score #rot store matches 20..39 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[29f,-90f],IsBaby:1b}
execute if score #rot store matches 40..59 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[49f,-90f],IsBaby:1b}
execute if score #rot store matches 60..79 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[69f,-90f],IsBaby:1b}
execute if score #rot store matches 80..99 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[89f,-90f],IsBaby:1b}
execute if score #rot store matches 100..119 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[109f,-90f],IsBaby:1b}
execute if score #rot store matches 120..139 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[129f,-90f],IsBaby:1b}
execute if score #rot store matches 140..159 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[149f,-90f],IsBaby:1b}
execute if score #rot store matches 160..179 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[169f,-90f],IsBaby:1b}
execute if score #rot store matches 180..199 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[189f,-90f],IsBaby:1b}
execute if score #rot store matches 200..219 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[209f,-90f],IsBaby:1b}
execute if score #rot store matches 220..239 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[229f,-90f],IsBaby:1b}
execute if score #rot store matches 240..259 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[249f,-90f],IsBaby:1b}
execute if score #rot store matches 260..279 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[269f,-90f],IsBaby:1b}
execute if score #rot store matches 280..299 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[289f,-90f],IsBaby:1b}
execute if score #rot store matches 300..319 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[309f,-90f],IsBaby:1b}
execute if score #rot store matches 320..339 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[329f,-90f],IsBaby:1b}
execute if score #rot store matches 340..359 run summon husk ~ ~ ~ {Tags:["summon"],Rotation:[349f,-90f],IsBaby:1b}