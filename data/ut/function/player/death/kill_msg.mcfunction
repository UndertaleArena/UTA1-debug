#By Nebulirion

execute if entity @s[tag=void,tag=!real_void] if score voidProtection gamerule matches 1 run function ut:player/death/kill_msg_voidprotect1

###regular - self,killer,bullet
execute if entity @a[tag=atker_p] if entity @e[tag=atker] run tellraw @a ["",{"translate":"pfx.ingame"},{"translate":"cht.dth0","with": [{"selector":"@s"},{"selector":"@a[tag=atker_p]"},{"selector":"@e[tag=atker]"}]}]

###no atker entity - self,killer
execute if entity @a[tag=atker_p] unless entity @e[tag=atker] run tellraw @a ["",{"translate":"pfx.ingame"},{"translate":"cht.dth1","with": [{"selector":"@s"},{"selector":"@a[tag=atker_p]"}]}]

###with atker entity - self,bullet
execute unless entity @a[tag=atker_p] if entity @e[tag=atker] run tellraw @a ["",{"translate":"pfx.ingame"},{"translate":"cht.dth2","with": [{"selector":"@s"},{"selector":"@e[tag=atker]"}]}]

###die with killer - self,killer
execute unless entity @a[tag=atker_p] unless entity @e[tag=atker] if entity @a[tag=killer_p] unless entity @s[tag=void] unless entity @s[tag=border_damage] run tellraw @a ["",{"translate":"pfx.ingame"},{"translate":"cht.dth3","with": [{"selector":"@s"},{"selector":"@a[tag=killer_p]"}]}]

###die without killer - self
execute unless entity @a[tag=killer_p] unless entity @a[tag=atker_p] unless entity @e[tag=atker] unless entity @s[tag=void] unless entity @s[tag=border_damage] run tellraw @a ["",{"translate":"pfx.ingame"},{"translate":"cht.dth5","with": [{"selector":"@s"}]}]

###border with killer - self,killer
execute unless entity @a[tag=atker_p] unless entity @e[tag=atker] if entity @a[tag=killer_p] unless entity @s[tag=void] if entity @s[tag=border_damage] run tellraw @a ["",{"translate":"pfx.ingame"},{"translate":"cht.dth7","with": [{"selector":"@s"},{"selector":"@a[tag=killer_p]"}]}]

###border without killer - self
execute unless entity @a[tag=killer_p] unless entity @a[tag=atker_p] unless entity @e[tag=atker] unless entity @s[tag=void] if entity @s[tag=border_damage] run tellraw @a ["",{"translate":"pfx.ingame"},{"translate":"cht.dth8","with": [{"selector":"@s"}]}]

###void with killer - self,void,killer
execute unless entity @a[tag=atker_p] unless entity @e[tag=atker] if entity @a[tag=killer_p] if entity @s[tag=void] run tellraw @a ["",{"translate":"pfx.ingame"},{"translate":"cht.dth4","with": [{"selector":"@s"},{"selector":"@e[tag=arena_low,limit=1,scores={maplock=1}]"},{"selector":"@a[tag=killer_p]"}]}]

###void without killer - self,void
execute unless entity @a[tag=killer_p] unless entity @a[tag=atker_p] unless entity @e[tag=atker] if entity @s[tag=void] run tellraw @a ["",{"translate":"pfx.ingame"},{"translate":"cht.dth6","with": [{"selector":"@s"},{"selector":"@e[tag=arena_low,limit=1,scores={maplock=1}]"}]}]

execute if entity @s[tag=void,tag=!real_void] if score voidProtection gamerule matches 1 run function ut:player/death/kill_msg_voidprotect2