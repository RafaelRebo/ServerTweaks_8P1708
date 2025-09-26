#UPGRADED BOOK CRAFTING

execute as @e[type=item,predicate=servertweaks:netherite_spellbook] at @s as @e[type=item,limit=1,sort=nearest,distance=0..1,predicate=servertweaks:antique_ink] at @s if block ~ ~-1 ~ irons_spellbooks:pedestal run data modify block ~ ~-1 ~ heldItem set value {id:"irons_spellbooks:netherite_spell_book",Count:1b,tag:{ISB_Spells:{maxSpells:15,mustEquip:1b,spellWheel:1b}}}
execute as @e[type=item,predicate=servertweaks:necronomicon] at @s as @e[type=item,limit=1,sort=nearest,distance=0..1,predicate=servertweaks:antique_ink] at @s if block ~ ~-1 ~ irons_spellbooks:pedestal run data modify block ~ ~-1 ~ heldItem set value {id:"irons_spellbooks:necronomicon_spell_book",Count:1b,tag:{ISB_Spells:{maxSpells:15,mustEquip:1b,spellWheel:1b}}}
execute as @e[type=item,predicate=servertweaks:evoker_spellbook] at @s as @e[type=item,limit=1,sort=nearest,distance=0..1,predicate=servertweaks:antique_ink] at @s if block ~ ~-1 ~ irons_spellbooks:pedestal run data modify block ~ ~-1 ~ heldItem set value {id:"irons_spellbooks:evoker_spell_book",Count:1b,tag:{ISB_Spells:{maxSpells:15,mustEquip:1b,spellWheel:1b}}}
execute as @e[type=item,predicate=servertweaks:villager_spellbook] at @s as @e[type=item,limit=1,sort=nearest,distance=0..1,predicate=servertweaks:antique_ink] at @s if block ~ ~-1 ~ irons_spellbooks:pedestal run data modify block ~ ~-1 ~ heldItem set value {id:"irons_spellbooks:villager_spell_book",Count:1b,tag:{ISB_Spells:{maxSpells:15,mustEquip:1b,spellWheel:1b}}}
execute as @e[type=item,predicate=servertweaks:druidic_spellbook] at @s as @e[type=item,limit=1,sort=nearest,distance=0..1,predicate=servertweaks:antique_ink] at @s if block ~ ~-1 ~ irons_spellbooks:pedestal run data modify block ~ ~-1 ~ heldItem set value {id:"irons_spellbooks:druidic_spell_book",Count:1b,tag:{ISB_Spells:{maxSpells:15,mustEquip:1b,spellWheel:1b}}}
execute as @e[type=item,predicate=servertweaks:dragonskin_spellbook] at @s as @e[type=item,limit=1,sort=nearest,distance=0..1,predicate=servertweaks:antique_ink] at @s if block ~ ~-1 ~ irons_spellbooks:pedestal run data modify block ~ ~-1 ~ heldItem set value {id:"irons_spellbooks:dragonskin_spell_book",Count:1b,tag:{ISB_Spells:{maxSpells:15,mustEquip:1b,spellWheel:1b}}}
execute as @e[type=item,predicate=servertweaks:blaze_spellbook] at @s as @e[type=item,limit=1,sort=nearest,distance=0..1,predicate=servertweaks:antique_ink] at @s if block ~ ~-1 ~ irons_spellbooks:pedestal run data modify block ~ ~-1 ~ heldItem set value {id:"irons_spellbooks:blaze_spell_book",Count:1b,tag:{ISB_Spells:{maxSpells:15,mustEquip:1b,spellWheel:1b}}}
execute as @e[type=item,predicate=servertweaks:diamond_spellbook] at @s as @e[type=item,limit=1,sort=nearest,distance=0..1,predicate=servertweaks:antique_ink] at @s if block ~ ~-1 ~ irons_spellbooks:pedestal run data modify block ~ ~-1 ~ heldItem set value {id:"irons_spellbooks:diamond_spell_book",Count:1b,tag:{ISB_Spells:{maxSpells:15,mustEquip:1b,spellWheel:1b}}}

