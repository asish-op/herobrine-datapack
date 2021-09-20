# Reset
function herobrine:kill

# Kill
kill @s[type=item]

# Summon
execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,Tags:["spawn_herobrine_boss"]}

# Start
tellraw @a {"text":"Herobrine joined the game","color":"yellow"}
effect give @a[distance=..20] minecraft:blindness 33 1 true
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0
time set night

# Spawn
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:zombie ~ ~ ~ {CustomName:"\"Herobrine\"",CustomNameVisible:1,PersistenceRequired:1b,Health:200,Attributes:[{Name:"generic.max_health",Base:200},{Name:"generic.follow_range",Base:150},{Name:"generic.knockback_resistance",Base:0.2f},{Name:"generic.movement_speed",Base:0.4f},{Name:"generic.attack_damage",Base:7}],Fire:20,Silent:1,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1}],Tags:["herobrine_boss"],Invulnerable:1b,NoAI:1b}