#By Nebulirion

function ut:lobby/leave_msg

scoreboard players operation @s tid = @e[tag=tr_soul,limit=1] ptid
function ut:system/team/join

function ut:lobby/join_msg