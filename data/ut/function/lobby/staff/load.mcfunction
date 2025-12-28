#By Neb but it's actually SY and he's messageing Ds??? wtf is happening

setblock 284 146 1286 minecraft:lantern[hanging=true,waterlogged=false] destroy
setblock 280 146 1286 minecraft:lantern[hanging=true,waterlogged=false] destroy
setblock 277 146 1283 minecraft:lantern[hanging=true,waterlogged=false] destroy
setblock 273 145 1269 minecraft:lantern[hanging=true,waterlogged=false] destroy
setblock 279 144 1268 minecraft:lantern[hanging=true,waterlogged=false] destroy
setblock 277 146 1277 minecraft:lantern[hanging=true,waterlogged=false] destroy
setblock 284 146 1274 minecraft:lantern[hanging=true,waterlogged=false] destroy
setblock 263 145 1292 minecraft:lantern[hanging=true,waterlogged=false] destroy
setblock 263 144 1268 minecraft:lantern[hanging=true,waterlogged=false] destroy
setblock 280 142 1288 minecraft:lantern[hanging=false,waterlogged=false] destroy

setblock 274 141 1291 minecraft:shroomlight destroy
setblock 273 141 1291 minecraft:shroomlight destroy

fill 252 144 1290 252 142 1293 light[level=10,waterlogged=false] destroy

setblock 279 149 1276 minecraft:magenta_stained_glass destroy
setblock 284 147 1280 minecraft:magenta_stained_glass destroy
setblock 279 149 1284 minecraft:magenta_stained_glass destroy
setblock 272 144 1278 minecraft:magenta_stained_glass destroy
setblock 274 144 1280 minecraft:magenta_stained_glass destroy
setblock 272 144 1282 minecraft:magenta_stained_glass destroy

setblock 285 141 1268 minecraft:glowstone destroy
setblock 285 141 1269 minecraft:glowstone destroy

fill 282 148 1291 285 145 1291 minecraft:air destroy
fill 284 142 1273 281 146 1273 minecraft:air destroy

fill 282 144 1265 282 141 1263 minecraft:air destroy

setblock 251 141 1269 minecraft:shroomlight destroy
setblock 251 141 1271 minecraft:shroomlight destroy

setblock 270 144 1280 minecraft:magenta_stained_glass destroy
setblock 252 149 1280 minecraft:magenta_stained_glass destroy
setblock 256 149 1285 minecraft:magenta_stained_glass destroy
setblock 260 149 1286 minecraft:magenta_stained_glass destroy
setblock 263 149 1286 minecraft:magenta_stained_glass destroy
setblock 267 149 1286 minecraft:magenta_stained_glass destroy
setblock 269 149 1283 minecraft:magenta_stained_glass destroy
setblock 270 149 1280 minecraft:magenta_stained_glass destroy
setblock 269 149 1277 minecraft:magenta_stained_glass destroy
setblock 267 149 1274 minecraft:magenta_stained_glass destroy
setblock 263 149 1274 minecraft:magenta_stained_glass destroy
setblock 260 149 1274 minecraft:magenta_stained_glass destroy
setblock 256 149 1275 minecraft:magenta_stained_glass destroy

setblock 270 138 1276 minecraft:magenta_stained_glass destroy
setblock 266 138 1273 minecraft:magenta_stained_glass destroy
setblock 260 138 1273 minecraft:magenta_stained_glass destroy
setblock 255 138 1274 minecraft:magenta_stained_glass destroy
setblock 251 138 1278 minecraft:magenta_stained_glass destroy
setblock 251 138 1282 minecraft:magenta_stained_glass destroy
setblock 255 138 1286 minecraft:magenta_stained_glass destroy
setblock 260 138 1287 minecraft:magenta_stained_glass destroy
setblock 270 138 1284 minecraft:magenta_stained_glass destroy
setblock 266 138 1287 minecraft:magenta_stained_glass destroy

setblock 280 141 1289 minecraft:enchanting_table destroy

setblock 278 143 1280 minecraft:air destroy
setblock 278 142 1280 minecraft:air destroy
setblock 278 141 1280 minecraft:air destroy

