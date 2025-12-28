#By Neb, created at 2022-01-02 04:06:34.603305

execute if score -Index tech matches 1 run data modify storage ut:tech TargetList[0] set from storage ut:tech LoadedEntry
execute if score -Index tech matches 2 run data modify storage ut:tech TargetList[1] set from storage ut:tech LoadedEntry