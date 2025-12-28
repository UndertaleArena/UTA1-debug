#By Neb, created at 2022-01-02 04:06:34.603305

execute if score -Index tech matches 41 run data modify storage ut:tech TargetList[40] set from storage ut:tech LoadedEntry
execute if score -Index tech matches 42 run data modify storage ut:tech TargetList[41] set from storage ut:tech LoadedEntry