setblock 268 143 1297 minecraft:soul_lantern[hanging=true,waterlogged=false] destroy

setblock 258 139 1268 minecraft:redstone_wire[east=side,north=side,power=0,south=side,west=side] destroy

setblock 251 142 1268 minecraft:redstone_wire destroy
setblock 251 142 1270 minecraft:redstone_wire destroy
setblock 251 142 1272 minecraft:redstone_wire destroy
setblock 251 142 1274 minecraft:redstone_wire destroy

#========================================
#notes:
#middle point(pre-set point)
#execute at @e[tag=lobby_center] run 
#current(1.2g 272.5 153 1280.5)
#========================================

#========================================
#reset, total 23 entities
kill @e[tag=staff]
#========================================

#========================================
#animals
#========================================

#kalm (277.5 137 1271.5)
execute at @e[tag=lobby_center] run summon turtle ~5 ~-16 ~-9 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,CustomName:'{"text":"Master KALM","color":"dark_purple","bold":true}',Tags:["staff","no_panik","vip"],HomePosX:277,HomePosY:136,HomePosZ:1271}

###

#pokemon
##274.5 153 1265.5
execute at @e[tag=lobby_center] run summon tropical_fish ~2 ~ ~-15 {Variant:67175681,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Tags:["pokemon","staff","magikarp"],CustomName:'"Magikarp"'}

##248.5 142 1280.5
execute at @e[tag=lobby_center] run summon fox ~-24 ~-11 ~ {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Tags:["pokemon","staff","sleepy_fox"],CustomName:'"Pokémon"',Sitting:1b,Type:"snow"}

##269.5 148 1295.5
execute at @e[tag=lobby_center] run summon chicken ~-3 ~-5 ~15 {ForcedAge:1,Silent:1b,Invulnerable:1b,Age:-24000,PersistenceRequired:1b,Tags:["pokemon","staff","farfetchd","active","ray_target"], HandItems:[{},{id:"minecraft:bamboo",count:1b,components:{"minecraft:custom_name":'"Green Onion"'}}],CustomName:'"little duck"'}

###

#temz (252.5 143 1274.5; z: 0,-2,-4,-6)
execute at @e[tag=lobby_center] run summon cat ~-20 ~-10 ~-6 {NoAI:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Sitting:1b,variant:"white",Tags:["staff","tem"],Rotation:[-90.0f],CustomName:'"Tem"'}

execute at @e[tag=lobby_center] run summon cat ~-20 ~-10 ~-8 {NoAI:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Sitting:1b,variant:"white",Tags:["staff","tem"],Rotation:[-90.0f],CustomName:'"Tem"'}

execute at @e[tag=lobby_center] run summon cat ~-20 ~-10 ~-10 {NoAI:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Sitting:1b,variant:"white",Tags:["staff","tem"],Rotation:[-90.0f],CustomName:'"Tem"'}

execute at @e[tag=lobby_center] run summon cat ~-20 ~-10 ~-12 {NoAI:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Sitting:1b,variant:"white",Tags:["staff","tem","bob"],Rotation:[-90.0f],CustomName:'"Bob"'}

#statue (257.5 141.75 1265.5)
execute at @e[tag=lobby_center] run summon snow_golem ~-15 ~-11.25 ~-15 {NoGravity:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Pumpkin:0b,Tags:["staff","tem","woa"],CustomName:'"Tem Statu"',Rotation:[0.0f]}

#========================================
#paints
#========================================

#tv
##273.0 142 1292.0
execute at @e[tag=lobby_center] run summon painting ~1 ~-11 ~12 {Invulnerable:1b,Tags:["staff","tv"],variant: "minecraft:fighters",facing:0b}

##275.0 142.7 1292.0
execute at @e[tag=lobby_center] run summon armor_stand ~2.5 ~-10.3 ~11.5 {Small:1b,Marker:1b,Invisible:1b,Tags:["staff","tv"],CustomName:'"tv_sans"',ArmorItems:[{},{},{},{id:"minecraft:nether_brick",count:1b,components:{"minecraft:custom_name":'"sans"',"minecraft:custom_model_data":1}}],Rotation:[30.0f,0.0f]}

