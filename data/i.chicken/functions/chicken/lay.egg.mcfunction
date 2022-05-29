# Retrieve Rarity
execute as @e[tag=.standTemp] run function i.chicken:stand/check.rarity

execute as @e[tag=.standTemp] run function i.chicken:chicken/summon.item

# Reset Timer
function i.chicken:chicken/laytime

# Visuals
particle item brown_dye ~ ~.1 ~ 0 0 0 .1 30 normal
playsound minecraft:entity.chicken.egg neutral @a ~ ~ ~
