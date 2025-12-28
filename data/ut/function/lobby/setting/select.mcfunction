#By Nebulirion

scoreboard players set @a[tag=ray_user,limit=1] unloadtime 10

execute at @a[tag=ray_user] run playsound minecraft:block.note_block.pling player @a[tag=ray_user] ~ ~ ~ 1 2

execute if entity @s[tag=player_settings] as @a[tag=ray_user] run function ut:lobby/setting/player/main

execute if entity @s[tag=my_stats] as @a[tag=ray_user] run function ut:stats/display/main
execute if entity @s[tag=spectator] as @a[tag=ray_user] run function ut:lobby/setting/spectator_toggle

execute if entity @s[tag=setting_start] as @a[tag=ray_user] run function ut:lobby/setting/start_check

execute if entity @s[tag=team_add] as @a[tag=ray_user] run function ut:lobby/setting/team_add
execute if entity @s[tag=team_remove] as @a[tag=ray_user] run function ut:lobby/setting/team_remove

execute if entity @s[tag=allow_join] as @a[tag=ray_user] run function ut:lobby/setting/allow_join
execute if entity @s[tag=permission_tut] as @a[tag=ray_user] run function ut:lobby/setting/permission_tut
execute if entity @s[tag=permission_cre] as @a[tag=ray_user] run function ut:lobby/setting/permission_cre
execute if entity @s[tag=hq_parkour] as @a[tag=ray_user] run function ut:lobby/setting/hq_parkour
execute if entity @s[tag=maze_rule] as @a[tag=ray_user] run function ut:lobby/minis/maze/info

execute if entity @s[tag=permission_mngf] as @a[tag=ray_user] run function ut:lobby/setting/permission_mngf
execute if entity @s[tag=permission_mngd] as @a[tag=ray_user] run function ut:lobby/setting/permission_mngd
execute if entity @s[tag=permission_mngp] as @a[tag=ray_user] run function ut:lobby/setting/permission_mngp
execute if entity @s[tag=permission_mngm] as @a[tag=ray_user] run function ut:lobby/setting/permission_mngm

execute if entity @s[tag=unlock_mngf] as @a[tag=ray_user] run function ut:lobby/setting/permission_mngf
execute if entity @s[tag=unlock_mngd] as @a[tag=ray_user] run function ut:lobby/setting/permission_mngd
execute if entity @s[tag=unlock_mngp] as @a[tag=ray_user] run function ut:lobby/setting/permission_mngp
execute if entity @s[tag=unlock_mngm] as @a[tag=ray_user] run function ut:lobby/setting/permission_mngm

execute if entity @s[tag=experiment_void] as @a[tag=ray_user] run function ut:lobby/setting/experiment_void
execute if entity @s[tag=experiment_soul] as @a[tag=ray_user] run function ut:lobby/setting/experiment_soul

function ut:lobby/setting/check