tellraw @a {"text": "ServerTweaks by Octopusi1708 loaded!","bold": true, "color": "#00FFFF"}

execute as @a run attribute @s irons_spellbooks:max_mana base set 200

#General purpose commands
scoreboard objectives add health health {"text": "♥","color": "red"}
scoreboard objectives add hasInjection dummy
scoreboard objectives add talkvill minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add BannedItems dummy
gamerule playersSleepingPercentage 1

team add nocollision
team modify nocollision collisionRule never
team modify nocollision color light_purple
tag El_Tito_Samu add Admin
tag Octopusi1708 add Admin

#TEAMS COMMANDS

scoreboard objectives add VampireRank dummy
scoreboard players add @a VampireRank 0
scoreboard objectives add MagicianRank dummy
scoreboard players add @a MagicianRank 0
scoreboard objectives add KnightsRank dummy
scoreboard players add @a KnightsRank 0

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
team modify MagiciansR0 prefix {"text": "[HECHICERO NOVATO] ","bold":true,"color": "#00AAAA "}

team add MagiciansR1 {"text": "[HECHICEROS]","bold":true,"color": "#00AAAA "}
team modify MagiciansR1 color dark_aqua
team modify MagiciansR1 prefix {"text": "[HECHICERO R1] ","bold":true,"color": "#00AAAA "}

team add MagiciansR2 {"text": "[HECHICEROS]","bold":true,"color": "#00AAAA "}
team modify MagiciansR2 color dark_aqua
team modify MagiciansR2 prefix {"text": "[HECHICERO R2] ","bold":true,"color": "#00AAAA "}

team add MagiciansR3 {"text": "[HECHICEROS]","bold":true,"color": "#00AAAA "}
team modify MagiciansR3 color dark_aqua
team modify MagiciansR3 prefix {"text": "[HECHICERO R3] ","bold":true,"color": "#00AAAA "}

team add MagiciansR4 {"text": "[HECHICEROS]","bold":true,"color": "#00AAAA "}
team modify MagiciansR4 color dark_aqua
team modify MagiciansR4 prefix {"text": "[HECHICERO R4] ","bold":true,"color": "#00AAAA "}

team add MagiciansR5 {"text": "[HECHICEROS]","bold":true,"color": "#00AAAA "}
team modify MagiciansR5 color dark_aqua
team modify MagiciansR5 prefix {"text": "[HECHICERO R5] ","bold":true,"color": "#00AAAA "}

team add MagiciansR6 {"text": "[HECHICEROS]","bold":true,"color": "#00AAAA "}
team modify MagiciansR6 color dark_aqua
team modify MagiciansR6 prefix {"text": "[HECHICERO R6] ","bold":true,"color": "#00AAAA "}

#Knights
team add KnightsR0 {"text": "[GUERREROS]","bold":true,"color": "#AA0000"}
team modify KnightsR0 color dark_red
team modify KnightsR0 prefix {"text": "[GUERRERO NOVATO] ","bold":true,"color": "#AA0000"}

team add KnightsR1 {"text": "[GUERREROS]","bold":true,"color": "#AA0000"}
team modify KnightsR1 color dark_red
team modify KnightsR1 prefix {"text": "[GUERRERO R1] ","bold":true,"color": "#AA0000"}

team add KnightsR2 {"text": "[GUERREROS]","bold":true,"color": "#AA0000"}
team modify KnightsR2 color dark_red
team modify KnightsR2 prefix {"text": "[GUERRERO R2] ","bold":true,"color": "#AA0000"}

team add KnightsR3 {"text": "[GUERREROS]","bold":true,"color": "#AA0000"}
team modify KnightsR3 color dark_red
team modify KnightsR3 prefix {"text": "[GUERRERO R3] ","bold":true,"color": "#AA0000"}

team add KnightsR4 {"text": "[GUERREROS]","bold":true,"color": "#AA0000"}
team modify KnightsR4 color dark_red
team modify KnightsR4 prefix {"text": "[GUERRERO R4] ","bold":true,"color": "#AA0000"}

team add KnightsR5 {"text": "[GUERREROS]","bold":true,"color": "#AA0000"}
team modify KnightsR5 color dark_red
team modify KnightsR5 prefix {"text": "[GUERRERO R5] ","bold":true,"color": "#AA0000"}

team add KnightsR6 {"text": "[GUERREROS]","bold":true,"color": "#AA0000"}
team modify KnightsR6 color dark_red
team modify KnightsR6 prefix {"text": "[GUERRERO R6] ","bold":true,"color": "#AA0000"}

#Default team
team add Default
execute as @a[tag=!Knight,tag=!Magician,tag=!Vampire] at @a run team join Default @s
team modify Default color green