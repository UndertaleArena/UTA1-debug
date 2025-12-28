#By Nebulirion

tellraw @a[tag=spare_p,limit=1] {"translate":"wrn.spare0","with": [{"selector":"@s"}]}
execute as @a[tag=spare_p,limit=1] run function ut:move/spare/fail/fail