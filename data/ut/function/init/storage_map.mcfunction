#By Nebulirion

###Maps
data modify storage ut:maps Data set value []
data modify storage ut:maps Data append value {Id:1,Type:"ffa",Name:'{"translate":"las.map.flowey"}',PlayWith:'{"translate":"las.map.count","with":[2,6]}',StructureBlock:{"name":"ut:mini_flowey"},Creator:'"Ehdanrary"',Border:{Speed:[250,250],Size:[540,160]}}
data modify storage ut:maps Data append value {Id:2,Type:"ffa",Name:'{"translate":"las.map.of"}',PlayWith:'{"translate":"las.map.count","with":[2,4]}',StructureBlock:{"name":"ut:mini_of"},Creator:'"Ehdanrary"',Border:{Speed:[250,250],Size:[380,80]}}
data modify storage ut:maps Data append value {Id:3,Type:"ffa",Name:'{"translate":"las.map.ruins"}',PlayWith:'{"translate":"las.map.count","with":[2,6]}',StructureBlock:{"name":"ut:mini_ruin"},Creator:'"Ehdanrary"',Border:{Speed:[250,250],Size:[360,120]}}
data modify storage ut:maps Data append value {Id:4,Type:"ffa",Name:'{"translate":"las.map.snowdin"}',PlayWith:'{"translate":"las.map.count","with":[2,8]}',StructureBlock:{"name":"ut:mini_snowdin"},Creator:'"Ehdanrary"',Border:{Speed:[375,250],Size:[770,150]}}
data modify storage ut:maps Data append value {Id:5,Type:"ffa",Name:'{"translate":"las.map.wtf"}',PlayWith:'{"translate":"las.map.count","with":[4,8]}',StructureBlock:{"name":"ut:mini_wtf",posY:3},Creator:'"Ehdanrary"',Border:{Speed:[250,250],Size:[400,120]}}
data modify storage ut:maps Data append value {Id:6,Type:"ffa",Name:'{"translate":"las.map.hotl"}',PlayWith:'{"translate":"las.map.count","with":[4,8]}',StructureBlock:{"name":"ut:mini_hotl"},Creator:'"Ehdanrary"',Border:{Speed:[250,250],Size:[480,160]}}
data modify storage ut:maps Data append value {Id:8,Type:"team",Name:'{"translate":"las.map.newhome"}',PlayWith:'{"translate":"las.map.count","with":[7,16]}',StructureBlock:{"name":"ut:mini_newhome"},Creator:'"Ehdanrary"',Border:{Speed:[500,250],Size:[980,240]}}
data modify storage ut:maps Data append value {Id:10,Type:"ffa",Name:'{"translate":"las.map.truelab"}',PlayWith:'{"translate":"las.map.count","with":[4,8]}',StructureBlock:{"name":"ut:mini_truelab"},Creator:'"SY91419"',Border:{Speed:[500,250],Size:[840,140]}}
data modify storage ut:maps Data append value {Id:12,Type:"ffa",Name:'{"translate":"las.map.core"}',PlayWith:'{"translate":"las.map.count","with":[4,8]}',StructureBlock:{"name":"ut:mini_core"},Creator:'"SY91419"',Border:{Speed:[250,250],Size:[600,120]}}
data modify storage ut:maps Data append value {Id:15,Type:"team",Name:'{"translate":"las.map.t.snowdin"}',PlayWith:'{"translate":"las.map.count2t","with":[3]}',StructureBlock:{"name":"ut:mini_t_snowdin"},Creator:'"SY91419"',Border:{Speed:[500,250],Size:[870,120]}}
data modify storage ut:maps Data append value {Id:17,Type:"team",Name:'{"translate":"las.map.t.waterfall"}',PlayWith:'{"translate":"las.map.count2t","with":[3]}',StructureBlock:{"name":"ut:mini_t_waterfall"},Creator:'"Ds_Squid"',Border:{Speed:[500,250],Size:[820,120]}}
data modify storage ut:maps Data append value {Id:16,Type:"team",Name:'{"translate":"las.map.t.hotland"}',PlayWith:'{"translate":"las.map.count2t","with":[3]}',StructureBlock:{"name":"ut:mini_t_hotland"},Creator:'"_Asriel_"',Border:{Speed:[500,250],Size:[780,100]}}
data modify storage ut:maps Data append value {Id:19,Type:"siege",Name:'{"translate":"las.map.s.ruins"}',PlayWith:'[{"translate":"las.map.count2t","with":[2]},", ",{"translate":"las.map.count2t","with":[3]}]',StructureBlock:{"name":"ut:mini_s_ruins"},Creator:'"Nebulirion"',Border:{Speed:[500,250],Size:[840,120]}}

#data modify storage ut:maps Data append value {Id:18,Type:"team",Name:'{"translate":"las.map.t.garden"}',PlayWith:'{"translate":"las.map.count2t","with":[3]}',StructureBlock:{"name":"ut:mini_t_garden"},Creator:'"SY91419"',Border:{Speed:[500,250],Size:[900,120]}}

data modify storage ut:maps Data append value {Id:11,Type:"ffa",Name:'{"translate":"las.map.undynehouse"}',PlayWith:'{"translate":"las.map.count","with":[2,4]}',StructureBlock:{"name":"ut:mini_undyne_house"},StructureLocked:{"name":"ut:mini_undyne_house_locked"},Creator:'"szy769451"',Border:{Speed:[250,250],Size:[430,120]}}
data modify storage ut:maps Data append value {Id:13,Type:"ffa",Name:'{"translate":"las.map.mttstage"}',PlayWith:'{"translate":"las.map.count","with":[2,4]}',StructureBlock:{"name":"ut:mini_mtt_stage"},StructureLocked:{"name":"ut:mini_mtt_stage_locked"},Creator:'"SY91419"',Border:{Speed:[250,250],Size:[360,100]}}
data modify storage ut:maps Data append value {Id:7,Type:"team",NoFFA:true,Name:'{"translate":"las.map.t.corridor"}',PlayWith:'{"translate":"las.map.count2t","with":[1]}',StructureBlock:{"name":"ut:mini_t_hall"},StructureLocked:{"name":"ut:mini_t_hall_locked"},Creator:'"Ehdanrary"',Border:{Speed:[375,250],Size:[600,120]}}
data modify storage ut:maps Data append value {Id:14,Type:"team",NoFFA:true,Name:'{"translate":"las.map.t.trash"}',PlayWith:'{"translate":"las.map.count2t","with":[2]}',StructureBlock:{"name":"ut:mini_t_trash"},StructureLocked:{"name":"ut:mini_t_trash_locked"},Creator:'"_FocalSalt_"',Border:{Speed:[500,250],Size:[900,120]}}
data modify storage ut:maps Data append value {Id:9,Type:"ffa",Name:'{"translate":"las.map.sans"}',PlayWith:'{"translate":"las.map.count","with":[21,652]}',StructureBlock:{"name":"ut:mini_sans"},StructureLocked:{"name":"ut:mini_sans_locked"},Creator:'"Ehdanrary"',Border:{Speed:[250,250],Size:[480,133]}}

data modify storage ut:maps Rotation set from storage ut:maps Data
data modify storage ut:maps Selected set from storage ut:maps Data[0]
execute store result score -count map if data storage ut:maps Data[]