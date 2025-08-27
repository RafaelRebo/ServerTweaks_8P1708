tellraw @s[tag=!executed] ["",{"text":"\u226b Selecciona una clase para unirte:","color":"yellow"},{"text":"\n\n"},{"text":"\u226b [HECHICEROS]","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function servertweaks:magician_join"},"hoverEvent":{"action":"show_text","contents":"Unirse a [HECHICEROS]"}},{"text":"\n"},{"text":"\u226b [GUERREROS]","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function servertweaks:knight_join"},"hoverEvent":{"action":"show_text","contents":"Unirse a [GUERREROS]"}}]

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

tellraw @s[tag=executed] ["",{"text":"Ya perteneces a una clase y no puedes cambiarla. Si crees que esto es un error, contacta a un administrador.","color":"red"}]

tag @s add executed