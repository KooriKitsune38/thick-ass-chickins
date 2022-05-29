# Put Item on Head
data modify entity @s ArmorItems[3] set from entity @s HandItems[0]

# Remove HandItems[0]
data remove entity @s HandItems[0]