execute as @e[type=item,predicate=servertweaks:netherite_spellbook] at @s as @e[type=item,limit=1,sort=nearest,distance=0..1,predicate=servertweaks:antique_ink] at @s if block ~ ~-1 ~ irons_spellbooks:pedestal run tag @s add fresh_craft
execute as @e[type=item,predicate=servertweaks:necronomicon] at @s as @e[type=item,limit=1,sort=nearest,distance=0..1,predicate=servertweaks:antique_ink] at @s if block ~ ~-1 ~ irons_spellbooks:pedestal run tag @s add fresh_craft
execute as @e[type=item,predicate=servertweaks:evoker_spellbook] at @s as @e[type=item,limit=1,sort=nearest,distance=0..1,predicate=servertweaks:antique_ink] at @s if block ~ ~-1 ~ irons_spellbooks:pedestal run tag @s add fresh_craft
execute as @e[type=item,predicate=servertweaks:villager_spellbook] at @s as @e[type=item,limit=1,sort=nearest,distance=0..1,predicate=servertweaks:antique_ink] at @s if block ~ ~-1 ~ irons_spellbooks:pedestal run tag @s add fresh_craft
execute as @e[type=item,predicate=servertweaks:druidic_spellbook] at @s as @e[type=item,limit=1,sort=nearest,distance=0..1,predicate=servertweaks:antique_ink] at @s if block ~ ~-1 ~ irons_spellbooks:pedestal run tag @s add fresh_craft
execute as @e[type=item,predicate=servertweaks:dragonskin_spellbook] at @s as @e[type=item,limit=1,sort=nearest,distance=0..1,predicate=servertweaks:antique_ink] at @s if block ~ ~-1 ~ irons_spellbooks:pedestal run tag @s add fresh_craft
execute as @e[type=item,predicate=servertweaks:blaze_spellbook] at @s as @e[type=item,limit=1,sort=nearest,distance=0..1,predicate=servertweaks:antique_ink] at @s if block ~ ~-1 ~ irons_spellbooks:pedestal run tag @s add fresh_craft
execute as @e[type=item,predicate=servertweaks:diamond_spellbook] at @s as @e[type=item,limit=1,sort=nearest,distance=0..1,predicate=servertweaks:antique_ink] at @s if block ~ ~-1 ~ irons_spellbooks:pedestal run tag @s add fresh_craft

execute as @e[tag=fresh_craft] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 20 1.3
execute as @e[tag=fresh_craft] at @s run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 20 0.8
execute as @e[tag=fresh_craft] at @s run particle minecraft:enchant ~ ~1.4 ~ 0.2 0 0.2 2 500 normal @a[distance=..32]
execute as @e[tag=fresh_craft] at @s run advancement grant @p only servertweaks:servertweaks/ink_book nunca_ocurre
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,predicate=servertweaks:netherite_spellbook,sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,predicate=servertweaks:necronomicon,sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,predicate=servertweaks:evoker_spellbook,sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,predicate=servertweaks:villager_spellbook,sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,predicate=servertweaks:druidic_spellbook,sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,predicate=servertweaks:dragonskin_spellbook,sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,predicate=servertweaks:blaze_spellbook,sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,predicate=servertweaks:diamond_spellbook,sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,predicate=servertweaks:antique_ink,sort=nearest,limit=1]
execute as @e[tag=fresh_craft] run tag @s remove fresh_craft

#FIRE PROJECTILES MECHANIC

execute as @e[type=irons_spellbooks:firebolt] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ cave_air run setblock ~ ~ ~ fire
execute as @e[type=irons_spellbooks:firebolt] at @s unless block ~1 ~ ~ air unless block ~1 ~ ~ cave_air run setblock ~ ~ ~ fire
execute as @e[type=irons_spellbooks:firebolt] at @s unless block ~-1 ~ ~ air unless block ~-1 ~ ~ cave_air run setblock ~ ~ ~ fire
execute as @e[type=irons_spellbooks:firebolt] at @s unless block ~ ~ ~1 air unless block ~ ~ ~1 cave_air run setblock ~ ~ ~ fire
execute as @e[type=irons_spellbooks:firebolt] at @s unless block ~ ~ ~-1 air unless block ~ ~ ~-1 cave_air run setblock ~ ~ ~ fire
execute as @e[type=irons_spellbooks:firebolt] at @s unless block ~1 ~ ~1 air unless block ~1 ~ ~1 cave_air run setblock ~ ~ ~ fire
execute as @e[type=irons_spellbooks:firebolt] at @s unless block ~-1 ~ ~1 air unless block ~-1 ~ ~1 cave_air run setblock ~ ~ ~ fire
execute as @e[type=irons_spellbooks:firebolt] at @s unless block ~-1 ~ ~-1 air unless block ~-1 ~ ~-1 cave_air run setblock ~ ~ ~ fire
execute as @e[type=irons_spellbooks:firebolt] at @s unless block ~1 ~ ~-1 air unless block ~1 ~ ~-1 cave_air run setblock ~ ~ ~ fire

