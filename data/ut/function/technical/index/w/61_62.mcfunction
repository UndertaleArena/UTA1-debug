#By Neb, created at 2022-01-02 04:06:34.603305

execute if score -Index tech matches 61 run data modify storage ut:tech TargetList[60] set from storage ut:tech LoadedEntry
execute if score -Index tech matches 62 run data modify storage ut:tech TargetList[61] set from storage ut:tech LoadedEntry