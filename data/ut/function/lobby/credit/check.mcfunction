#By Nebulirion & Alex_Cai

execute as @a[tag=credit_p] if data entity @s attributes.modifiers[{id:"ut:credit_effect"}] at @s run function ut:lobby/credit/attrbute/regain

execute if score credit_state info matches 1.. unless entity @a[tag=credit_p] run function ut:lobby/credit/end