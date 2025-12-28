#By Nebulirion

execute if entity @s[tag=trident_blue] run particle block{block_state:light_blue_concrete} ~ ~1 ~ 0.05 0 0.05 0.1 30 normal @a[scores={Q=2..}] 
execute if entity @s[tag=trident_orange] run particle block{block_state:orange_concrete} ~ ~1 ~ 0.05 0 0.05 0.1 30 normal @a[scores={Q=2..}] 

function ut:move/hit_list/register

data merge entity @s {CustomName:'{"translate":"chr.asgore.chn"}'}