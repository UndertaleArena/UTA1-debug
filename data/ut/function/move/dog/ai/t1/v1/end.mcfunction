#By Nebulirion

#say B end!

execute rotated ~180 ~ run function ut:move/dog/ai/t2/v0/start

execute if score #foundtarget dog matches 0 run function ut:move/dog/ai/t2/start
