tellraw @a {"text": "ServerTweaks by Octopusi1708 loaded!","bold": true, "color": "#00FFFF"}

#General purpose commands
scoreboard objectives add health health {"text": "♥","color": "red"}
scoreboard objectives add hasInjection dummy
scoreboard objectives add talkvill minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add BannedItems dummy
scoreboard objectives add sneakTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add cooldownTimer dummy
scoreboard objectives add chargedTimer dummy
scoreboard objectives add currentMana dummy
scoreboard objectives add maxMana dummy
scoreboard objectives add food food
gamerule playersSleepingPercentage 1

execute as @a[tag=Magician] run attribute @s irons_spellbooks:spell_resist base set 1.3
execute as @a[tag=Magician] run attribute @s irons_spellbooks:mana_regen base set 1.3
execute as @a[tag=Knight] run attribute @s minecraft:generic.armor base set 6
execute as @a[tag=Knight] run attribute @s skilltree:regeneration base set 0.25
execute as @a[tag=Knight] run attribute @s irons_spellbooks:spell_resist base set 0.5

execute as @a[tag=!Magician] run attribute @s irons_spellbooks:spell_resist base set 1
execute as @a[tag=!Magician] run attribute @s irons_spellbooks:mana_regen base set 1
execute as @a[tag=!Knight] run attribute @s minecraft:generic.armor base set 0
execute as @a[tag=!Knight] run attribute @s skilltree:regeneration base set 0
execute as @a[tag=!Knight] run attribute @s irons_spellbooks:spell_resist base set 1

team add nocollision
team modify nocollision collisionRule never
team modify nocollision color light_purple
tag El_Tito_Samu add Admin
tag Octopusi1708 add Admin
tag @a add Player

#TEAMS COMMANDS

scoreboard objectives add VampireRank dummy
scoreboard players add @a VampireRank 0
scoreboard objectives add MagicianRank dummy
scoreboard players add @a MagicianRank 0
scoreboard objectives add KnightsRank dummy
scoreboard players add @a KnightsRank 0

scoreboard objectives add PuntoH dummy
scoreboard players add @a PuntoH 0
scoreboard objectives add PuntoG dummy
scoreboard players add @a PuntoG 0

#Vampires
team add VampiresR0 {"text": "[VAMPIROS]","bold":true,"color": "#AA00AA"}
team modify VampiresR0 color dark_purple
team modify VampiresR0 prefix {"text": "[VAMPIRO NOVATO] ","bold":true,"color": "#AA00AA"}

team add VampiresR1 {"text": "[VAMPIROS]","bold":true,"color": "#AA00AA"}
team modify VampiresR1 color dark_purple
team modify VampiresR1 prefix {"text": "[VAMPIRO R1] ","bold":true,"color": "#AA00AA"}

team add VampiresR2 {"text": "[VAMPIROS]","bold":true,"color": "#AA00AA"}
team modify VampiresR2 color dark_purple
team modify VampiresR2 prefix {"text": "[VAMPIRO R2] ","bold":true,"color": "#AA00AA"}

team add VampiresR3 {"text": "[VAMPIROS]","bold":true,"color": "#AA00AA"}
team modify VampiresR3 color dark_purple
team modify VampiresR3 prefix {"text": "[VAMPIRO R3] ","bold":true,"color": "#AA00AA"}

team add VampiresR4 {"text": "[VAMPIROS]","bold":true,"color": "#AA00AA"}
team modify VampiresR4 color dark_purple
team modify VampiresR4 prefix {"text": "[VAMPIRO R4] ","bold":true,"color": "#AA00AA"}

team add VampiresR5 {"text": "[VAMPIROS]","bold":true,"color": "#AA00AA"}
team modify VampiresR5 color dark_purple
team modify VampiresR5 prefix {"text": "[VAMPIRO R5] ","bold":true,"color": "#AA00AA"}

team add VampiresR6 {"text": "[VAMPIROS]","bold":true,"color": "#AA00AA"}
team modify VampiresR6 color dark_purple
team modify VampiresR6 prefix {"text": "[VAMPIRO R6] ","bold":true,"color": "#AA00AA"}

#Magicians
team add MagiciansR0 {"text": "[HECHICEROS]","bold":true,"color": "#00AAAA "}
team modify MagiciansR0 color dark_aqua
team modify MagiciansR0 prefix {"text": "[APRENDIZ] ","bold":true,"color": "#00AAAA "}

team add MagiciansR1 {"text": "[HECHICEROS]","bold":true,"color": "#00AAAA "}
team modify MagiciansR1 color dark_aqua
team modify MagiciansR1 prefix {"text": "[NOVICIO] ","bold":true,"color": "#00AAAA "}

team add MagiciansR2 {"text": "[HECHICEROS]","bold":true,"color": "#00AAAA "}
team modify MagiciansR2 color dark_aqua
team modify MagiciansR2 prefix {"text": "[ARCANISTA] ","bold":true,"color": "#00AAAA "}

