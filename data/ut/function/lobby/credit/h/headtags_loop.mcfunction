#hihi this is neb
#my fav.number is 27

#####display name
data remove storage hp Skull.temp2
execute if block ~ ~ ~ iron_block run data modify storage hp Skull.temp2 set value {"translate":"cre.testp","hover_event":{"action":"show_text","value":{"translate":"cre.testp.dsc"}}}
execute if block ~ ~ ~ gold_block run data modify storage hp Skull.temp2 set value {"translate":"cre.donatep","hover_event":{"action":"show_text","value":{"translate":"cre.donatep.dsc"}}}
execute if block ~ ~ ~ netherite_block run data modify storage hp Skull.temp2 set value {"translate":"cre.gtestp","hover_event":{"action":"show_text","value":{"translate":"cre.gtestp.dsc"}}}
execute if block ~ ~ ~ lapis_block run data modify storage hp Skull.temp2 set value {"translate":"cre.thanksp","hover_event":{"action":"show_text","value":{"translate":"cre.thanksp.dsc"}}}
execute if block ~ ~ ~ lime_concrete_powder run data modify storage hp Skull.temp2 set value {"translate":"cre.sp4","hover_event":{"action":"show_text","value":{"translate":"cre.sp4.dsc"}}}
execute if block ~ ~ ~ grass_block run data modify storage hp Skull.temp2 set value {"translate":"cre.sp1","hover_event":{"action":"show_text","value":{"translate":"cre.sp1.dsc"}}}
execute if block ~ ~ ~ orange_concrete_powder run data modify storage hp Skull.temp2 set value {"translate":"cre.sp2","hover_event":{"action":"show_text","value":{"translate":"cre.sp2.dsc"}}}
execute if block ~ ~ ~ blue_concrete_powder run data modify storage hp Skull.temp2 set value {"translate":"cre.techp","hover_event":{"action":"show_text","value":{"translate":"cre.techp.dsc"}}}
execute if block ~ ~ ~ red_concrete_powder run data modify storage hp Skull.temp2 set value {"translate":"cre.videop","hover_event":{"action":"show_text","value":{"translate":"cre.videop.dsc"}}}
execute if block ~ ~ ~ light_gray_concrete_powder run data modify storage hp Skull.temp2 set value {"translate":"cre.artistp","hover_event":{"action":"show_text","value":{"translate":"cre.artistp.dsc"}}}
execute if block ~ ~ ~ cyan_concrete_powder run data modify storage hp Skull.temp2 set value {"translate":"cre.hostp","hover_event":{"action":"show_text","value":{"translate":"cre.hostp.dsc"}}}
execute if block ~ ~ ~ light_blue_concrete_powder run data modify storage hp Skull.temp2 set value {"translate":"cre.translatep","hover_event":{"action":"show_text","value":{"translate":"cre.translatep.dsc"}}}
execute if block ~ ~ ~ emerald_block run data modify storage hp Skull.temp2 set value {"translate":"cre.sp7","hover_event":{"action":"show_text","value":{"translate":"cre.sp7.dsc"}}}
execute if block ~ ~ ~ carved_pumpkin run data modify storage hp Skull.temp2 set value {"translate":"cre.winp","hover_event":{"action":"show_text","value":{"translate":"cre.winp.dsc"}}}
execute if block ~ ~ ~ jack_o_lantern run data modify storage hp Skull.temp2 set value {"translate":"cre.champp","hover_event":{"action":"show_text","value":{"translate":"cre.champp.dsc"}}}
execute if block ~ ~ ~ white_concrete_powder run data modify storage hp Skull.temp2 set value {"translate":"cre.editorp","hover_event":{"action":"show_text","value":{"translate":"cre.editorp.dsc"}}}
execute if block ~ ~ ~ light_gray_concrete_powder run data modify storage hp Skull.temp2 set value {"translate":"cre.artistp","hover_event":{"action":"show_text","value":{"translate":"cre.artistp.dsc"}}}
execute if block ~ ~ ~ yellow_concrete_powder run data modify storage hp Skull.temp2 set value {"translate":"cre.sp3","hover_event":{"action":"show_text","value":{"translate":"cre.sp3.dsc"}}}
execute if block ~ ~ ~ mushroom_stem run data modify storage hp Skull.temp2 set value {"translate":"cre.sp6","hover_event":{"action":"show_text","value":{"translate":"cre.sp6.dsc"}}}
execute if block ~ ~ ~ green_concrete_powder run data modify storage hp Skull.temp2 set value {"translate":"cre.sp5","hover_event":{"action":"show_text","value":{"translate":"cre.sp5.dsc"}}}
execute if block ~ ~ ~ purple_concrete_powder run data modify storage hp Skull.temp2 set value {"translate":"cre.streamp","hover_event":{"action":"show_text","value":{"translate":"cre.streamp.dsc"}}}
execute if block ~ ~ ~ bricks run data modify storage hp Skull.temp2 set value {"translate":"cre.buildp","hover_event":{"action":"show_text","value":{"translate":"cre.buildp.dsc"}}}
execute if block ~ ~ ~ shroomlight run data modify storage hp Skull.temp2 set value {"translate":"cre.helperp","hover_event":{"action":"show_text","value":{"translate":"cre.helperp.dsc"}}}
execute if block ~ ~ ~ nether_bricks run data modify storage hp Skull.temp2 set value {"translate":"cre.gbuildp","hover_event":{"action":"show_text","value":{"translate":"cre.gbuildp.dsc"}}}

execute if data storage hp Skull.temp2 run data modify storage hp Skull.temp append from storage hp Skull.temp2 
execute if data storage hp Skull.temp2 positioned ~ ~1 ~ run function ut:lobby/credit/h/headtags_loop
#####