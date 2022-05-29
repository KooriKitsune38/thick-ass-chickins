# Retrieve UUID
execute store result score @s i.UUIDs run data get entity @s UUID[0]
scoreboard players operation .temp i.UUIDs = @s i.UUIDs

# Summon Stand
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Small:1b,ShowArms:1b,DisableSlots:68,Tags:["i.Stand",".temp"]}

# Apply Register stand
execute as @e[type=armor_stand,tag=.temp,limit=1,sort=nearest] run function i.chicken:stand/summon/register.stand

# Add Tag
tag @s add i.Active

# Set Lay Time
function i.chicken:chicken/laytime

# Visuals
particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 .5 10 force
playsound minecraft:entity.bat.takeoff neutral @a ~ ~ ~
