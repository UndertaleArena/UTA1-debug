#By Nebulirion

function ut:lobby/text/create
data merge entity @e[tag=summon,limit=1] {CustomName:'{"text":"hi this is a floating text"}'}
tag @e[tag=summon] remove summon