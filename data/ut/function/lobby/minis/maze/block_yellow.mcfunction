#By Nebulirion

#Yellow tiles force the protagonist back to the last tile they stepped on

playsound minecraft:entity.spider.ambient player @s ~ ~ ~ .6 1.5
playsound minecraft:item.spyglass.use player @s ~ ~ ~ 2 1.2

execute align xyz run particle enchanted_hit ~.1 ~.4 ~.5 0 0 .25 0.02 3 force @s[scores={Q=2..}]
execute align xyz run particle enchanted_hit ~.5 ~.4 ~.1 .25 0 0 0.02 3 force @s[scores={Q=2..}]
execute align xyz run particle enchanted_hit ~.9 ~.4 ~.5 0 0 .25 0.02 3 force @s[scores={Q=2..}]
execute align xyz run particle enchanted_hit ~.5 ~.4 ~.9 .25 0 0 0.02 3 force @s[scores={Q=2..}]

function ut:lobby/minis/maze/goback