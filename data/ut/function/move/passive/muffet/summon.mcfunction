#By ANTHINY609

scoreboard players set #muffet_spider_pid_pass pid 0
scoreboard players operation #muffet_spider pid = @s pid
execute as @e[tag=passive_muffet_shield,type=item_display] if score @s pid = #muffet_spider pid run scoreboard players set #muffet_spider_pid_pass pid 1
execute if score #muffet_spider_pid_pass pid matches 0 run summon item_display ~ ~ ~ {Tags:["passive_muffet_shield","no_passive","summon"],teleport_duration:2s,item:{id:spider_eye,count:1,components:{item_model:"minecraft:muffet_spider_shield"}},NoGravity:true,transformation:{scale:[0.5f,0.5f,0.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

scoreboard players operation @e[tag=passive_muffet_shield,tag=summon,type=item_display] pid = @s pid

tag @e[tag=passive_muffet_shield,tag=summon,type=item_display] remove summon