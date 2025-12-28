#By Nebulirion

data modify storage gamestat Entry set value {Pid:0,Chr:0,Time:0,Stats:[0,0,0,0,0]}

execute store result storage gamestat Entry.Pid int 1 run scoreboard players get @s pid 
execute store result storage gamestat Entry.Chr int 1 run scoreboard players get @s last_chr_ingame 
execute store result storage gamestat Entry.Time int 1 run scoreboard players get @s st_gametime 

execute store result storage gamestat Entry.Stats[0] int 1 run scoreboard players get @s st_ckillc
execute store result storage gamestat Entry.Stats[1] int 1 run scoreboard players get @s st_csparec
execute store result storage gamestat Entry.Stats[2] int 1 run scoreboard players get @s st_cdeathc
execute store result storage gamestat Entry.Stats[3] int 1 run scoreboard players get @s st_cdmg
execute store result storage gamestat Entry.Stats[4] int 1 run scoreboard players get @s st_cdtuse

scoreboard players reset @s st_gametime

scoreboard players reset @s st_ckillc
scoreboard players reset @s st_csparec
scoreboard players reset @s st_cdeathc
scoreboard players reset @s st_cdmg
scoreboard players reset @s st_cdtuse

data modify storage gamestat Main append from storage gamestat Entry