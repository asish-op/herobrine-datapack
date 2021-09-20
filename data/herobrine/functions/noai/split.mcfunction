# Despawn
function herobrine:despawn_silent

# Effects
summon tnt

# Summon
summon zombie ~ ~ ~ {Tags:["herobrine_split","herobrine_zombie"],ArmorItems:[{},{},{},{id:"stone_button",Count:1b}],Invulnerable:1b}
summon zombie ~ ~ ~ {Tags:["herobrine_split","herobrine_zombie"],ArmorItems:[{},{},{},{id:"stone_button",Count:1b}],Invulnerable:1b}
summon zombie ~ ~ ~ {Tags:["herobrine_split","herobrine_zombie"],ArmorItems:[{},{},{},{id:"stone_button",Count:1b}],Invulnerable:1b}
summon zombie ~ ~ ~ {Tags:["herobrine_split","herobrine_zombie"],ArmorItems:[{},{},{},{id:"stone_button",Count:1b}],Invulnerable:1b}

# Spread
spreadplayers ~ ~ 1 5 false @e[tag=herobrine_split]
tag @e[tag=herobrine_split,type=zombie] remove herobrine_split