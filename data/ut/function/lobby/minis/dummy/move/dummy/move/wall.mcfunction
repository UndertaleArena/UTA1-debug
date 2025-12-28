#Originally made by Nebulirion, edited by SY91419

#tag removal
tag @s remove stuck

#move check
execute if block ^ ^ ^.5 #ut:trans if block ^ ^1 ^.5 #ut:trans unless block ^ ^-1 ^.5 #ut:trans run tp @e[type=armor_stand,tag=dummy_walker] ^ ^ ^.2 ~ 0

execute if block ^ ^ ^.5 #ut:trans if block ^ ^1 ^.5 #ut:trans if block ^ ^-1 ^.5 #ut:trans run tp @e[type=armor_stand,tag=dummy_walker] ^ ^-1 ^.2 ~ 0

execute unless block ^ ^ ^.5 #ut:trans if block ^ ^1 ^.5 #ut:trans run tp @e[type=armor_stand,tag=dummy_walker] ^ ^1 ^.2 ~ 0

#cannot move
execute unless block ^ ^ ^.5 #ut:trans unless block ^ ^1 ^.5 #ut:trans run tag @s add stuck