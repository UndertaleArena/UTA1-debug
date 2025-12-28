#By ANTHINY609

$execute if score @s ptsd_wdmg matches 1.. run tellraw @a[scores={S=1}] [{"color":"white","italic":false,"selector":"@s"},{"color":"white","italic":false,"selector":"@s","font":"minecraft:back.state"},\
{"text":"\uF841"},\
{"color":"red","hover_event":{"action":"show_text","value":[{"translate":"pset.3.2.dsc","color":"white","italic":false}]},"italic":false,"text":" ⚔"},\
{"hover_event":{"action":"show_text","value":[{"translate":"pset.3.2.dsc","color":"white","italic":false}]},"italic":false,"score":{"name":"#ptsd_dmg","objective":"ptsd_dmg"},"color":$(color1)},\
{"italic":false,"hover_event":{"action":"show_text","value":[{"translate":"pset.3.2.dsc","color":"white","italic":false}]},"text":".","color":$(color1)},\
{"italic":false,"hover_event":{"action":"show_text","value":[{"translate":"pset.3.2.dsc","color":"white","italic":false}]},"score":{"name":"#0","objective":"ptsd_dmg"},"color":$(color1)},\
{"italic":false,"hover_event":{"action":"show_text","value":[{"translate":"pset.3.2.dsc","color":"white","italic":false}]},"score":{"name":"#ptsd_dmg_a","objective":"ptsd_dmg"},"color":$(color1)},\
{"text":"⚔.","font":back.state},\
{"score":{"name":"#ptsd_dmg","objective":"ptsd_dmg"},"font":back.state},\
{"score":{"name":"#0","objective":"ptsd_dmg"},"font":back.state},\
{"score":{"name":"#ptsd_dmg_a","objective":"ptsd_dmg"},"font":back.state},\
{"text":"\uF840"},\
\
{"color":"blue","hover_event":{"action":"show_text","value":[{"translate":"pset.3.3.dsc","color":"white","italic":false}]},"italic":false,"text":" 🛡"},\
{"hover_event":{"action":"show_text","value":[{"translate":"pset.3.3.dsc","color":"white","italic":false}]},"italic":false,"score":{"name":"#ptsd_dmged","objective":"ptsd_dmged"},"color":$(color2)},\
{"italic":false,"hover_event":{"action":"show_text","value":[{"translate":"pset.3.3.dsc","color":"white","italic":false}]},"text":".","color":$(color2)},\
{"italic":false,"hover_event":{"action":"show_text","value":[{"translate":"pset.3.3.dsc","color":"white","italic":false}]},"score":{"name":"#0","objective":"ptsd_dmged"},"color":$(color2)},\
{"italic":false,"hover_event":{"action":"show_text","value":[{"translate":"pset.3.3.dsc","color":"white","italic":false}]},"score":{"name":"#ptsd_dmged_a","objective":"ptsd_dmged"},"color":$(color2)},\
{"text":"🛡.","font":back.state},\
{"score":{"name":"#ptsd_dmged","objective":"ptsd_dmged"},"font":back.state},\
{"score":{"name":"#0","objective":"ptsd_dmged"},"font":back.state},\
{"score":{"name":"#ptsd_dmged_a","objective":"ptsd_dmged"},"font":back.state},\
{"text":"\uF840"},\
\
{"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"pset.3.4.dsc","color":"white","italic":false}]},"italic":false,"text":" ⭐"},\
{"italic":false,"hover_event":{"action":"show_text","value":[{"translate":"pset.3.4.dsc","color":"white","italic":false}]},"score":{"name":"#ptsd_wdmg","objective":"ptsd_wdmg"},"color":$(color3)}]

$execute if score @s ptsd_wdmg matches 0 run tellraw @a[scores={S=1}] [{"color":"white","italic":false,"selector":"@s"},{"color":"white","italic":false,"selector":"@s","font":"minecraft:back.state"},\
{"text":"\uF841"},\
{"color":"red","hover_event":{"action":"show_text","value":[{"translate":"pset.3.2.dsc","color":"white","italic":false}]},"italic":false,"text":" ⚔"},\
{"hover_event":{"action":"show_text","value":[{"translate":"pset.3.2.dsc","color":"white","italic":false}]},"italic":false,"score":{"name":"#ptsd_dmg","objective":"ptsd_dmg"},"color":$(color1)},\
{"italic":false,"hover_event":{"action":"show_text","value":[{"translate":"pset.3.2.dsc","color":"white","italic":false}]},"text":".","color":$(color1)},\
{"italic":false,"hover_event":{"action":"show_text","value":[{"translate":"pset.3.2.dsc","color":"white","italic":false}]},"score":{"name":"#0","objective":"ptsd_dmg"},"color":$(color1)},\
{"italic":false,"hover_event":{"action":"show_text","value":[{"translate":"pset.3.2.dsc","color":"white","italic":false}]},"score":{"name":"#ptsd_dmg_a","objective":"ptsd_dmg"},"color":$(color1)},\
{"text":"⚔.","font":back.state},\
{"score":{"name":"#ptsd_dmg","objective":"ptsd_dmg"},"font":back.state},\
{"score":{"name":"#0","objective":"ptsd_dmg"},"font":back.state},\
{"score":{"name":"#ptsd_dmg_a","objective":"ptsd_dmg"},"font":back.state},\
{"text":"\uF840"},\
\
{"color":"blue","hover_event":{"action":"show_text","value":[{"translate":"pset.3.3.dsc","color":"white","italic":false}]},"italic":false,"text":" 🛡"},\
{"hover_event":{"action":"show_text","value":[{"translate":"pset.3.3.dsc","color":"white","italic":false}]},"italic":false,"score":{"name":"#ptsd_dmged","objective":"ptsd_dmged"},"color":$(color2)},\
{"italic":false,"hover_event":{"action":"show_text","value":[{"translate":"pset.3.3.dsc","color":"white","italic":false}]},"text":".","color":$(color2)},\
{"italic":false,"hover_event":{"action":"show_text","value":[{"translate":"pset.3.3.dsc","color":"white","italic":false}]},"score":{"name":"#0","objective":"ptsd_dmged"},"color":$(color2)},\
{"italic":false,"hover_event":{"action":"show_text","value":[{"translate":"pset.3.3.dsc","color":"white","italic":false}]},"score":{"name":"#ptsd_dmged_a","objective":"ptsd_dmged"},"color":$(color2)}]