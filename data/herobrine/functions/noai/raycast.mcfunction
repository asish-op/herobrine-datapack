# Score
scoreboard players remove @s HerobrineRaycast 1

# Commands
execute if entity @e[tag=herobrine_noai,distance=..2] as @a at @s run playsound minecraft:scare1 master @s

execute as @e[tag=herobrine_noai,distance=..2,tag=split] at @s run function herobrine:noai/split

execute if entity @e[tag=herobrine_noai,distance=..2,tag=scare] run effect give @s minecraft:blindness 2 1 true
execute if entity @e[tag=herobrine_noai,distance=..2,tag=scare] at @s positioned ^ ^ ^1 run function herobrine:short/spawn

execute as @e[tag=herobrine_noai,distance=..2] at @s run function herobrine:despawn

execute unless block ~ ~ ~ #minecraft:valid_spawn if score @s HerobrineRaycast matches 1.. positioned ^ ^ ^0.1 run function herobrine:noai/raycast