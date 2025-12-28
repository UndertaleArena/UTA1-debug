#By Nebulirion

scoreboard players set @a[tag=ray_user,limit=1] unloadtime 1

execute at @a[tag=ray_user] run playsound minecraft:block.note_block.pling player @a[tag=ray_user] ~ ~ ~ 1 2

#####
execute if entity @s[tag=set_mnpg1] unless score -page menu matches 1 at @e[tag=lobby_menupos,limit=1] positioned ~ ~-.5 ~ run function ut:lobby/menu/page1
execute if entity @s[tag=set_mnpg2] unless score -page menu matches 2 at @e[tag=lobby_menupos,limit=1] positioned ~ ~-1 ~ run function ut:lobby/menu/page2
execute if entity @s[tag=set_mnpg3] unless score -page menu matches 3 at @e[tag=lobby_menupos,limit=1] positioned ~ ~-.5 ~ run function ut:lobby/menu/page3
execute if entity @s[tag=set_mnpg4] unless score -page menu matches 4 at @e[tag=lobby_menupos,limit=1] positioned ~ ~-1 ~ run function ut:lobby/menu/page4
#####TEAM
execute if entity @s[tag=set_tladd] as @a[tag=ray_user] run function ut:lobby/menu/team_add
execute if entity @s[tag=set_tlrmv] as @a[tag=ray_user] run function ut:lobby/menu/team_remove
execute if entity @s[tag=set_pladd] as @a[tag=ray_user] run function ut:lobby/menu/player_add
execute if entity @s[tag=set_plrmv] as @a[tag=ray_user] run function ut:lobby/menu/player_remove
execute if entity @s[tag=team_random] as @a[tag=ray_user] run function ut:lobby/menu/team_random
execute if entity @s[tag=team_balance] as @a[tag=ray_user] run function ut:lobby/menu/team_balanced
#####MAP
execute if entity @s[tag=map_next] as @a[tag=ray_user] run function ut:lobby/map/next
execute if entity @s[tag=map_prev] as @a[tag=ray_user] run function ut:lobby/map/prev
execute if entity @s[tag=map_random] as @a[tag=ray_user] run function ut:lobby/map/random
#####GAMEMODE
execute if entity @s[tag=gm_next] as @a[tag=ray_user] run function ut:lobby/gamemode/next
execute if entity @s[tag=gm_prev] as @a[tag=ray_user] run function ut:lobby/gamemode/prev
execute if entity @s[tag=gm_info] as @a[tag=ray_user] run function ut:lobby/gamemode/info
#####GAMERULE
function ut:lobby/gamerule/select

function ut:lobby/menu/check