##273.1 142.5 1292.0
execute at @e[tag=lobby_center] run summon armor_stand ~.6 ~-10.5 ~11.5 {Small:1b,Marker:1b,Invisible:1b,Tags:["staff","tv"],CustomName:'"tv_papy"',ArmorItems:[{},{},{},{id:"minecraft:nether_brick",count:1b,components:{"minecraft:custom_name":'"papy"',"minecraft:custom_model_data":2}}],Rotation:[-30.0f,0.0f]}

#alphys' pc (252.0 143.5 1292.0)
execute at @e[tag=lobby_center] run summon painting ~-20 ~-10 ~12 {Tags:["staff","screen"],facing:3b,Invulnerable:1b,variant:"minecraft:donkey_kong"}

#tem fight (253.0 145.0 1273.0)
execute at @e[tag=lobby_center] run summon painting ~-19 ~-8 ~-7 {Invulnerable:1b,Tags:["staff","tem","paint"],facing:3b,variant:"minecraft:fighters"}

#========================================
#item_frame
#========================================

##mushroom dance(260.0 141.5 1267.5)
execute at @e[tag=lobby_center] run summon item_frame ~-12 ~-12 ~-13 {Fixed:1b,Invulnerable:1b,Invisible:1b,Facing:5b,ItemRotation:3b,Item:{id:"wooden_hoe",count:1b},Tags:["staff","mushroom_dance","staff_lmdh"],CustomName:'"mushroom left hand"'}

execute at @e[tag=lobby_center] run summon item_frame ~-12 ~-12 ~-13 {Fixed:1b,Invulnerable:1b,Invisible:1b,Facing:4b,ItemRotation:7b,Item:{id:"wooden_hoe",count:1b},Tags:["staff","mushroom_dance","staff_rmdh"],CustomName:'"mushroom right hand"'}


##drawer
##276.5 154.5 1269.0
execute at @e[tag=lobby_center] run summon item_frame ~4 ~1 ~-11 {Fixed:1b,Invulnerable:1b,Invisible:1b,Facing:2b,ItemRotation:4b,Item:{id:"smooth_quartz_slab",count:1b},Tags:["staff","drawer"],CustomName:'"drawer"'}

##275.5 154.5 1269.0
execute at @e[tag=lobby_center] run summon item_frame ~3 ~1 ~-11 {Fixed:1b,Invulnerable:1b,Invisible:1b,Facing:2b,ItemRotation:4b,Item:{id:"smooth_quartz_slab",count:1b},Tags:["staff","drawer"],CustomName:'"drawer"'}

##276.5 153.5 1268.0
execute at @e[tag=lobby_center] run summon item_frame ~4 ~ ~-12 {Fixed:1b,Invulnerable:1b,Invisible:1b,Facing:2b,ItemRotation:4b,Item:{id:"smooth_quartz_slab",count:1b},Tags:["staff","drawer"],CustomName:'"drawer"'}

##275.5 153.5 1269.0
execute at @e[tag=lobby_center] run summon item_frame ~3 ~ ~-11 {Fixed:1b,Invulnerable:1b,Invisible:1b,Facing:2b,ItemRotation:4b,Item:{id:"smooth_quartz_slab",count:1b},Tags:["staff","drawer"],CustomName:'"drawer"'}


##toby(250.5 141.0 1278.5)
execute at @e[tag=lobby_center] run summon item_frame ~-22 ~-12 ~-2 {Fixed:1b,Invulnerable:1b,Invisible:1b,Facing:1b,ItemRotation:0b,Item:{id:"lead",count:1b},Tags:["staff","item"],CustomName:'"Rope"'}

##sy(247.5 142.0 1286.5)
execute at @e[tag=lobby_center] run summon item_frame ~-25 ~-11 ~6 {Fixed:1b,Invulnerable:1b,Invisible:0b,Facing:1b,ItemRotation:6b,Item:{id:"pumpkin_pie",count:1b},Tags:["staff","item"],CustomName:'"Plate"'}

##sans(salt) - 278.5 135.0 1286.5
execute at @e[tag=lobby_center] run summon item_frame ~6 ~-18 ~6 {Fixed:1b,Invulnerable:1b,Invisible:1b,Facing:1b,ItemRotation:0b,Item:{id:"nether_wart",count:1b,components:{"minecraft:custom_model_data":1}},Tags:["staff","item"],CustomName:'"Tornado"'}
#272.5 153 1280.5

