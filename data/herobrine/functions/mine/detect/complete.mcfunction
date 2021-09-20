# Detect
execute rotated ~ 0 positioned ^ ^ ^ run function herobrine:mine/detect/slice
execute rotated ~ 0 positioned ^ ^ ^-1 run function herobrine:mine/detect/slice
execute rotated ~ 0 positioned ^ ^ ^-2 run function herobrine:mine/detect/slice
execute rotated ~ 0 positioned ^ ^ ^-4 run function herobrine:mine/detect/slice

execute if score @s HerobrineAcc matches 14.. at @s rotated ~ 0 positioned ^ ^ ^1 if block ~ ~ ~ air run function herobrine:mine/spawn
    
# Reset
scoreboard players set @s HerobrineAcc 0