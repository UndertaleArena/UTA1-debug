# origin by Nebulirion, edited by SY91419

# pile particle
particle dust{color:[0,1,0],scale:1} ~ ~1.8 ~ .3 .3 .3 0 3 force @a[tag=tmp.inject_user,limit=1]
# find reviver
execute if score @a[tag=tmp.inject_user,limit=1] title_timer matches 0 run function ut:move/injection/hint/title/reviver