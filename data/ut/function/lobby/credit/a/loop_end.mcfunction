#By Nebulirion

data merge entity @s {CustomNameVisible:0b}

kill @s[team=!touched,tag=cname_las]

tag @s remove moving
tag @s remove cname_cur
tag @s remove cname_str
tag @s remove cname_boc
tag @s remove cname_las
tag @s add waiting