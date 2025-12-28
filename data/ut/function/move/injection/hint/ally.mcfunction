# origin by Nebulirion, edited by SY91419

# particle
particle dust{color:[0,1,0],scale:1} ~ ~1 ~ .3 .7 .3 0 3 force @a[tag=tmp.inject_user,limit=1]
# title
execute if score @a[tag=tmp.inject_user,limit=1] title_timer matches 0 run title @a[tag=tmp.inject_user,limit=1] subtitle {selector:"@s"}