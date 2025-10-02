execute unless entity @e[type=!player,distance=..1.5] positioned ^ ^ ^0.2 if entity @s[distance=..10] if block ~ ~ ~ air run function servertweaks:terror_sight
execute unless entity @e[type=!player,distance=..1.5] positioned ^ ^ ^0.2 if entity @s[distance=..10] if block ~ ~ ~ cave_air run function servertweaks:terror_sight
execute unless entity @e[type=!player,distance=..1.5] positioned ^ ^ ^0.2 if entity @s[distance=..10] if block ~ ~ ~ water run function servertweaks:terror_sight

effect give @e[tag=!Vampire,distance=..1.5] minecraft:slowness 8 100 true
effect give @e[tag=!Vampire,distance=..1.5] minecraft:blindness 2 0 true
effect give @e[tag=!Vampire,distance=..1.5] minecraft:glowing 2 0 true
effect give @e[tag=!Player,type=!#servertweaks:undead,nbt=!{ActiveEffects:[{Id:7}]},distance=..1.5] minecraft:instant_damage 5 0 true
effect give @e[tag=!Player,type=#servertweaks:undead,nbt=!{ActiveEffects:[{Id:6}]},distance=..1.5] minecraft:instant_health 5 0 true