#OVERCHARGED MAGICIAN MECHANIC

execute as @a[tag=Magician] store result score @s maxMana run attribute @s irons_spellbooks:max_mana get
execute as @a[tag=Magician] store result score @s currentMana run mana get @s
execute as @a[tag=Magician] if score @s currentMana = @s maxMana run tag @s add atMaxMana
execute as @a[tag=Magician] if score @s currentMana < @s maxMana run tag @s remove atMaxMana

execute as @a unless predicate servertweaks:sneaking run scoreboard players set @s sneakTime 0
execute as @a[tag=!Magician,tag=!Knight,tag=!Vampire] run scoreboard players set @s sneakTime 0
execute as @a[tag=Magician,tag=overchargeUnlocked,tag=!inCooldown,tag=!overcharged,tag=atMaxMana,tag=overchargeToggled] run function servertweaks:charged_magic

execute as @a[tag=Magician,tag=overchargeUnlocked,tag=!inCooldown,tag=!overcharged,tag=!atMaxMana,tag=overchargeToggled] if entity @s[scores={sneakTime=20..}] run title @s actionbar {"text":"Supercarga no disponible sin maná máximo","color":"red"}

execute as @a[tag=Magician,tag=!overcharged] run scoreboard players set @s chargedTimer 0
execute as @a[tag=Magician,tag=overcharged] run attribute @s irons_spellbooks:spell_power base set 5
execute as @a[tag=Magician,tag=overcharged] run attribute @s irons_spellbooks:mana_regen base set -100000
execute as @a[tag=Magician,tag=overcharged] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0 0.2 0.1 3 normal @a[distance=..32]
execute as @a[tag=Magician,tag=overcharged] run scoreboard players add @s chargedTimer 1
execute as @a[tag=Magician,tag=overcharged,scores={chargedTimer=200..}] run tag @s add inCooldown

execute as @a[tag=Magician,tag=!inCooldown] run scoreboard players set @s cooldownTimer 0
execute as @a[tag=Magician,tag=inCooldown] run tag @s remove overcharged
execute as @a[tag=Magician,tag=inCooldown] run attribute @s irons_spellbooks:max_mana base set -100000
execute as @a[tag=Magician,tag=inCooldown] run attribute @s irons_spellbooks:spell_power base set 1
execute as @a[tag=Magician,tag=inCooldown] run attribute @s minecraft:generic.movement_speed base set 0.05
execute as @a[tag=Magician,tag=inCooldown] run effect give @s weakness 1 100 true
execute as @a[tag=Magician,tag=inCooldown] run scoreboard players add @s cooldownTimer 1
execute as @a[tag=Magician,tag=inCooldown] at @s run particle minecraft:large_smoke ~ ~ ~ 0.1 0 0.1 0.05 3 normal @a[distance=..32]
execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 199 run tag @s add resetmana
execute as @a[tag=Magician,tag=inCooldown,scores={cooldownTimer=200..}] run tag @s remove inCooldown

execute as @a[tag=Magician,tag=!inCooldown,tag=resetmana] run attribute @s irons_spellbooks:max_mana base set 100
execute as @a[tag=Magician,tag=!inCooldown,tag=resetmana] run attribute @s irons_spellbooks:mana_regen base set 1
execute as @a[tag=Magician,tag=!inCooldown,tag=resetmana] run attribute @s minecraft:generic.movement_speed base set 0.1
execute as @a[tag=Magician,tag=!inCooldown,tag=resetmana] run tag @s remove resetmana

execute as @a[tag=Magician] run function servertweaks:magician_sounds

#OVERCHARGED KNIGHT MECHANIC

execute as @a[tag=Knight] if score @s food matches 20 run tag @s add atMaxHunger
execute as @a[tag=Knight] if entity @s[scores={food=..19}] run tag @s remove atMaxHunger

execute as @a[tag=Knight,tag=overchargeUnlocked,tag=!inCooldown,tag=!overcharged,tag=atMaxHunger,tag=overchargeToggled] run function servertweaks:charged_knight

execute as @a[tag=Knight,tag=overchargeUnlocked,tag=!inCooldown,tag=!overcharged,tag=!atMaxHunger,tag=overchargeToggled] if entity @s[scores={sneakTime=20..}] run title @s actionbar {"text":"Supercarga no disponible sin barra de hambre completa","color":"red"}

