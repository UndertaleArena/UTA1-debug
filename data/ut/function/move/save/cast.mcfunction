#By Nebulirion

tp @s ~ ~ ~ ~ ~

scoreboard players operation @s sid = @a[tag=save_user,limit=1] pid
scoreboard players operation @s pid = @a[tag=save_user,limit=1] pid
scoreboard players operation @s tid = @a[tag=save_user,limit=1] tid

#LV
#scoreboard players operation @s lv = @a[tag=save_user,limit=1] lv
##HP
#scoreboard players operation @s hp = @a[tag=save_user,limit=1] hp
#scoreboard players operation @s hpmax = @a[tag=save_user,limit=1] hpmax
##WL
#scoreboard players operation @s will = @a[tag=save_user,limit=1] will
#scoreboard players operation @s willmax = @a[tag=save_user,limit=1] willmax
#scoreboard players operation @s will25 = @a[tag=save_user,limit=1] will25
##MP
#scoreboard players operation @s mp = @a[tag=save_user,limit=1] mp
#scoreboard players operation @s mpmax = @a[tag=save_user,limit=1] mpmax
##ML
#scoreboard players operation @s melee_cd = @a[tag=save_user,limit=1] melee_cd
#scoreboard players operation @s melee_cdmax = @a[tag=save_user,limit=1] melee_cdmax
##CD
#scoreboard players operation @s cd = @a[tag=save_user,limit=1] cd
#scoreboard players operation @s cdmax = @a[tag=save_user,limit=1] cdmax
##DT
#scoreboard players set @s dt 0
#scoreboard players operation @s dtmax = @a[tag=save_user,limit=1] dtmax

scoreboard players add #aid aid 1
scoreboard players operation @s aid = #aid aid
tag @s remove summon