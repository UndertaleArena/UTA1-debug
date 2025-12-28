#By Nebulirion

data merge entity @s {CustomName:'{"translate":"chr.maddummy","color":"yellow","bold":true}'}
scoreboard players set @s chr 15
function ut:choose/storage
data modify entity @s ShowArms set value 1b
item replace entity @s weapon.offhand with carrot

tag @s remove surprise_select
tag @s add maddummy_select
tag @s add default_select

effect give @a[tag=ray_user,limit=1] slowness 1 27 true
playsound minecraft:item.trident.thunder player @a[tag=ray_user,limit=1] ~ ~ ~ 1 1.6 1