execute as @a[tag=Knight,tag=!overcharged] run scoreboard players set @s chargedTimer 0
execute as @a[tag=Knight,tag=overcharged] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-1 ExtraChargedDamage 1.5 multiply 
execute as @a[tag=Knight,tag=overcharged] run attribute @s minecraft:generic.armor base set 16
execute as @a[tag=Knight,tag=overcharged] run attribute @s minecraft:generic.movement_speed base set 0.15
execute as @a[tag=Knight,tag=overcharged] run attribute @s minecraft:generic.attack_speed base set 4.5
execute as @a[tag=Knight,tag=overcharged] at @s run particle minecraft:end_rod ~ ~ ~ 0.2 0 0.2 0.1 3 normal @a[distance=..32]
execute as @a[tag=Knight,tag=overcharged] run scoreboard players add @s chargedTimer 1
execute as @a[tag=Knight,tag=overcharged,scores={chargedTimer=300..}] run tag @s add inCooldown

execute as @a[tag=Knight,tag=!inCooldown] run scoreboard players set @s cooldownTimer 0
execute as @a[tag=Knight,tag=inCooldown] run tag @s remove overcharged
execute as @a[tag=Knight,tag=inCooldown] run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-1
execute as @a[tag=Knight,tag=inCooldown] run attribute @s minecraft:generic.armor base set 1
execute as @a[tag=Knight,tag=inCooldown] run attribute @s minecraft:generic.movement_speed base set 0.05
execute as @a[tag=Knight,tag=inCooldown] run attribute @s minecraft:generic.attack_speed base set 4
execute as @a[tag=Knight,tag=inCooldown] run effect give @s weakness 1 100 true
execute as @a[tag=Knight,tag=inCooldown] run scoreboard players add @s cooldownTimer 1
execute as @a[tag=Knight,tag=inCooldown] at @s run particle minecraft:large_smoke ~ ~ ~ 0.1 0 0.1 0.05 3 normal @a[distance=..32]
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 199 run tag @s add resetmana
execute as @a[tag=Knight,tag=inCooldown,scores={cooldownTimer=600..}] run tag @s remove inCooldown

execute as @a[tag=Knight,tag=!inCooldown,tag=resetmana] run attribute @s minecraft:generic.movement_speed base set 0.1
execute as @a[tag=Knight,tag=!inCooldown,tag=resetmana] run tag @s remove resetmana

execute as @a[tag=Knight] run function servertweaks:knight_sounds

#TEAM JOIN COMMANDS

execute as @a[tag=Arcanista,scores={PuntoH=0},team=!MagiciansR2] run team join MagiciansR2 @s
execute as @a[tag=Arcanista,scores={PuntoH=1},team=!MagiciansR3] run team join MagiciansR3 @s
execute as @a[tag=Arcanista,scores={PuntoH=2},team=!MagiciansR4] run team join MagiciansR4 @s
execute as @a[team=MagiciansR4] run tag @s add archmage
execute as @a[tag=archmage] run attribute @s irons_spellbooks:max_mana modifier add 0-0-0-0-2 MaxArchmageMana 50 add
execute as @a[tag=archmage] run attribute @s irons_spellbooks:cooldown_reduction base set 1.4
execute as @a[tag=archmage] run tag @s remove archmage

execute as @a[tag=Combatiente,scores={PuntoG=0},team=!KnightsR2] run team join KnightsR2 @s
execute as @a[tag=Combatiente,scores={PuntoG=1},team=!KnightsR3] run team join KnightsR3 @s
execute as @a[tag=Combatiente,scores={PuntoG=2},team=!KnightsR4] run team join KnightsR4 @s

execute as @a[tag=!Magician] run tag @s remove archmage
execute as @a[tag=!Magician] run tag @s remove Arcanista
execute as @a[tag=!Knight] run tag @s remove Combatiente

#INVISIBILITY

execute as @a if predicate servertweaks:hasinvis run tag @s add invisible
execute as @a if predicate servertweaks:hastrueinvis run tag @s add invisible

execute as @a[tag=invisible] run attribute @s skilltree:stealth modifier add 0-0-0-0-3 Stealth 10000 add
execute as @a[tag=invisible] run tag @s remove invisible

execute as @a unless predicate servertweaks:hasinvis unless predicate servertweaks:hastrueinvis run attribute @s skilltree:stealth modifier remove 0-0-0-0-3

#ALQUIMISTA

execute as @a[tag=Alquimista] run effect give @s water_breathing 2 0 true

