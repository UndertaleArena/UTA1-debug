#By Nebulirion

execute if entity @s[tag=!undying,tag=!amalgamate] run function ut:move/injection/self_use
execute if entity @s[tag=undying] unless score @s hp matches 0 run function ut:move/injection/self_use

###ADV
execute if entity @s[tag=undying] if score @s hp matches 0 unless score @s tid = #atker tid as @a[tag=playing] if score @s pid = #atker pid if score @s chr matches 13 if score -Enabled stat matches 1 run function ut:stats/advancement_secret
execute if entity @s[tag=amalgamate] unless score @s tid = #atker tid as @a[tag=playing] if score @s pid = #atker pid if score @s chr matches 13 if score -Enabled stat matches 1 run function ut:stats/advancement_secret

###MELTTT
execute if entity @s[tag=undying] unless score @s tid = #atker tid run scoreboard players operation @s kid = #atker pid
execute if entity @s[tag=amalgamate] unless score @s tid = #atker tid run scoreboard players operation @s kid = #atker pid
execute if entity @s[tag=undying] if score @s hp matches 0 run scoreboard players set @s dt 0
execute if entity @s[tag=amalgamate] run function ut:player/hp/zero