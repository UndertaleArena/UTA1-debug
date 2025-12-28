#By Neb, created at 2022-01-02 04:06:34.603305

execute if score -Index tech matches 51 run data modify storage ut:tech TargetList[50] set from storage ut:tech LoadedEntry
execute if score -Index tech matches 52 run data modify storage ut:tech TargetList[51] set from storage ut:tech LoadedEntry