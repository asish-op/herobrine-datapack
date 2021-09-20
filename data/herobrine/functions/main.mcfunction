#---------------------------------------------------------
# This Datapack was made by CommandGeek
# Please do not copy or credit this as your own work!
# Youtube: www.youtube.com/CommandGeek
#---------------------------------------------------------

# Herobrine Leaves
scoreboard players remove @a[scores={HerobrineLeaves=1..}] HerobrineLeaves 1
execute at @a[scores={HerobrineLeaves=1..}] run function herobrine:leaves/cube
execute as @a if predicate herobrine:forest run scoreboard players set @s HerobrineLeaves 200

# Herobrine NoAI
execute as @e[tag=herobrine_noai] at @s run tp @s ~ ~ ~ facing entity @p
scoreboard players set @a HerobrineRaycast 500
execute as @a at @s anchored eyes run function herobrine:noai/raycast
execute unless entity @e[tag=herobrine_boss] unless entity @e[tag=herobrine_noai] unless entity @e[tag=herobrine_split] at @a if predicate herobrine:spawn_noai run function herobrine:noai/spawn      
execute as @e[tag=herobrine_noai] if predicate herobrine:despawn_noai at @s run function herobrine:despawn

execute at @e[tag=herobrine_noai] if entity @a[distance=..3] run summon tnt
execute at @e[tag=herobrine_noai] if entity @a[distance=..3] run effect give @a[distance=..5] minecraft:wither 10 1 true
execute as @e[tag=herobrine_noai] at @s if entity @a[distance=..3] run function herobrine:despawn    

scoreboard players add @e[tag=herobrine_zombie] HerobrineTime 1
execute as @e[tag=herobrine_zombie,nbt={Invulnerable:1b},scores={HerobrineTime=20..}] run data modify entity @s Invulnerable set value 0b
    
# Mine
execute unless entity @e[tag=herobrine_boss] as @a if predicate herobrine:mine at @s run function herobrine:mine/detect/complete
    
scoreboard players add @e[tag=herobrine_mine] HerobrineTime 1
execute as @e[tag=herobrine_mine,scores={HerobrineTime=10..}] at @s run function herobrine:despawn_silent

# Split
effect give @e[tag=herobrine_split] minecraft:speed 2 2 true
execute at @e[tag=herobrine_split] run particle minecraft:white_ash ~ ~0.3 ~ 0.3 0.6 0.3 0.05 20 force
scoreboard players add @e[tag=herobrine_split] HerobrineTime 1
execute as @e[tag=herobrine_split,scores={HerobrineTime=600..}] if predicate herobrine:despawn_split at @s run function herobrine:despawn_silent
    
# Door
execute at @a if predicate herobrine:door rotated ~ 0 positioned ^ ^ ^-6 run function herobrine:door/cube
    
# Block
scoreboard players add @e[tag=herobrine_block] HerobrineTime 1
execute at @e[tag=herobrine_block,scores={HerobrineTime=20..}] run setblock ~ ~ ~ air destroy
kill @e[tag=herobrine_block,scores={HerobrineTime=20..}]

# Fire
execute at @a if predicate herobrine:fire run function herobrine:fire

# Ambient
execute as @a if predicate herobrine:ambient at @s run playsound minecraft:ambient.cave master @s    

# Head
execute as @a unless data entity @s Inventory[{Slot:103b}] if predicate herobrine:head run function herobrine:head/replace

# Pyramid
execute as @e[type=pig,tag=!herobrine_pig] if predicate herobrine:pyramid at @s run function herobrine:pyramid/raycast
tag @e[type=pig,tag=!herobrine_pig] add herobrine_pig

# Bed
scoreboard players add @e[tag=herobrine_bed] HerobrineTime 1
execute as @e[tag=herobrine_bed,scores={HerobrineTime=20..}] at @s run function herobrine:despawn

# Boss
execute unless entity @e[tag=spawn_herobrine_boss] as @e[type=item,nbt={Item:{id:"minecraft:coal"}}] at @s run function herobrine:boss/detect
scoreboard players add @e[tag=spawn_herobrine_boss] HerobrineTime 1

execute as @e[tag=spawn_herobrine_boss,scores={HerobrineTime=60}] run tellraw @a {"text":"<Herobrine> Why...","color":"white"}
execute as @e[tag=spawn_herobrine_boss,scores={HerobrineTime=160}] run tellraw @a ["",{"text":"<Herobri"},{"text":"n","obfuscated":true},{"text":"e> Why did you summon me..."}]

execute as @e[tag=spawn_herobrine_boss,scores={HerobrineTime=260}] run tellraw @a ["",{"text":"<H"},{"text":"er","obfuscated":true},{"text":"obrine> No o"},{"text":"n","obfuscated":true},{"text":"e has dared to d"},{"text":"o","obfuscated":true},{"text":" it..."}]

execute as @e[tag=spawn_herobrine_boss,scores={HerobrineTime=360}] run tellraw @a ["",{"text":"<He"},{"text":"rob","obfuscated":true},{"text":"rin"},{"text":"e","obfuscated":true},{"text":"> Yet, he"},{"text":"r","obfuscated":true},{"text":"e you a"},{"text":"r","obfuscated":true},{"text":"e..."}]

execute as @e[tag=spawn_herobrine_boss,scores={HerobrineTime=460}] run tellraw @a ["",{"text":"<"},{"text":"He","obfuscated":true},{"text":"ro"},{"text":"bri","obfuscated":true},{"text":"ne> Y"},{"text":"ou","obfuscated":true},{"text":" will "},{"text":"re","obfuscated":true},{"text":"gre"},{"text":"t t","obfuscated":true},{"text":"his "},{"text":"da","obfuscated":true},{"text":"y"}]

execute as @e[tag=spawn_herobrine_boss,scores={HerobrineTime=560}] run tellraw @a ["",{"text":"<H"},{"text":"e","obfuscated":true},{"text":"ro"},{"text":"br","obfuscated":true},{"text":"in"},{"text":"e","obfuscated":true},{"text":"> "},{"text":"P","color":"red"},{"text":"r","obfuscated":true,"color":"red"},{"text":"epa","color":"red"},{"text":"r","obfuscated":true,"color":"red"},{"text":"e to d","color":"red"},{"text":"i","obfuscated":true,"color":"red"},{"text":"e","color":"red"}]

execute as @e[tag=spawn_herobrine_boss,scores={HerobrineTime=355}] at @s run playsound minecraft:scare2 master @a
execute as @e[tag=spawn_herobrine_boss,scores={HerobrineTime=600}] at @s run function herobrine:boss/spawn
kill @e[tag=spawn_herobrine_boss,scores={HerobrineTime=610}]

# Death
execute as @e[type=item,nbt={Item:{tag:{HerobrineDeath:1b}}}] at @s run function herobrine:boss/head
execute as @e[tag=dead_herobrine_boss] at @s unless block ~ ~ ~ minecraft:player_head run function herobrine:boss/explode
execute at @e[tag=dead_herobrine_boss] run particle ash ~ ~ ~ 0.5 0.5 0.5 1 1

# MISC
execute as @e[tag=herobrine_noai] at @s unless block ~ ~-1 ~ #minecraft:valid_spawn run tp @s ~ ~-1 ~