# Swap Head with Hand
#execute if data entity @s HandItems[0].id run function i.chicken:stand/swap.items
execute unless entity @s[nbt={HandItems:[{id:"minecraft:stick"},{}]}] run function i.chicken:stand/drop.item
scoreboard players operation .temp i.UUIDs = @s i.UUIDs
execute if entity @s[nbt={HandItems:[{id:"minecraft:stick"},{}]}] run function i.chicken:stand/summon.aec
data remove entity @s HandItems[0]

# Kill if no Chickin
execute unless entity @e[type=chicken,distance=..1,tag=i.Active] run kill @s
