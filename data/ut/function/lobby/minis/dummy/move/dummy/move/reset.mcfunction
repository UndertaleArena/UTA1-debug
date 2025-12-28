#Originally made by Nebulirion, edited by SY91419

#disappear
item replace entity @s armor.head with air
tp @s ~ ~-10 ~

#remove target
execute as @e[tag=dummy_target,type=marker] if score @s sid = @e[type=armor_stand,tag=dummy_walker,limit=1] sid run kill @s