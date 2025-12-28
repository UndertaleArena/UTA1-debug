#By Nebulirion

summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Marker:0b,Tags:[not_for_spc,lobby_as,active,ray_target,ray_team,summon],Invisible:0b,Invulnerable:1b,NoGravity:1b,DisabledSlots:3620671}
execute store result score @e[tag=summon,limit=1] y_pos run data get entity @e[tag=summon,limit=1] Pos[1]