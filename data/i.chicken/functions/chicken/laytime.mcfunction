# Common
execute if score .common i.genVal matches 1 run scoreboard players set @s i.layTime 120
# Uncommon
execute if score .uncommon i.genVal matches 1 run scoreboard players set @s i.layTime 300
# Unique
execute if score .unique i.genVal matches 1 run scoreboard players set @s i.layTime 600

# If no score
execute if score @s i.layTime matches ..0 run scoreboard players set @s i.layTime 60
