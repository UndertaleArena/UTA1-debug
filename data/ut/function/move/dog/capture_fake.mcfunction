#By Nebulirion

playsound entity.wolf.whine player @a[tag=dog_capturer,limit=1] ~ ~ ~ 1.2 2

tellraw @a[tag=dog_capturer,limit=1] [{"translate":"pfx.info"},{"translate":"cht.gmd.fakedog"}]

scoreboard players set @a[tag=dog_capturer,limit=1] dog_timer 8

function ut:move/dog/remove_fake

tag @a remove dog_capturer
