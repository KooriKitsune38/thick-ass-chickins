# Selectors
#> Chickin
execute as @e[type=chicken,name=Iteminator,nbt={Age:0}] at @s run function i.chicken:chicken/iteminator
tag @e[type=chicken,name=!Iteminator] remove i.Active
#> Stand
execute as @e[type=minecraft:armor_stand,tag=i.Stand] at @s run function i.chicken:stand/standinator
