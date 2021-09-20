# Revoke
advancement revoke @s only herobrine:slept

# Commands
execute if block ~ ~ ~ #minecraft:beds[facing=south] positioned ~ ~ ~-2 align zyx positioned ~0.5 ~ ~0.5 run summon zombie ~ ~ ~ {NoAI:1b,Tags:["herobrine_bed"],CustomName:'{"text":"Herobrine"}',Silent:1b,ArmorItems:[{},{},{},{id:"stone_button",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],Invulnerable:1b}
    
execute if block ~ ~ ~ #minecraft:beds[facing=north] positioned ~ ~ ~2 align zyx positioned ~0.5 ~ ~0.5 run summon zombie ~ ~ ~ {NoAI:1b,Tags:["herobrine_bed"],CustomName:'{"text":"Herobrine"}',Silent:1b,ArmorItems:[{},{},{},{id:"stone_button",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],Invulnerable:1b,Rotation:[180f,0f]}
    
execute if block ~ ~ ~ #minecraft:beds[facing=east] positioned ~-2 ~ ~ align zyx positioned ~0.5 ~ ~0.5 run summon zombie ~ ~ ~ {NoAI:1b,Tags:["herobrine_bed"],CustomName:'{"text":"Herobrine"}',Silent:1b,ArmorItems:[{},{},{},{id:"stone_button",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],Invulnerable:1b,Rotation:[270f,0f]}
    
execute if block ~ ~ ~ #minecraft:beds[facing=west] positioned ~2 ~ ~ align zyx positioned ~0.5 ~ ~0.5 run summon zombie ~ ~ ~ {NoAI:1b,Tags:["herobrine_bed"],CustomName:'{"text":"Herobrine"}',Silent:1b,ArmorItems:[{},{},{},{id:"stone_button",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],Invulnerable:1b,Rotation:[90f,0f]}
    
# Effects
playsound minecraft:scare1 master @a
effect give @s minecraft:blindness 3 1 true