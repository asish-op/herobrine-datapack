# Kill
kill @s[tag=spawn_herobrine_boss]

# Playsound
playsound minecraft:entity.wither.spawn master @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0
playsound minecraft:scare1 master @a

# Spawn
summon minecraft:fireball ~ ~ ~ {Motion:[0.0d,-1.0d,0.0d],ExplosionPower:3}

# Data
execute as @e[tag=herobrine_boss] run data modify entity @s NoAI set value 0b
execute as @e[tag=herobrine_boss] run data modify entity @s Invulnerable set value 0b