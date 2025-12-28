#By Nebulirion

playsound block.stone.place player @a ~ ~ ~ 1 1

summon minecraft:marker ~ ~ ~ {Tags:[dog_bridge,move,spc,summon]}

scoreboard players operation @e[tag=summon] dog = #canBridge dog

setblock ~ ~ ~ infested_chiseled_stone_bricks

#execute align xyz run summon minecraft:shulker ~ ~ ~ {Tags:[bridge,move,prj_sp,summon],NoGravity:1b,NoAI:1b,Silent:1b,active_effects:[{id:"minecraft:invisibility",duration:2222221,show_particles:0b,amplifier:0b}],Invulnerable:1b}
#execute align xyz run summon falling_block ~.5 ~ ~.5 {Tags:[bridge,move,prj_sp,summon],NoGravity:1b,BlockState:{Name:"oak_planks"},Time:1,Invulnerable:1b}

scoreboard players set @e[tag=summon] lifetime 100
tag @e[tag=summon] remove summon
