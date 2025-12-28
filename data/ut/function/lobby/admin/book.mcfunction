#Setting book v.0.6 by SY91419

data modify block 255 0 255 Items set value []
item replace block 255 0 255 container.0 with minecraft:written_book[minecraft:lore=[{"translate":"bk.lore"}],minecraft:written_book_content={author:"§7UTA Production Team§r",generation:0,pages:[{raw:[{"translate":"bk.txt.a1"},"\n",{"translate":"bk.txt.a2"},"\n",{"translate":"bk.txt.a3"},"\n\n\n",\
{"translate":"bk.txt.b0"},"\n",\
{"translate":"bk.txt.sp"},\
{"click_event":{"action":"run_command","command":"function ut:lobby/admin/opoff"},"hover_event":{"action":"show_text","value":[{"translate":"bk.txt.b1.he1"},"\n",{"translate":"bk.txt.b1.he2"},"\n",{"translate":"bk.txt.b1.he3"}]},"translate":"bk.txt.b1"},\
{"translate":"bk.txt.sp"},\
{"click_event":{"action":"run_command","command":"function ut:lobby/admin/opon"},"hover_event":{"action":"show_text","value":[{"translate":"bk.txt.b2.he1"},"\n",{"translate":"bk.txt.b2.he2"},"\n",{"translate":"bk.txt.b2.he3"},"\n",{"translate":"bk.txt.b2.he4"}]},"translate":"bk.txt.b2"},"\n\n\n\n",\
{"translate":"bk.txt.sp"},\
{"click_event":{"action":"run_command","command":"/tellraw @s [{translate:\"pfx.info\"},{click_event:{action:\"suggest_command\",command:\"tag <id> add admin\"},hover_event:{action:\"show_text\",value:{translate:\"bk.txt.ctr.he\"}},translate:\"bk.txt.c1.tr\"}]"},"hover_event":{"action":"show_text","value":[{"translate":"bk.txt.c1.he1"},"\n",{"translate":"bk.txt.c1.he2"},"\n",{"translate":"bk.txt.c1.he3"}]},"translate":"bk.txt.c1"},"\n",\
{"translate":"bk.txt.sp"},\
{"click_event":{"action":"run_command","command":"/tellraw @s [{translate:\"pfx.info\"},{click_event:{action:\"suggest_command\",command:\"tag <id> remove admin\"},hover_event:{action:\"show_text\",value:{translate:\"bk.txt.ctr.he\"}},translate:\"bk.txt.c2.tr\"}]"},"hover_event":{"action":"show_text","value":[{"translate":"bk.txt.c2.he1"},"\n",{"translate":"bk.txt.c2.he2"}]},"translate":"bk.txt.c2"}]}],title:{raw:""}},minecraft:custom_name={"translate":"bk.title"},minecraft:custom_data={uta_book:1b},tooltip_display={hidden_components:["written_book_content"]}]

clear @s written_book[custom_data~{uta_book:1b}]

execute if data entity @s Inventory[{Slot:3b}] run loot give @s mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
execute unless data entity @s Inventory[{Slot:3b}] run loot replace entity @s hotbar.3 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]