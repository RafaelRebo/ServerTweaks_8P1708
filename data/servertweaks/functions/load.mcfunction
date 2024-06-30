tellraw @a {"text": "ServerTweaks by Octopusi1708 loaded!","bold": true, "color": "#00FFFF"}

#General purpose commands
scoreboard objectives add health health {"text": "♥","color": "red"}
scoreboard objectives add hasInjection dummy
scoreboard objectives add talkvill minecraft.custom:minecraft.talked_to_villager
gamerule playersSleepingPercentage 1

team add nocollision
team modify nocollision collisionRule never

#Vampires
team add Vampires {"text": "[VAMPIRE]","bold":true,"color": "#AA00AA"}
team modify Vampires color dark_purple
team modify Vampires prefix {"text": "[VAMPIRE] ","bold":true,"color": "#AA00AA"}

#Magicians
team add Magicians {"text": "[MAGICIAN]","bold":true,"color": "#00AAAA "}
team modify Magicians color dark_aqua
team modify Magicians prefix {"text": "[MAGICIAN] ","bold":true,"color": "#00AAAA "}

#Knights
team add Knights {"text": "[KNIGHT]","bold":true,"color": "#AA0000"}
team modify Knights color dark_red
team modify Knights prefix {"text": "[KNIGHT] ","bold":true,"color": "#AA0000"}

#Default team
team add Default
execute as @a[team=!Knights,team=!Magicians,team=!Vampires] at @a run team join Default @s
team modify Default color green