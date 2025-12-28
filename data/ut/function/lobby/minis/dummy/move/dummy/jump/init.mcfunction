#Originally made by Nebulirion, edited by SY91419

#position store
execute store result score @s x_pos run data get entity @s Pos[0] 100
execute store result score @s y_pos run data get entity @s Pos[1] 100
execute store result score @s z_pos run data get entity @s Pos[2] 100

#position lock
setblock ~ ~ ~ red_wool replace

#type score change
scoreboard players set @s life2 1


#block change
fill ~ ~9 ~ ~ ~9 ~ glass destroy
execute align xyz run summon falling_block ~.5 ~9 ~.5 {BlockState:{Name:"magenta_terracotta"},Time:1}

#entity change
data modify entity @s OnGround set value 0b