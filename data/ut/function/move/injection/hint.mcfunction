#By Nebulirion

# check target
execute unless score @s shift matches 1.. run function ut:move/injection/hint/target/main
# title setup (if exists)
execute if score @s title_timer matches 0 run function ut:move/injection/hint/title/setup

# find target
## has target
tag @s add tmp.inject_user
execute as @n[tag=inject_target,limit=1] at @s run function ut:move/injection/hint/target
tag @s remove tmp.inject_user
## have no target, do self use
execute unless entity @e[tag=inject_target] run function ut:move/injection/hint/self

# remove redundant tag
execute if entity @s[tag=!inject_rc] run tag @e remove inject_target