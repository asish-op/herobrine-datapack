# Despawn
tp @s[type=!player] ~ -500 ~

# Effects
particle minecraft:smoke ~ ~0.3 ~ 0.2 0.5 0.2 0.05 50 force
summon minecraft:lightning_bolt
 
# Raycast Reset
scoreboard players set @a HerobrineRaycast 0

# Beds
execute as @a[distance=..5,nbt=!{SleepTimer:0s}] at @s if block ~ ~ ~ #minecraft:beds run setblock ~ ~ ~ air destroy