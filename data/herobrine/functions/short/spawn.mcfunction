# Kill
tp @e[tag=herobrine_mine] ~ -500 ~

# Summon
summon zombie ~ ~ ~ {NoAI:1b,Tags:["herobrine_mine"],CustomName:'{"text":"Herobrine"}',Silent:1b,ArmorItems:[{},{},{},{id:"stone_button",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}],Invulnerable:1b}

# Teleport
execute as @e[tag=herobrine_mine] at @s run tp @s ~ ~ ~ facing entity @p