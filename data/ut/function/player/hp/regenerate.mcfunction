#By Nebulirion

execute if score @s will >= #hpLim will run scoreboard players add @s hpregen 1
execute if score @s shift matches 1 if predicate ut:effects/blue if score @s will >= #quickhealLim will run function ut:player/hp/quick_heal

execute if score @s hpregen matches 100.. run function ut:player/hp/heal