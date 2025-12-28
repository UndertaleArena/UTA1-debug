#By Neb, created at 2022-01-02 04:06:34.603305

execute if score -Index tech matches 11 run data modify storage ut:tech TargetList[10] set from storage ut:tech LoadedEntry
execute if score -Index tech matches 12 run data modify storage ut:tech TargetList[11] set from storage ut:tech LoadedEntry