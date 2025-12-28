#hi

tag @s remove credit_tbcas

execute if entity @s[nbt={Small:1b}] run summon armor_stand ~ ~-149 ~ {Tags:[summon,credit_as,stationed,creator_as],NoGravity:1b,ShowArms:1b,Rotation:[-90.0f,0.0f],Small:1b,DisabledSlots:3620671}
execute unless entity @s[nbt={Small:1b}] run summon armor_stand ~ ~-149 ~ {Tags:[summon,credit_as,stationed,creator_as],NoGravity:1b,ShowArms:1b,Rotation:[-90.0f,0.0f],DisabledSlots:3620671}
data modify entity @e[tag=summon,limit=1] ArmorItems set from entity @s ArmorItems
data modify entity @e[tag=summon,limit=1] CustomName set from entity @s CustomName
#data modify entity @e[tag=summon,limit=1] Tags append from entity @s Tags

execute if entity @s[tag=sy_as] run tag @e[tag=summon,limit=1,type=armor_stand] add sy_as
execute if entity @s[tag=neb_as] run tag @e[tag=summon,limit=1,type=armor_stand] add neb_as
execute if entity @s[tag=ak_as] run tag @e[tag=summon,limit=1,type=armor_stand] add ak_as
execute if entity @s[tag=blue_as] run tag @e[tag=summon,limit=1,type=armor_stand] add blue_as

tag @e[tag=summon,limit=1,type=armor_stand] remove summon
#tp @s ~ ~ ~ 90 ~

playsound entity.chicken.egg player @a ~ ~-149 ~ 1.5 1.2
particle cloud ~ ~-148 ~ 0.2 0.3 0.2 0.04 10 normal