#START OF CLASS-SPECIFIC ITEM PREVENTION

execute as @a[scores={BannedItems=1..}] run effect give @s minecraft:weakness 2 100 true

execute as @a[scores={BannedItems=0}] run tag @s add forbiddenClear
execute as @a[scores={BannedItems=1..},tag=forbiddenClear] run function servertweaks:has_banned

#Magicians

execute as @a[tag=!Knight,tag=!Vampire,team=!Default] run execute store result score @s BannedItems run clear @s #servertweaks:servertweaks.magicianbanned 0

#Knights

execute as @a[tag=!Vampire,tag=!Magician,team=!Default] run execute store result score @s BannedItems run clear @s #servertweaks:servertweaks.knightbanned 0

# END OF CLASS-SPECIFIC ITEM PREVENTION

execute as @a[team=KnightsR0] run advancement grant @s only servertweaks:servertweaks/knightr0 knightr0
execute as @a[team=KnightsR1] run advancement grant @s only servertweaks:servertweaks/knightr1 knightr1
execute as @a[team=KnightsR2] run advancement grant @s only servertweaks:servertweaks/knightr2 knightr2
execute as @a[team=KnightsR3] run advancement grant @s only servertweaks:servertweaks/knightr3 knightr3
execute as @a[team=KnightsR4] run advancement grant @s only servertweaks:servertweaks/knightr4 knightr4

execute as @a[team=MagiciansR0] run advancement grant @s only servertweaks:servertweaks/magicianr0 magicianr0
execute as @a[team=MagiciansR1] run advancement grant @s only servertweaks:servertweaks/magicianr1 magicianr1
execute as @a[team=MagiciansR2] run advancement grant @s only servertweaks:servertweaks/magicianr2 magicianr2
execute as @a[team=MagiciansR3] run advancement grant @s only servertweaks:servertweaks/magicianr3 magicianr3
execute as @a[team=MagiciansR4] run advancement grant @s only servertweaks:servertweaks/magicianr4 magicianr4

#GROUP TEAMS

tag @a[team=MagiciansR0] add Magician
tag @a[team=MagiciansR1] add Magician
tag @a[team=MagiciansR2] add Magician
tag @a[team=MagiciansR3] add Magician
tag @a[team=MagiciansR4] add Magician
tag @a[team=MagiciansR0] remove Knight
tag @a[team=MagiciansR1] remove Knight
tag @a[team=MagiciansR2] remove Knight
tag @a[team=MagiciansR3] remove Knight
tag @a[team=MagiciansR4] remove Knight

execute as @a[team=MagiciansR0] run scoreboard players set @s MagicianRank 0
execute as @a[team=MagiciansR1] run scoreboard players set @s MagicianRank 1 
execute as @a[team=MagiciansR2] run scoreboard players set @s MagicianRank 2
execute as @a[team=MagiciansR3] run scoreboard players set @s MagicianRank 3
execute as @a[team=MagiciansR4] run scoreboard players set @s MagicianRank 4

tag @a[team=KnightsR0] add Knight
tag @a[team=KnightsR1] add Knight
tag @a[team=KnightsR2] add Knight
tag @a[team=KnightsR3] add Knight
tag @a[team=KnightsR4] add Knight
tag @a[team=KnightsR0] remove Magician
tag @a[team=KnightsR1] remove Magician
tag @a[team=KnightsR2] remove Magician
tag @a[team=KnightsR3] remove Magician
tag @a[team=KnightsR4] remove Magician


execute as @a[team=KnightsR0] run scoreboard players set @s KnightsRank 0
execute as @a[team=KnightsR1] run scoreboard players set @s KnightsRank 1 
execute as @a[team=KnightsR2] run scoreboard players set @s KnightsRank 2
execute as @a[team=KnightsR3] run scoreboard players set @s KnightsRank 3
execute as @a[team=KnightsR4] run scoreboard players set @s KnightsRank 4

#Bossbar toggling

bossbar set minecraft:on players @a[tag=overchargeUnlocked, tag=overchargeToggled]
bossbar set minecraft:off players @a[tag=overchargeUnlocked, tag=!overchargeToggled]

#Fall damage negate

execute as @a[predicate=servertweaks:hasborrowedauthority] at @s store result score @s falldistance run data get entity @s FallDistance
execute as @a[predicate=servertweaks:hasborrowedauthority] at @s if entity @s[scores={falldistance=4..}] unless block ~ ~-4 ~ air run effect give @s minecraft:slow_falling 2 0 true

