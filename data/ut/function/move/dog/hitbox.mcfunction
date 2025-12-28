#By Nebulirion

execute as @a[tag=playing,tag=!untargetable,tag=!respawning,tag=!dog_owner] if score @s dog_timer matches ..0 positioned ~-.5 ~-.5 ~-.5 if entity @s[dx=0,dy=0,dz=0] run tag @s add dog_hitbox

#particle end_rod ~.5 ~.5 ~.5 
#particle end_rod ~.5 ~.5 ~-.5 
#particle end_rod ~.5 ~-.5 ~.5 
#particle end_rod ~.5 ~-.5 ~-.5 
#particle end_rod ~-.5 ~.5 ~.5 
#particle end_rod ~-.5 ~.5 ~-.5 
#particle end_rod ~-.5 ~-.5 ~.5 
#particle end_rod ~-.5 ~-.5 ~-.5 

tag @p[tag=dog_hitbox] add dog_capturer
execute at @a[tag=dog_capturer,limit=1] run function ut:move/dog/capture
tag @a remove dog_hitbox