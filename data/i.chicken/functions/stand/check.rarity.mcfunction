# Common
execute store success score .common i.genVal if predicate i.chicken:i.common
# Uncommon
execute store success score .uncommon i.genVal if predicate i.chicken:i.uncommon
# Unique
execute store success score .unique i.genVal if predicate i.chicken:i.unique

# Retrieve NBT
data modify storage i.chicken:egg eggNBT set from entity @s ArmorItems[3]
