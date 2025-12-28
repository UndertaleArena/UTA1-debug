#By Nebulirion

summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.sans"}',data:{n:1}}
summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.papyrus"}',data:{n:2}}
summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.undyne"}',data:{n:3}}
summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.frisk"}',data:{n:4}}
summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.flowey"}',data:{n:5}}
summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.muffet"}',data:{n:7}}
summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.chara"}',data:{n:8}}
summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.toriel"}',data:{n:9}}
summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.asgore"}',data:{n:10}}
summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.asriel"}',data:{n:11}}
summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.alphys"}',data:{n:13}}
summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.napstablook"}',data:{n:14}}
summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.maddummy"}',data:{n:15}}

#METTATON
execute unless score -tobying store matches 1 unless score -truerandom store >= -exchance store run summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.mettaton"}',data:{n:6}}
execute unless score -tobying store matches 1 if score -truerandom store >= -exchance store run summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.mettatonex"}',data:{n:16}}
execute if score -tobying store matches 1 run summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.mettaton"}',data:{n:6}}
execute if score -tobying store matches 1 run summon marker ~ ~ ~ {Tags:[random_c],CustomName:'{"translate":"chr.mettatonex"}',data:{n:16}}

execute unless score -truerandom store matches 1 run tag @e[tag=random_c,limit=1,sort=random] add thechosenone
execute if score -truerandom store matches 1 run summon marker ~ ~ ~ {Tags:[random_c,x,thechosenone],CustomName:'{"translate":"chr.tobyfox"}'}

execute if entity @e[tag=thechosenone,tag=!x] run function ut:choose/random_chr_follow
execute if entity @e[tag=thechosenone,tag=x] run tag @s add true_random

tag @s add tobying
tellraw @a[tag=tobying] ["",{"translate":"pfx.info"},{"translate":"cht.chr0","with":[{"selector":"@e[tag=thechosenone]","color":"yellow"}]}]
tag @s remove tobying

kill @e[tag=random_c]

execute if entity @s[tag=true_random] run function ut:choose/true_random