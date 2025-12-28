#By Nebulirion

scoreboard players set -nosound store 1
scoreboard players set -buffedinfobullet store 1
scoreboard players operation -temp prj_speed = @s prj_speed

scoreboard players operation @s prj_speed *= 3 const
scoreboard players operation @s prj_speed /= 2 const
execute anchored eyes run function ut:move/info_bullet/cast

scoreboard players operation @s prj_speed *= 4 const
scoreboard players operation @s prj_speed /= 3 const
execute anchored eyes run function ut:move/info_bullet/cast

scoreboard players operation @s prj_speed = -temp prj_speed
scoreboard players set -buffedinfobullet store 0
scoreboard players set -nosound store 0