#By Nebulirion

#particle effect
##particle strong
particle dust{color:[0.5,0.0,1.0],scale:1} ~ ~.8 ~2.4 .9 1 0 0 12 force @s[scores={Q=2..},tag=!delete_p]
particle dust{color:[0.5,0.0,1.0],scale:1} ~ ~.8 ~-2.4 .9 1 0 0 12 force @s[scores={Q=2..},tag=!delete_p]
particle dust{color:[0.5,0.0,1.0],scale:1} ~2.4 ~.8 ~ 0 1 .9 0 12 force @s[scores={Q=2..},tag=!delete_p]
particle dust{color:[0.5,0.0,1.0],scale:1} ~-2.4 ~.8 ~ 0 1 .9 0 12 force @s[scores={Q=2..},tag=!delete_p]
#
particle dust{color:[0.5,0.0,1.0],scale:1} ~ ~.2 ~2.4 .9 0 0 0 12 force @s[scores={Q=1..}]
particle dust{color:[0.5,0.0,1.0],scale:1} ~ ~.2 ~-2.4 .9 0 0 0 12 force @s[scores={Q=1..}]
particle dust{color:[0.5,0.0,1.0],scale:1} ~2.4 ~.2 ~ 0 0 .9 0 12 force @s[scores={Q=1..}]
particle dust{color:[0.5,0.0,1.0],scale:1} ~-2.4 ~.2 ~ 0 0 .9 0 12 force @s[scores={Q=1..}]
##particle weak, still need some check, not rly look good :L
particle dust{color:[0.5,0.0,1.0],scale:1.5} ~ ~ ~ 0 1 0 0 6 force @s[scores={Q=..0}]

#hmm this not good
#summon area_effect_cloud ~ ~ ~ {Duration:2,Radius:2.5,Particle:"dust 1 0 0 1"}

#sound effect
execute align xz positioned ~-2 ~ ~-2 if entity @s[dx=4,dy=4,dz=4,tag=!untargetable,tag=playing] at @s run playsound block.note_block.pling player @s ~ ~ ~ 2 1.8