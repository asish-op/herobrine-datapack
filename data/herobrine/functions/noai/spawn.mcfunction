# Spread
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["spawn_herobrine_noai"]}
spreadplayers ~ ~ 0 30 false @e[tag=spawn_herobrine_noai]

# Kill
tp @e[tag=herobrine_noai] ~ -500 ~

# Summon
execute at @e[tag=spawn_herobrine_noai] run summon zombie ~ ~ ~ {NoAI:1b,Tags:["herobrine_noai"],CustomName:'{"text":"Herobrine"}',Silent:1b,ArmorItems:[{},{},{},{id:"stone_button",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],Invulnerable:1b}
execute if predicate herobrine:split run tag @e[tag=herobrine_noai] add split
execute if predicate herobrine:scare run tag @e[tag=herobrine_noai,tag=!split] add scare

# Reset
kill @e[tag=spawn_herobrine_noai]