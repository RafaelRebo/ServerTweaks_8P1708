# VAMPIRE SANGUINARE EFFECT FIX (DISABLE fangInfection in Vampirism config file)

#Checks if a player has the injection in hand, and is able to be a vampire
tag @a[team=!Knights,team=!Magicians] add vampirable
tag @a[team=!Vampires,team=!Default] remove vampirable
execute as @a[team=!Vampires,team=!Default] run effect clear @s vampirism:sanguinare
execute as @a[nbt={SelectedItem:{id:"vampirism:injection_sanguinare"}},tag=vampirable] at @a run scoreboard players set @s hasInjection 1
execute as @a[nbt=!{SelectedItem:{id:"vampirism:injection_sanguinare"}},tag=vampirable] at @a run scoreboard players set @s hasInjection 0

#Makes the villager unable to collision with the player
execute as @e[tag=injection] at @e[tag=injection] run team join nocollision @s
execute as @e[tag=injection] at @e[tag=injection] unless entity @e[type=area_effect_cloud,distance=..7] run summon area_effect_cloud ~ ~0.5 ~ {Duration:2000000,CustomName:'"Click derecho aqui para infectarte"',CustomNameVisible:1b,Tags:["injection"]}

#If a player has an injection and is over a med chair, they will be able to right-click a villager to get sanguinare
execute as @a[scores={hasInjection=1..},tag=vampirable] at @a if block ~ ~-1 ~ vampirism:med_chair unless entity @e[type=minecraft:villager, distance=..3] run summon armor_stand ~ ~-1.5 ~ {Invisible:1b,Tags:["injection"],Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:villager", Tags:["injection"], Silent:1b,NoAI:1b,Invulnerable:1b,Offers:{Recipes:[]},ActiveEffects:[{Id:14b,Amplifier:0b,ShowParticles:0b,Duration:10000000}]}]}
#Kills all villagers if no player has an injection in hand
execute unless entity @a[scores={hasInjection=1..},limit=1,tag=vampirable] run kill @e[tag=injection]

#Gives the sanguinare effect to the player that clicked the villager
execute as @a[scores={hasInjection=1.., talkvill=1..},tag=vampirable] at @a run effect give @s vampirism:sanguinare 1000 0 false
execute as @a[scores={hasInjection=1.., talkvill=1..},tag=vampirable] at @a run tellraw @a [{"selector":"@s"},{"text":" ha sido infectado!"}]
execute as @a[scores={hasInjection=1.., talkvill=1..},tag=vampirable] at @a run clear @s vampirism:injection_sanguinare 1
execute as @a[scores={hasInjection=1.., talkvill=1..},tag=vampirable] at @a run kill @e[tag=injection]
execute as @a[scores={hasInjection=1.., talkvill=1..},tag=vampirable] at @a run playsound vampirism:entity_vampire_scream ambient @s ~ ~ ~ 100 0.8
execute as @a[scores={talkvill=1..}] at @a run scoreboard players set @s talkvill 0

execute as @a run execute as @s unless entity @s[scores={hasInjection=1.., talkvill=1..}] at @s if data entity @s ActiveEffects[{"forge:id":"vampirism:poison"}] run effect clear @s vampirism:sanguinare
execute as @a run execute as @s unless entity @s[scores={hasInjection=1.., talkvill=1..}] at @s if data entity @s ActiveEffects[{"forge:id":"vampirism:poison"}] run effect clear @s vampirism:poison

# END OF VAMPIRE SANGUINARE EFFECT FIX --------------------------------------------------------------------

#dsaikuhdsaidusah
# IRON'S SPELL UNABLE (ALL BUT MAGICIANS)

