#By Neb, created at 2022-01-02 04:06:34.603305

execute if score -Index tech matches 5 run data modify storage ut:tech TargetList[4] set from storage ut:tech LoadedEntry
execute if score -Index tech matches 6 run data modify storage ut:tech TargetList[5] set from storage ut:tech LoadedEntry