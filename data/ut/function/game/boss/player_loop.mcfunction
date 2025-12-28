#By Nebulirion

###Status
#effect give @s glowing infinite 1 true
scoreboard players set @s hpregen 0
#mp
#scoreboard players remove @s[scores={mpcooldown=1..}] mpcooldown 1
#execute unless score @s mpcooldown matches 1.. if score @s mp < @s mpmax run function ut:player/mp/regenerate
#cd
#scoreboard players remove @s[scores={cdcooldown=1..}] cdcooldown 1
#execute unless score @s cdcooldown matches 1.. if score @s cd < @s cdmax run function ut:player/cd/regenerate
