# Summon Stand
execute unless entity @s[tag=i.Active] run function i.chicken:stand/summon/summon.stand

# Store UUID into .temp
scoreboard players operation .temp i.UUIDs = @s i.UUIDs

# Tp Stand Behind Chickin
execute as @e[type=armor_stand,tag=i.Stand] if score @s i.UUIDs = .temp i.UUIDs run function i.chicken:stand/standinator.data

# Tp to aec if exists
tag @s add .this
scoreboard players set .hasAEC i.UUIDs 0
execute store success score .hasAEC i.UUIDs as @e[type=minecraft:area_effect_cloud,tag=i.AEC] if score @s i.UUIDs = .temp i.UUIDs at @s as @e[tag=.this] run function i.chicken:chicken/removing.item
execute if entity @s[tag=i.Off] if score .hasAEC i.UUIDs matches 0 run function i.chicken:chicken/remove.item
tag @s remove .this

# Remove EggLayTime
data modify entity @s EggLayTime set value 120

# Decrease the timer
scoreboard players remove @s i.layTime 1
execute if score @s i.layTime matches ..0 run function i.chicken:chicken/lay.egg

# Remove Tag from stand
tag @e[tag=.standTemp] remove .standTemp
