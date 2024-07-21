#GROUP TEAMS

tag @a[team=VampiresR0] add Vampire
tag @a[team=VampiresR1] add Vampire
tag @a[team=VampiresR2] add Vampire
tag @a[team=VampiresR3] add Vampire
tag @a[team=VampiresR4] add Vampire
tag @a[team=VampiresR5] add Vampire
tag @a[team=VampiresR6] add Vampire

tag @a[team=MagiciansR0] add Magician
tag @a[team=MagiciansR1] add Magician
tag @a[team=MagiciansR2] add Magician
tag @a[team=MagiciansR3] add Magician
tag @a[team=MagiciansR4] add Magician
tag @a[team=MagiciansR5] add Magician
tag @a[team=MagiciansR6] add Magician

tag @a[team=KnightsR0] add Knight
tag @a[team=KnightsR1] add Knight
tag @a[team=KnightsR2] add Knight
tag @a[team=KnightsR3] add Knight
tag @a[team=KnightsR4] add Knight
tag @a[team=KnightsR5] add Knight
tag @a[team=KnightsR6] add Knight

# VAMPIRE SANGUINARE EFFECT FIX (DISABLE fangInfection in Vampirism config file)

#Checks if a player has the injection in hand, and is able to be a vampire
tag @a[tag=!Knight,tag=!Magician] add vampirable
tag @a[tag=!Vampire,team=!Default] remove vampirable
execute as @a[tag=!Vampire,team=!Default] run effect clear @s vampirism:sanguinare
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

#START OF CLASS-SPECIFIC ITEM PREVENTION

execute as @a[scores={BannedItems=1..}] run effect give @s minecraft:weakness 2 100 true

execute as @a[scores={BannedItems=0}] run tag @s add forbiddenClear
execute as @a[scores={BannedItems=1..},tag=forbiddenClear] run function servertweaks:has_banned

#Vampires

execute as @a[tag=!Knight,tag=!Magician,team=!Default] run execute store result score @s BannedItems run clear @s #servertweaks:servertweaks.vampirebanned 0

#Magicians

execute as @a[tag=!Knight,tag=!Vampire,team=!Default] run execute store result score @s BannedItems run clear @s #servertweaks:servertweaks.magicianbanned 0

#Knights

execute as @a[tag=!Vampire,tag=!Magician,team=!Default] run execute store result score @s BannedItems run clear @s #servertweaks:servertweaks.knightbanned 0

# END OF CLASS-SPECIFIC ITEM PREVENTION

#ADVANCEMENT AUXILIAR COMMANDS

#FLYING PIGS

tag @e[type=minecraft:pig,nbt={ActiveEffects:[{Id:25}]}] add levit
execute as @e[tag=levit] run execute at @s run tag @a[distance=..50] add granted
execute as @e[tag=levit] run effect clear @s majruszsdifficulty:bleeding
execute as @e[tag=levit] run effect clear @s mahoutsukai:bleeding 
execute as @a[tag=granted] run execute at @s unless entity @e[tag=levit,distance=..150] run advancement grant @s only servertweaks:servertweaks/flyingpigs flying_pig
execute as @a[tag=granted] run execute at @s unless entity @e[tag=levit,distance=..150] run tag @s remove granted