#========================================
#blocks
#========================================

#pots
#==========
##old tl thing
#setblock 292 141 1291 potted_dandelion
##bookshelf (278 143 1297)
execute at @e[tag=lobby_center] run setblock ~6 ~-10 ~17 flower_pot
##vip pot (282 136 1268)
execute at @e[tag=lobby_center] run setblock ~10 ~-17 ~-12 potted_blue_orchid
##room pot (247 142 1285)
execute at @e[tag=lobby_center] run setblock ~-25 ~-11 ~5 potted_blue_orchid
#==========

#switches
#==========
##vip access (285 144 1265)
execute at @e[tag=lobby_center] run setblock ~13 ~-9 ~-15 redstone_block
##dummy system (285 144 1263)
execute at @e[tag=lobby_center] run setblock ~13 ~-9 ~-17 red_wool
##vine door (285 135 1279)
#execute at @e[tag=lobby_center] run setblock ~13 ~-18 ~-1 redstone_block
##locket (275 152 1270)
execute at @e[tag=lobby_center] run setblock ~3 ~-1 ~-10 redstone_block

##Cre-Hit (254 142 1293)
execute at @e[tag=lobby_center] run setblock ~-18 ~-11 ~13 lever[powered=false,face=floor,facing=east]
##Fast (254 142 1290)
execute at @e[tag=lobby_center] run setblock ~-18 ~-11 ~10 lever[powered=false,face=floor,facing=east]
##under (284 140 1291)
execute at @e[tag=lobby_center] run setblock ~12 ~-13 ~11 lever[powered=false,face=wall,facing=west] 
##dance (258 141 1268)
execute at @e[tag=lobby_center] run setblock ~-14 ~-12 ~-12 warped_button[face=floor]
##reset (276 135 1297)
execute at @e[tag=lobby_center] run setblock ~4 ~-18 ~17 coal_block
#==========

#==========
#fill unl
#execute at @e[tag=lobby_center] run fill ~2 ~-18 ~11 ~6 ~-15 ~15 coal_block
#clean if
##empty
#execute at @e[tag=lobby_center] run fill ~2 ~-18 ~12 ~6 ~-15 ~15 air
##single
#execute at @e[tag=lobby_center] run fill ~4 ~-18 ~11 ~4 ~-15 ~11 air
##ceiling
#execute at @e[tag=lobby_center] run fill ~2 ~-15 ~11 ~6 ~-15 ~15 light replace air
#==========

#extra message
#current(1.2g 272.5 153 1280.5)
#==========
execute at @e[tag=lobby_center] run data modify block ~-24 ~-11 ~8 front_text.messages[1] set value '{"text":"Welcome to staff"}'
#==========

#all sign of staff(backup)
#give @p oak_sign{BlockEntityTag:{front_text:{messages:['{"text":"","clickEvent":{"action":"run_command","value":"/execute if entity @s[nbt={UUID:[I;-1770079663, 2089371155, -1601235453, -790713572]}] run tp @s 274.5 142 1296.5 180 0"}}','{"text":"YOU SHALL","clickEvent":{"action":"run_command","value":"/execute if entity @s[nbt={UUID:[I;1628351282, -1196801657, -1900777490, -1615394164]}] run tp @s 274.5 142 1296.5 180 0"}}','{"text":"NOT PASS","clickEvent":{"action":"run_command","value":"/execute if entity @s[nbt={UUID:[I; 625733648, -92323836, -1256810755, 740259531]}] run tp @s 274.5 142 1296.5 180 0"}}','{"text":"","clickEvent":{"action":"run_command","value":"/execute if entity @s[nbt={UUID:[I; -1749333512, -1293467007, -1710965031, -1791070273]}] run tp @s 248.5 142 1286.5 90 0"}}']}},display:{Name:'"staff_sign"'}}

