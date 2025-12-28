#By Nebulirion

function ut:move/jumppad/use
playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 0.8

execute align xyz run summon minecraft:armor_stand ~.5 ~1 ~.5 {Tags:[jumppad_as,summon,move,spc,stickonhit],Motion:[1.5d,1.0d,0.0d],Invisible:1b}

scoreboard players operation @e[tag=summon,limit=1] sid = @s pid
tag @e[tag=summon,limit=1,type=armor_stand] remove summon