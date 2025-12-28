#By Nebulirion

execute unless block 250 ~ ~ stone_button if block ~ ~ ~ green_concrete run setblock ~ ~ ~ black_concrete
execute unless block 250 ~ ~ stone_button if block ~ ~ ~ green_terracotta if block 272 ~ ~ gray_stained_glass if block ~ 98 ~ red_concrete run setblock ~ ~ ~ gray_stained_glass
execute unless block 250 ~ ~ stone_button if block ~ ~ ~ green_terracotta if block 272 ~ ~ structure_void if block ~ 98 ~ red_concrete run setblock ~ ~ ~ structure_void
execute unless block 250 ~ ~ stone_button if block ~ ~ ~ green_terracotta run setblock ~ ~ ~ air
execute unless block 250 ~ ~ stone_button run function ut:lobby/root/reset_root