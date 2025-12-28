#reset
kill @e[tag=staff]
#total 22 entities

#vip
summon turtle 277.5 137 1271.5 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,CustomName:'{"text":"Master KALM","color":"dark_purple","bold":true}',Tags:["staff","no_panik","vip"],HomePosX:277,HomePosY:136,HomePosZ:1271}

#pokemon
summon tropical_fish 274.5 153 1265.5 {Variant:67175681,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Tags:["pokemon","staff","magikarp"],CustomName:'"Magikarp"'}

summon fox 248.5 142 1280.5 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Tags:["pokemon","staff","sleepy_fox"],CustomName:'"Pokémon"',Sitting:1b,Type:"snow"}

summon chicken 269.5 148 1295.5 {Silent:1b,Invulnerable:1b,ForcedAge:1,Age:-24000,PersistenceRequired:1b,Tags:["pokemon","staff","farfetchd","active","ray_target"], HandItems:[{},{id:"minecraft:bamboo",count:1b,components:{"minecraft:custom_name":'"Green Onion"'}}],CustomName:'"little duck"'}

#tv
summon painting 273.0 142 1292.0 {Invulnerable:1b,Tags:["staff","tv"],CustomName:'"tv_main"',variant: "minecraft:fighters",facing:0b}

summon armor_stand 275.0 142.7 1292.0 {Small:1b,Marker:1b,Invisible:1b,Tags:["staff","tv"],CustomName:'"tv_sans"',ArmorItems:[{},{},{},{id:"minecraft:nether_brick",count:1b,components:{"minecraft:custom_name":'"sans"',"minecraft:custom_model_data":1}}],Rotation:[30.0f,0.0f]}

summon armor_stand 273.1 142.5 1292.0 {Small:1b,Marker:1b,Invisible:1b,Tags:["staff","tv"],CustomName:'"tv_papy"',ArmorItems:[{},{},{},{id:"minecraft:nether_brick",count:1b,components:{"minecraft:custom_name":'"papy"',"minecraft:custom_model_data":2}}],Rotation:[-30.0f,0.0f]}

#alphys' pc
summon painting 252.0 143.5 1292.0 {Tags:["staff","screen"],facing:3b,Invulnerable:1b,variant:"minecraft:donkey_kong",CustomName:'"PC Screen"'}

#temz
summon cat 252.5 143 1274.5 {NoAI:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Sitting:1b,variant:"minecraft:tabby",Tags:["staff","tem"],Rotation:[-90.0f],CustomName:'"Tem"'}

summon cat 252.5 143 1272.5 {NoAI:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Sitting:1b,variant:"minecraft:tabby",Tags:["staff","tem"],Rotation:[-90.0f],CustomName:'"Tem"'}

summon cat 252.5 143 1270.5 {NoAI:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Sitting:1b,variant:"minecraft:tabby",Tags:["staff","tem"],Rotation:[-90.0f],CustomName:'"Tem"'}

summon cat 252.5 143 1268.5 {NoAI:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Sitting:1b,variant:"minecraft:tabby",Tags:["staff","tem","bob"],Rotation:[-90.0f],CustomName:'"Bob"'}

summon painting 253.0 145.0 1273.0 {Invulnerable:1b,Tags:["staff","tem","paint"],CustomName:'"tem legend"',facing:3b,variant:"minecraft:fighters"}

summon snow_golem 257.5 141.75 1265.5 {NoGravity:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Pumpkin:0b,Tags:["staff","tem","woa"],CustomName:'"Tem Statu"',Rotation:[0.0f]}


#item_frame
##mushroom dance
summon item_frame 260.0 141.5 1267.5 {Fixed:1b,Invulnerable:1b,Invisible:1b,Facing:5b,ItemRotation:3b,Item:{id:"wooden_hoe",count:1b},Tags:["staff","mushroom_dance","staff_lmdh"],CustomName:'"mushroom left hand"'}

summon item_frame 260.0 141.5 1267.5 {Fixed:1b,Invulnerable:1b,Invisible:1b,Facing:4b,ItemRotation:7b,Item:{id:"wooden_hoe",count:1b},Tags:["staff","mushroom_dance","staff_rmdh"],CustomName:'"mushroom right hand"'}


##drawer
summon item_frame 276.5 154.5 1269.0 {Fixed:1b,Invulnerable:1b,Invisible:1b,Facing:2b,ItemRotation:4b,Item:{id:"smooth_quartz_slab",count:1b},Tags:["staff","drawer"],CustomName:'"drawer"'}
summon item_frame 275.5 154.5 1269.0 {Fixed:1b,Invulnerable:1b,Invisible:1b,Facing:2b,ItemRotation:4b,Item:{id:"smooth_quartz_slab",count:1b},Tags:["staff","drawer"],CustomName:'"drawer"'}
summon item_frame 276.5 153.5 1268.0 {Fixed:1b,Invulnerable:1b,Invisible:1b,Facing:2b,ItemRotation:4b,Item:{id:"smooth_quartz_slab",count:1b},Tags:["staff","drawer"],CustomName:'"drawer"'}
summon item_frame 275.5 153.5 1269.0 {Fixed:1b,Invulnerable:1b,Invisible:1b,Facing:2b,ItemRotation:4b,Item:{id:"smooth_quartz_slab",count:1b},Tags:["staff","drawer"],CustomName:'"drawer"'}


##toby
summon item_frame 250.5 141.0 1278.5 {Fixed:1b,Invulnerable:1b,Invisible:1b,Facing:1b,ItemRotation:0b,Item:{id:"lead",count:1b},Tags:["staff","item"],CustomName:'"Rope"'}
##sy
summon item_frame 247.5 142.0 1286.5 {Fixed:1b,Invulnerable:1b,Invisible:0b,Facing:1b,ItemRotation:6b,Item:{id:"pumpkin_pie",count:1b},Tags:["staff","item"],CustomName:'"Plate"'}

#pots
setblock 292 141 1291 potted_dandelion
setblock 278 143 1297 flower_pot
setblock 282 136 1268 potted_blue_orchid
setblock 247 142 1285 potted_blue_orchid

#message
data modify block 248 142 1288 front_text.messages[1] set value '{"text":"Why you kill them"}'