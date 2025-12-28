
summon minecraft:armor_stand ^ ^ ^ {Tags:[summon,move,spc,ani_soul,soul_animation],Marker:1b,Small:1b,ArmorItems:[{},{},{id:"minecraft:stone",count:1b},{}],Pose:{Head:[0f,0f,0f]},CustomName:'{"translate":"boss.soul.effect"}',Glowing:0b}

data modify entity @e[tag=summon,limit=1] ArmorItems[3] set from entity @s Item
tag @e[tag=summon] remove summon

kill @s