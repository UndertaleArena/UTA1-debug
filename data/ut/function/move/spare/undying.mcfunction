#By Nebulirion

scoreboard players remove @s will 10
function ut:system/will_lost

tellraw @a[tag=spare_p,limit=1] ["",{"translate":"wrn.spare0"},{"selector":"@s"},{"translate":"wrn.spare3"}]
effect give @a[tag=spare_p,limit=1] minecraft:blindness 3 0 true
tellraw @a[tag=spare_p,limit=1] ["",{"translate":"wrn.spare2","color":"red"}]