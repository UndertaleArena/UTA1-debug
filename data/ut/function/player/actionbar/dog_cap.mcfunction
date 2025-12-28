#By Nebulirion
#By Nebulirion

scoreboard players operation #this tid = @s tid
scoreboard players set #sameteam store 0
execute as @a[limit=1,tag=dog_owner] if score @s tid = #this tid run scoreboard players set #sameteam store 1

execute if entity @s[tag=dog_owner] run function ut:player/actionbar/dog_cap_s
execute unless entity @s[tag=dog_owner] run function ut:player/actionbar/dog_cap_o
