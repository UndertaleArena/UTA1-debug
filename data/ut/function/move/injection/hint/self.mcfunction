# origin by Nebulirion, edited by SY91419

# particle self
particle dust{color:[0,1,0],scale:1} ~ ~1 ~ .3 .7 .3 0 3 force @s

# title self
execute if score @s title_timer matches 0 run title @s subtitle {selector:"@s"}