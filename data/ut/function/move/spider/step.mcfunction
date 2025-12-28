#By Nebulirion

execute unless block ^ ^ ^.5 #ut:trans if block ^ ^.6 ^ #ut:trans run tp @s ^ ^.3 ^

execute if entity @s[distance=..0.1] if block ^ ^ ^.5 #ut:trans unless block ^ ^-0.3 ^.5 #ut:trans run function ut:move/spider/step_f
execute if entity @s[distance=..0.1] if block ^ ^ ^.5 #ut:trans unless block ^ ^-0.3 ^-.25 #ut:trans run function ut:move/spider/step_f

execute if entity @s[distance=..0.1] if block ^ ^ ^.5 #ut:trans if block ^ ^-.3 ^ #ut:trans run function ut:move/spider/step_down

execute if entity @s[distance=..0.1] if block ^ ^ ^.5 #ut:trans run function ut:move/spider/step_f

execute if block ~ ~-1 ~ end_gateway run scoreboard players set @s life 66666

scoreboard players remove @s life2 1