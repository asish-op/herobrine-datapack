# Kill
kill @s[type=item]

# Head
setblock ~ ~ ~ player_head[rotation=1]{SkullOwner: {Id: [I;1790613606, 772557665, -1243285488, 51298477], Properties: {textures: [{Value:eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQzNTc3NTE3Nzk4NWZhZDE5ZDVmMWE3ODg4YjM1NDlkNTU3Y2YwNTM2YjE2MDk3MmYzYmNkMzJmMzM3MzcifX19}]}}}

execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["dead_herobrine_boss"]}

# Effects
tellraw @a {"text":"Herobrine left the game","color":"yellow"}

playsound minecraft:glitch1 master @a
playsound minecraft:entity.husk.death master @a ~ ~ ~ 1 0.8
playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 1 0