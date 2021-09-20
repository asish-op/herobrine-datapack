summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Tags:["herobrine_fire"],Invisible:1b}
spreadplayers ~ ~ 1 10 false @e[tag=herobrine_fire]
execute at @e[tag=herobrine_fire] if block ~ ~ ~ air run setblock ~ ~ ~ fire
kill @e[tag=herobrine_fire]