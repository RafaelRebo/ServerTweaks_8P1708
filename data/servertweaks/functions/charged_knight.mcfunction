tag @s[scores={sneakTime=100..}] add sneaking
scoreboard players reset @s[tag=sneaking,scores={sneakTime=100..}] sneakTime
tag @s[tag=wasSneaking] remove wasSneaking
tag @s[tag=sneaking] add wasSneaking
tag @s[tag=sneaking] remove sneaking

execute if score @s sneakTime matches 1 run title @s actionbar {"text":"5 segundos para supercarga","color":"yellow"}
execute if score @s sneakTime matches 20 run title @s actionbar {"text":"4 segundos para supercarga","color":"yellow"} 
execute if score @s sneakTime matches 40 run title @s actionbar {"text":"3 segundos para supercarga","color":"yellow"}
execute if score @s sneakTime matches 60 run title @s actionbar {"text":"2 segundos para supercarga","color":"yellow"}
execute if score @s sneakTime matches 80 run title @s actionbar {"text":"1 segundos para supercarga","color":"yellow"}

execute if entity @s[scores={sneakTime=40..99}] at @s run particle minecraft:crit ~ ~-1.5 ~ 0.2 0 0.2 1 30 normal @a[distance=..32]
execute if score @s sneakTime matches 40 at @s run playsound item.firecharge.use master @a ~ ~ ~ 20 1
execute if score @s sneakTime matches 60 at @s run playsound item.firecharge.use master @a ~ ~ ~ 20 1.3
execute if score @s sneakTime matches 80 at @s run playsound item.firecharge.use master @a ~ ~ ~ 20 1.6

execute if score @s sneakTime matches 99 run tag @s add overcharged