team add MagiciansR3 {"text": "[HECHICEROS]","bold":true,"color": "#00AAAA "}
team modify MagiciansR3 color dark_aqua
team modify MagiciansR3 prefix {"text": "[HECHICERO] ","bold":true,"color": "#00AAAA "}

team add MagiciansR4 {"text": "[HECHICEROS]","bold":true,"color": "#00AAAA "}
team modify MagiciansR4 color dark_aqua
team modify MagiciansR4 prefix {"text": "[ARCHIMAGO] ","bold":true,"color": "#00AAAA "}

#Knights
team add KnightsR0 {"text": "[GUERREROS]","bold":true,"color": "#AA0000"}
team modify KnightsR0 color dark_red
team modify KnightsR0 prefix {"text": "[ESCUDERO] ","bold":true,"color": "#AA0000"}

team add KnightsR1 {"text": "[GUERREROS]","bold":true,"color": "#AA0000"}
team modify KnightsR1 color dark_red
team modify KnightsR1 prefix {"text": "[COMBATIENTE] ","bold":true,"color": "#AA0000"}

team add KnightsR2 {"text": "[GUERREROS]","bold":true,"color": "#AA0000"}
team modify KnightsR2 color dark_red
team modify KnightsR2 prefix {"text": "[MAESTRO COMBATIENTE] ","bold":true,"color": "#AA0000"}

team add KnightsR3 {"text": "[GUERREROS]","bold":true,"color": "#AA0000"}
team modify KnightsR3 color dark_red
team modify KnightsR3 prefix {"text": "[CABALLERO] ","bold":true,"color": "#AA0000"}

team add KnightsR4 {"text": "[GUERREROS]","bold":true,"color": "#AA0000"}
team modify KnightsR4 color dark_red
team modify KnightsR4 prefix {"text": "[PALADIN] ","bold":true,"color": "#AA0000"}

#Default team
team add Default
execute as @a[tag=!Knight,tag=!Magician,tag=!Vampire] at @a run team join Default @s

#GROUP TEAMS

tag @a[team=VampiresR0] add Vampire
tag @a[team=VampiresR1] add Vampire
tag @a[team=VampiresR2] add Vampire
tag @a[team=VampiresR3] add Vampire
tag @a[team=VampiresR4] add Vampire
tag @a[team=VampiresR5] add Vampire
tag @a[team=VampiresR6] add Vampire
tag @a[team=VampiresR0] remove Knight
tag @a[team=VampiresR1] remove Knight
tag @a[team=VampiresR2] remove Knight
tag @a[team=VampiresR3] remove Knight
tag @a[team=VampiresR4] remove Knight
tag @a[team=VampiresR5] remove Knight
tag @a[team=VampiresR6] remove Knight
tag @a[team=VampiresR0] remove Magician
tag @a[team=VampiresR1] remove Magician
tag @a[team=VampiresR2] remove Magician
tag @a[team=VampiresR3] remove Magician
tag @a[team=VampiresR4] remove Magician
tag @a[team=VampiresR5] remove Magician
tag @a[team=VampiresR6] remove Magician

execute as @a[team=VampiresR0] run scoreboard players set @s VampireRank 0
execute as @a[team=VampiresR1] run scoreboard players set @s VampireRank 1 
execute as @a[team=VampiresR2] run scoreboard players set @s VampireRank 2
execute as @a[team=VampiresR3] run scoreboard players set @s VampireRank 3
execute as @a[team=VampiresR4] run scoreboard players set @s VampireRank 4
execute as @a[team=VampiresR5] run scoreboard players set @s VampireRank 5
execute as @a[team=VampiresR6] run scoreboard players set @s VampireRank 6

tag @a[team=MagiciansR0] add Magician
tag @a[team=MagiciansR1] add Magician
tag @a[team=MagiciansR2] add Magician
tag @a[team=MagiciansR3] add Magician
tag @a[team=MagiciansR4] add Magician
tag @a[team=MagiciansR0] remove Vampire
tag @a[team=MagiciansR1] remove Vampire
tag @a[team=MagiciansR2] remove Vampire
tag @a[team=MagiciansR3] remove Vampire
tag @a[team=MagiciansR4] remove Vampire
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
tag @a[team=KnightsR0] remove Vampire
tag @a[team=KnightsR1] remove Vampire
tag @a[team=KnightsR2] remove Vampire
tag @a[team=KnightsR3] remove Vampire
tag @a[team=KnightsR0] remove Magician
tag @a[team=KnightsR1] remove Magician
tag @a[team=KnightsR2] remove Magician
tag @a[team=KnightsR3] remove Magician


execute as @a[team=KnightsR0] run scoreboard players set @s KnightsRank 0
execute as @a[team=KnightsR1] run scoreboard players set @s KnightsRank 1 
execute as @a[team=KnightsR2] run scoreboard players set @s KnightsRank 2
execute as @a[team=KnightsR3] run scoreboard players set @s KnightsRank 3
