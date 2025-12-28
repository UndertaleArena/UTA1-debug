#by Nebulirion

playsound minecraft:block.note_block.snare player @s ~ ~ ~ 1 1.414

#score change
execute unless score @s shift matches 1.. run scoreboard players add @s passive_timer 1
execute if score @s shift matches 1.. run scoreboard players remove @s passive_timer 1

#score back
execute if score @s passive_timer matches 4.. run scoreboard players set @s passive_timer 1
execute if score @s passive_timer matches ..0 run scoreboard players set @s passive_timer 3