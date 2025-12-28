#By Nebulirion

execute if score -size border matches 40.. run particle dust{color:[1.0,0.0,0.0],scale:1.6} ^1 ^1 ^ 0 0 0 0 1 force @s[scores={Q=3..}]
execute if score -size border matches 80.. run particle dust{color:[1.0,0.0,0.0],scale:1.3} ^2 ^1 ^ 0 0 0 0 1 normal @s[scores={Q=3..}]
execute if score -size border matches 160.. run particle dust{color:[1.0,0.0,0.0],scale:1.0} ^3 ^1 ^ 0 0 0 0 1 normal @s[scores={Q=3..}]