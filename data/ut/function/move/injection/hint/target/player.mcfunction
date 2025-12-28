execute as @a[tag=playing,tag=!untargetable,tag=!respawning,distance=..5] unless score @s pid = #user pid at @s run function ut:move/injection/hint/target/pcheck

kill @s