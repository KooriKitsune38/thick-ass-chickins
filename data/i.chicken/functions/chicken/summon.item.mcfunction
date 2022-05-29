# Summon Item temp
summon item ~ ~ ~ {Tags:[".temp"],Item:{id:"egg",Count:1b},PickupDelay:10s}

# Retrieve data from stand head
execute as @e[type=item,tag=.temp,sort=nearest,limit=1] run function i.chicken:chicken/item.nbt
