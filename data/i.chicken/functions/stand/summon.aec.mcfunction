# Summon AEC
execute store success score .hasAEC i.UUIDs if entity @e[type=minecraft:area_effect_cloud]
execute store success score .hasAEC i.UUIDs as @e[type=minecraft:area_effect_cloud,tag=i.AEC] if score @s i.UUIDs = .temp i.UUIDs

execute unless score .hasAEC i.UUIDs matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:60,Tags:["i.AEC",".temp"]}

# Retrieve UUID
execute as @e[type=minecraft:area_effect_cloud,tag=.temp,sort=nearest,limit=1] run function i.chicken:retrieve.uuid
