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

#Vampires
team add Vampires {"text": "[VAMPIRO]","bold":true,"color": "#AA00AA"}
team modify Vampires color dark_purple
team modify Vampires prefix {"text": "[VAMPIRO] ","bold":true,"color": "#AA00AA"}

#Magicians
team add Magicians {"text": "[HECHICERO]","bold":true,"color": "#00AAAA "}
team modify Magicians color dark_aqua
team modify Magicians prefix {"text": "[HECHICERO] ","bold":true,"color": "#00AAAA "}

#Knights
team add Knights {"text": "[CABALLERO]","bold":true,"color": "#AA0000"}
team modify Knights color dark_red
team modify Knights prefix {"text": "[CABALLERO] ","bold":true,"color": "#AA0000"}

#Default team
team add Default
execute as @a[team=!Knights,team=!Magicians,team=!Vampires] at @a run team join Default @s
team modify Default color green