#Checks if a player has the injection in hand
tag @a[team=!Knights,team=!Magicians] add vampirable
execute as @a[nbt={SelectedItem:{id:"vampirism:injection_sanguinare"}},tag=vampirable] at @a run scoreboard players set @s hasInjection 1
execute as @a[nbt=!{SelectedItem:{id:"vampirism:injection_sanguinare"}},tag=vampirable] at @a run scoreboard players set @s hasInjection 0

execute as @e[tag=injection] at @e[tag=injection] run team join nocollision @s

#If the player does, check the player is near a med chair
execute as @a[scores={hasInjection=1..}] at @a if block ~ ~-1 ~ vampirism:med_chair unless entity @e[type=minecraft:villager, distance=..3] run summon armor_stand ~ ~-1.5 ~ {Invisible:1b,Tags:["injection"],Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:villager", Tags:["injection"], Silent:1b,NoAI:1b,Invulnerable:1b,Offers:{Recipes:[]},ActiveEffects:[{Id:14b,Amplifier:0b,ShowParticles:0b,Duration:10000000},{Id:24b,Amplifier:0b,ShowParticles:0b,Duration:1000000}]}]}
execute unless entity @a[scores={hasInjection=1..},limit=1] run kill @e[tag=injection]

execute as @a[scores={hasInjection=1.., talk_to_vill=1..}] at @a run effect give @s vampirism:sanguinare 1000 0 false
execute as @a[scores={hasInjection=1.., talk_to_vill=1..}] at @a run say ha sido infectado!
execute as @a[scores={hasInjection=1.., talk_to_vill=1..}] at @a run clear @s vampirism:injection_sanguinare 1
execute as @a[scores={talk_to_vill=1..}] at @a run scoreboard players set @s talk_to_vill 0
