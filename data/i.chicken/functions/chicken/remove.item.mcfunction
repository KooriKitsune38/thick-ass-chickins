# Lay Egg
function i.chicken:chicken/lay.egg

# Tag Remove
tag @s remove i.Off
tag @s remove i.Active

# Remove Name
data modify entity @s CustomName set value ''

# Visuals
stopsound @a[distance=..10] neutral entity.bee.hurt
playsound minecraft:entity.bee.hurt neutral @a ~ ~ ~ 2 .1
