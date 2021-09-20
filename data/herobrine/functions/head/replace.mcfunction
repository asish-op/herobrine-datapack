# Replaceitem
replaceitem entity @s armor.head redstone_torch{CustomModelData:1}

# Clear
schedule function herobrine:head/clear 5t append
execute at @s run playsound minecraft:glitch1 master @a ~ ~ ~ 1 2