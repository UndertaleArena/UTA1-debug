#hi

execute unless entity @e[team=touched] run function ut:lobby/credit/e/s_pos2
execute if entity @e[team=touched] run function ut:lobby/credit/e/s_pos1
summon armor_stand ~ ~-0.020 ~ {CustomName:'{"translate":"cre.end3"}',Tags:["cname","launched","credit_as"],CustomNameVisible:0b,Marker:1b,NoGravity:1b}
summon armor_stand ~ ~-0.025 ~ {CustomName:'" "',Tags:["cname","launched","credit_as"],CustomNameVisible:0b,Marker:1b,NoGravity:1b}
summon armor_stand ~ ~-0.030 ~ {CustomName:'{"translate":"cre.end4"}',Tags:["cname","launched","credit_as"],CustomNameVisible:0b,Marker:1b,NoGravity:1b}
summon armor_stand ~ ~-0.035 ~ {CustomName:'{"translate":"cre.end5"}',Tags:["cname","launched","credit_as"],CustomNameVisible:0b,Marker:1b,NoGravity:1b}
summon armor_stand ~ ~-0.040 ~ {CustomName:'" "',Tags:["cname","launched","credit_as"],CustomNameVisible:0b,Marker:1b,NoGravity:1b}
summon armor_stand ~ ~-0.045 ~ {CustomName:'{"translate":"cre.end6"}',Tags:["cname","launched","credit_as"],CustomNameVisible:0b,Marker:1b,NoGravity:1b}
summon armor_stand ~ ~-0.050 ~ {CustomName:'{"translate":"cre.end7"}',Tags:["cname","launched","credit_as"],CustomNameVisible:0b,Marker:1b,NoGravity:1b}

summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{explosions:[{shape:"small_ball",has_trail:0,has_flicker:0,colors:[I;11743532,14602026],fade_colors:[I;15435844]}],flight_duration:1}}}}