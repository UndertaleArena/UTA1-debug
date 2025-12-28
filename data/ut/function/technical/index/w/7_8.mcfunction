#By Neb, created at 2022-01-02 04:06:34.603305

execute if score -Index tech matches 7 run data modify storage ut:tech TargetList[6] set from storage ut:tech LoadedEntry
execute if score -Index tech matches 8 run data modify storage ut:tech TargetList[7] set from storage ut:tech LoadedEntry