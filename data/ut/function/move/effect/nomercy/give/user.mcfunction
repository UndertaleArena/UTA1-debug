# modify displays
data modify block 255 0 255 Items[0].components.custom_name set value '{"translate":"itm.spare.dis","italic":false,"bold":true}'
data modify block 255 0 255 Items[0].components.lore set value ['{"text":""}','{"translate":"itm.spare.dis1","italic":false,"color":"white"}']
# modify model
data modify block 255 0 255 Items[0].components.custom_model_data set value 300
# hide_additional_tooltip={} ?