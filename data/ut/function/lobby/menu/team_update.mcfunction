#By Nebulirion

data modify block 255 2 255 front_text.messages[1] set value '{"translate":"las.set.pl","with":[{"score":{"name":"PlayerLimit","objective":"info"}}]}'
data modify entity @e[tag=set_pl,limit=1] CustomName set from block 255 2 255 front_text.messages[1]
data modify block 255 2 255 front_text.messages[1] set value '{"translate":"las.set.tl","with":[{"score":{"name":"TeamLimit","objective":"info"}}]}'
data modify entity @e[tag=set_tl,limit=1] CustomName set from block 255 2 255 front_text.messages[1]