#give @p dark_oak_sign{BlockEntityTag:{front_text:{messages:['{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[nbt={UUID:[I; 626415068, 521555527, -2142398880, 459535516]}] run tp @s 276.5 135.5 1284.5 180 0"}}','{"text":"NOPE","color":"dark_red","clickEvent":{"action":"run_command","value":"execute if entity @s[nbt={UUID:[I; 970370977, -2136652644, -2063870295, -1151759880]}] run tp @s 274.5 142 1296.5 180 0"}}','{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[nbt={UUID:[I;-1304052889, -1597747829, -1680429374, -497899715]}] run tp @s 274.5 142 1296.5 180 0"}}','""']}},display:{Name:'"staff v2"'}}

#give @p minecraft:birch_sign{BlockEntityTag:{front_text:{messages:['"既然你都發現這裏了"','"那就快去訂閱"','"天豹和阿庫的頻道"','{"text":"by 路過的樗記さん","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"天豹的頻道: \\",\\"clickEvent\\":{\\"action\\":\\"change_page\\",\\"value\\":\\"2\\"}},{\\"text\\":\\"[點我]\\",\\"bold\\":true,\\"underlined\\":true,\\"color\\":\\"red\\",\\"clickEvent\\":{\\"action\\":\\"open_url\\",\\"value\\":\\"https://www.youtube.com/channel/UCLr5X5S4XPiMGwPy0lljMUg\\"}},{\\"text\\":\\"   阿庫的頻道: \\"},{\\"text\\":\\"[點我]\\",\\"bold\\":true,\\"underlined\\":true,\\"color\\":\\"red\\",\\"clickEvent\\":{\\"action\\":\\"open_url\\",\\"value\\":\\"https://www.youtube.com/channel/UC_LqSoH3pX_L5lzWfo9-Qjw\\"}}]"}}']}}}

#give @p oak_sign{BlockEntityTag:{front_text:{messages:['"you are not"','"harry potter"','{"clickEvent":{"action":"run_command","value":"/function ut:game/lobby_player"},"text":""}','{"clickEvent":{"action":"run_command","value":"execute at @e[tag=lobby_center,limit=1] run playsound entity.enderman.teleport player @s ~ ~ ~ 1 1"},"text":""}']}},display:{Name:'"harry 4.0"'}}

#give @p oak_sign{BlockEntityTag:{front_text:{has_glowing_text:1b,color:"purple",messages:['{"clickEvent":{"action":"run_command","value":"/execute unless entity @s[advancements={ut:chr/muffet/lv5=true}] run tellraw @s [{\\"text\\":\\"* Leave \\"},{\\"score\\":{\\"objective\\":\\"st_gold\\",\\"name\\":\\"#price\\"}},{\\"text\\":\\"G in the web?\\"},\\"\\\\n\\\\n\\",{\\"text\\":\\"          \\"},{\\"text\\":\\"❤\\",\\"color\\":\\"red\\"},{\\"text\\":\\"Yes\\",\\"hoverEvent\\":{\\"action\\":\\"show_text\\",\\"value\\":\\"* You don\\\'t have enough gold.\\"}},{\\"text\\":\\"         \\"},{\\"text\\":\\"No\\",\\"hoverEvent\\":{\\"action\\":\\"show_text\\",\\"value\\":\\"* You decided not to buy.\\"}}]"},"text":"Spider Bake Sale","color":"dark_purple","underlined":true}','{"clickEvent":{"action":"run_command","value":"/execute if entity @s[advancements={ut:chr/muffet/lv5=true}] run tellraw @s [{\\"text\\":\\"* Here is now \\"},{\\"score\\":{\\"objective\\":\\"st_gold\\",\\"name\\":\\"#price\\"}},{\\"text\\":\\"G in the web.\\"}]"},"text":""}','{"text":"All proceeds go","color":"white","clickEvent":{"action":"run_command","value":"/execute rotated as @s run tp @s[advancements={ut:chr/muffet/lv5=true}] ~5 ~-6 ~ 0 ~"}}','{"text":"to real spiders.","color":"white","clickEvent":{"action":"run_command","value":"/execute if entity @s[advancements={ut:chr/muffet/lv5=true}] run playsound entity.enderman.teleport player @s ~5 ~-6 ~"}}']}},display:{Name:'"sbs v2"'}}
#==========