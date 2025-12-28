#hihi this is neb
#my fav.number is 27

scoreboard players set @s ray_distance -625

scoreboard players set @s unloadtime 8

execute as @a[tag=ray_user] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 1.75
#####display name
data modify storage hp Skull.temp set value ["LanDeQuMing","qwqxiao_xiaoqwq","NaKeNEX","sg_cat","Puffer","XFLy","WDkook","Mu_duo","spark2333","Toilet_Paper","YUANJUN233","Yoseyooo","hei_O"]
###
tellraw @s {"translate":"cre.knights", "color": "gold", "bold": true}
tellraw @s {"storage": "hp","nbt": "Skull.temp[]", "interpret": false}
#####