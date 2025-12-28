#By Nebulirion

execute store result score @s chr run data get entity @e[tag=thechosenone,limit=1] data.n
execute unless score -tobying store matches 1 run function ut:choose/storage

execute if score -tobying store matches 1 run scoreboard players operation -chr chr = @s chr
execute if score -tobying store matches 1 run function ut:init/storage_chr_load