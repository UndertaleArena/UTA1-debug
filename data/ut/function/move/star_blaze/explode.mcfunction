#By Nebulirion & Ds_Squid

scoreboard players operation #atker tid = @s tid
execute as @a[distance=..16,tag=playing,tag=!untargetable] unless score @s tid = #atker tid run tag @s add star_target

execute facing entity @p[tag=star_target] feet rotated ~ 0 run function ut:move/star_blaze/explode_suc

execute unless entity @a[tag=star_target] run function ut:move/star_blaze/explode_suc

tag @a remove star_target