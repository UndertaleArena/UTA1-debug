# find revive
scoreboard players operation #reviver pid = @s pid
execute as @a[tag=playing,tag=respawning] if score @s pid = #reviver pid run title @a[tag=tmp.inject_user,limit=1] subtitle [{"selector":"@s",color:"gray"}]
# {"translate":"as.dust"}