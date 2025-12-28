###Generated from Nebulagen made By Nebulirion
#04/15/2021, 14:55:19

scoreboard players operation -chr chr = @s chr
function ut:init/storage_chr_load

clear @s
execute store result score @s hpmax run data get storage ut:chrs Temp.HpMax
execute store result score @s mpmax run data get storage ut:chrs Temp.MpMax
execute store result score @s dtmax run data get storage ut:chrs Temp.DtMax
execute store result score @s speed run data get storage ut:chrs Temp.Speed
execute if score @s mpmax matches 1.. run scoreboard players set @s mlmax 20
execute if score @s mpmax matches 0 run scoreboard players set @s mlmax 30

summon item_frame 255 3 255 {Tags:[item_loader],UUID:[I;0,0,0,1],Fixed:1b}

data modify entity 0-0-0-0-1 Item set from storage ut:chrs Temp.HeadItem
item replace entity @s armor.head from entity 0-0-0-0-1 container.0
data modify entity 0-0-0-0-1 Item set from storage ut:chrs Temp.ChestItem
item replace entity @s armor.chest from entity 0-0-0-0-1 container.0
data modify entity 0-0-0-0-1 Item set from storage ut:chrs Temp.LegsItem
item replace entity @s armor.legs from entity 0-0-0-0-1 container.0
data modify entity 0-0-0-0-1 Item set from storage ut:chrs Temp.FeetItem
item replace entity @s armor.feet from entity 0-0-0-0-1 container.0
data modify entity 0-0-0-0-1 Item set from storage ut:chrs Temp.MpMove
execute if data storage ut:chrs Temp.MpMove run item replace entity @s container.0 from entity 0-0-0-0-1 container.0
data modify entity 0-0-0-0-1 Item set from storage ut:chrs Temp.CdMove
execute if data storage ut:chrs Temp.CdMove run item replace entity @s container.1 from entity 0-0-0-0-1 container.0
data modify entity 0-0-0-0-1 Item set from storage ut:chrs Temp.DtMove
execute if data storage ut:chrs Temp.DtMove run item replace entity @s container.2 from entity 0-0-0-0-1 container.0

execute if entity @s[type=player] run function ut:choose/common