###MISS PASSIVE
scoreboard players operation #stop pid = @s pid
execute if entity @s[tag=!decoration_prj] as @a[tag=playing,tag=passive_undyne] if score @s pid = #stop pid run function ut:move/passive/undyne/trigger