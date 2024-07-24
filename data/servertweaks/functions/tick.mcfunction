#OVERCHARGED MAGICIAN MECHANIC

execute as @a[tag=Magician] store result score @s maxMana run attribute @s irons_spellbooks:max_mana get
execute as @a[tag=Magician] store result score @s currentMana run mana get @s
execute as @a[tag=Magician] if score @s currentMana = @s maxMana run tag @s add atMaxMana
execute as @a[tag=Magician] if score @s currentMana < @s maxMana run tag @s remove atMaxMana

execute as @a unless predicate servertweaks:sneaking run scoreboard players set @s sneakTime 0
execute as @a[tag=!Magician,tag=!Knight] run scoreboard players set @s sneakTime 0
execute as @a[tag=Magician,tag=!inCooldown,tag=!overcharged,tag=atMaxMana] run function servertweaks:charged_magic

execute as @a[tag=Magician,tag=!inCooldown,tag=!overcharged,tag=!atMaxMana] if entity @s[scores={sneakTime=50..}] run title @s actionbar {"text":"Supercarga no disponible sin maná máximo","color":"red"}

execute as @a[tag=Magician,tag=!overcharged] run scoreboard players set @s chargedTimer 0
execute as @a[tag=Magician,tag=overcharged] run attribute @s irons_spellbooks:spell_power base set 5
execute as @a[tag=Magician,tag=overcharged] run attribute @s irons_spellbooks:mana_regen base set -100000
execute as @a[tag=Magician,tag=overcharged] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0 0.2 0.1 3 normal @a[distance=..32]
execute as @a[tag=Magician,tag=overcharged] run scoreboard players add @s chargedTimer 1
execute as @a[tag=Magician,tag=overcharged,scores={chargedTimer=100..}] run tag @s add inCooldown

execute as @a[tag=Magician,tag=!inCooldown] run scoreboard players set @s cooldownTimer 0
execute as @a[tag=Magician,tag=inCooldown] run tag @s remove overcharged
execute as @a[tag=Magician,tag=inCooldown] run attribute @s irons_spellbooks:max_mana base set -100000
execute as @a[tag=Magician,tag=inCooldown] run attribute @s irons_spellbooks:spell_power base set 1
execute as @a[tag=Magician,tag=inCooldown] run effect give @s weakness 1 100 true
execute as @a[tag=Magician,tag=inCooldown] run scoreboard players add @s cooldownTimer 1
execute as @a[tag=Magician,tag=inCooldown] at @s run particle minecraft:large_smoke ~ ~ ~ 0.1 0 0.1 0.05 3 normal @a[distance=..32]
execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 199 run tag @s add resetmana
execute as @a[tag=Magician,tag=inCooldown,scores={cooldownTimer=200..}] run tag @s remove inCooldown

execute as @a[tag=Magician,tag=!inCooldown,tag=resetmana] run attribute @s irons_spellbooks:max_mana base set 100
execute as @a[tag=Magician,tag=!inCooldown,tag=resetmana] run attribute @s irons_spellbooks:mana_regen base set 1
execute as @a[tag=Magician,tag=!inCooldown,tag=resetmana] run tag @s remove resetmana

execute as @a[tag=Magician,tag=overcharged] if score @s chargedTimer matches 1 run title @s actionbar {"text":"¡5 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Magician,tag=overcharged] if score @s chargedTimer matches 20 run title @s actionbar {"text":"¡4 segundos de supercarga!","color":"aqua"} 
execute as @a[tag=Magician,tag=overcharged] if score @s chargedTimer matches 40 run title @s actionbar {"text":"¡3 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Magician,tag=overcharged] if score @s chargedTimer matches 60 run title @s actionbar {"text":"¡2 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Magician,tag=overcharged] if score @s chargedTimer matches 80 run title @s actionbar {"text":"¡1 segundos de supercarga!","color":"aqua"}

execute as @a[tag=Magician,tag=overcharged] if score @s chargedTimer matches 1 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Magician,tag=overcharged] if score @s chargedTimer matches 20 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Magician,tag=overcharged] if score @s chargedTimer matches 40 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Magician,tag=overcharged] if score @s chargedTimer matches 60 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Magician,tag=overcharged] if score @s chargedTimer matches 80 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5

execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 1 run title @s actionbar {"text":"¡10 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 20 run title @s actionbar {"text":"¡9 segundos de enfriamiento!","color":"red"} 
execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 40 run title @s actionbar {"text":"¡8 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 60 run title @s actionbar {"text":"¡7 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 80 run title @s actionbar {"text":"¡6 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 100 run title @s actionbar {"text":"¡5 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 120 run title @s actionbar {"text":"¡4 segundos de enfriamiento!","color":"red"} 
execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 140 run title @s actionbar {"text":"¡3 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 160 run title @s actionbar {"text":"¡2 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 180 run title @s actionbar {"text":"¡1 segundos de enfriamiento!","color":"red"}

execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 1 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 40 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 80 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 120 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Magician,tag=inCooldown] if score @s cooldownTimer matches 160 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5

#OVERCHARGED KNIGHT MECHANIC

execute as @a[tag=Knight,tag=!inCooldown,tag=!overcharged] run function servertweaks:charged_knight

execute as @a[tag=Knight,tag=!overcharged] run scoreboard players set @s chargedTimer 0
execute as @a[tag=Knight,tag=overcharged] run attribute @s irons_spellbooks:spell_power base set 10
execute as @a[tag=Knight,tag=overcharged] run attribute @s irons_spellbooks:mana_regen base set -100000
execute as @a[tag=Knight,tag=overcharged] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0 0.2 0.1 3 normal @a[distance=..32]
execute as @a[tag=Knight,tag=overcharged] run scoreboard players add @s chargedTimer 1
execute as @a[tag=Knight,tag=overcharged,scores={chargedTimer=400..}] run tag @s add inCooldown

execute as @a[tag=Knight,tag=!inCooldown] run scoreboard players set @s cooldownTimer 0
execute as @a[tag=Knight,tag=inCooldown] run tag @s remove overcharged
execute as @a[tag=Knight,tag=inCooldown] run attribute @s irons_spellbooks:max_mana base set -100000
execute as @a[tag=Knight,tag=inCooldown] run attribute @s irons_spellbooks:spell_power base set 1
execute as @a[tag=Knight,tag=inCooldown] run effect give @s weakness 1 100 true
execute as @a[tag=Knight,tag=inCooldown] run scoreboard players add @s cooldownTimer 1
execute as @a[tag=Knight,tag=inCooldown] at @s run particle minecraft:large_smoke ~ ~ ~ 0.1 0 0.1 0.05 3 normal @a[distance=..32]
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 199 run tag @s add resetmana
execute as @a[tag=Knight,tag=inCooldown,scores={cooldownTimer=600..}] run tag @s remove inCooldown

execute as @a[tag=Knight,tag=!inCooldown,tag=resetmana] run attribute @s irons_spellbooks:max_mana base set 100
execute as @a[tag=Knight,tag=!inCooldown,tag=resetmana] run attribute @s irons_spellbooks:mana_regen base set 1
execute as @a[tag=Knight,tag=!inCooldown,tag=resetmana] run tag @s remove resetmana

execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 1 run title @s actionbar {"text":"¡20 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 20 run title @s actionbar {"text":"¡19 segundos de supercarga!","color":"aqua"} 
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 40 run title @s actionbar {"text":"¡18 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 60 run title @s actionbar {"text":"¡17 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 80 run title @s actionbar {"text":"¡16 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 100 run title @s actionbar {"text":"¡15 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 120 run title @s actionbar {"text":"¡14 segundos de supercarga!","color":"aqua"} 
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 140 run title @s actionbar {"text":"¡13 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 160 run title @s actionbar {"text":"¡12 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 180 run title @s actionbar {"text":"¡11 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 200 run title @s actionbar {"text":"¡10 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 220 run title @s actionbar {"text":"¡9 segundos de supercarga!","color":"aqua"} 
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 240 run title @s actionbar {"text":"¡8 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 260 run title @s actionbar {"text":"¡7 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 280 run title @s actionbar {"text":"¡6 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 300 run title @s actionbar {"text":"¡5 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 320 run title @s actionbar {"text":"¡4 segundos de supercarga!","color":"aqua"} 
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 340 run title @s actionbar {"text":"¡3 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 360 run title @s actionbar {"text":"¡2 segundos de supercarga!","color":"aqua"}
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 380 run title @s actionbar {"text":"¡1 segundos de supercarga!","color":"aqua"}

execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 1 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 20 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 40 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 60 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 80 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 100 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 120 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 140 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 160 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 180 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 200 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 220 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 240 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 260 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 280 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 300 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 320 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 340 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 360 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=overcharged] if score @s chargedTimer matches 380 run playsound irons_spellbooks:entity.chain_lightning.lightning_chain master @a ~ ~ ~ 100 0.5

execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 1 run title @s actionbar {"text":"¡30 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 20 run title @s actionbar {"text":"¡29 segundos de enfriamiento!","color":"red"} 
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 40 run title @s actionbar {"text":"¡28 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 60 run title @s actionbar {"text":"¡27 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 80 run title @s actionbar {"text":"¡26 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 100 run title @s actionbar {"text":"¡25 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 120 run title @s actionbar {"text":"¡24 segundos de enfriamiento!","color":"red"} 
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 140 run title @s actionbar {"text":"¡23 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 160 run title @s actionbar {"text":"¡22 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 180 run title @s actionbar {"text":"¡21 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 200 run title @s actionbar {"text":"¡20 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 220 run title @s actionbar {"text":"¡19 segundos de enfriamiento!","color":"red"} 
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 240 run title @s actionbar {"text":"¡18 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 260 run title @s actionbar {"text":"¡17 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 280 run title @s actionbar {"text":"¡16 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 300 run title @s actionbar {"text":"¡15 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 320 run title @s actionbar {"text":"¡14 segundos de enfriamiento!","color":"red"} 
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 340 run title @s actionbar {"text":"¡13 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 360 run title @s actionbar {"text":"¡12 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 380 run title @s actionbar {"text":"¡11 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 400 run title @s actionbar {"text":"¡10 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 420 run title @s actionbar {"text":"¡9 segundos de enfriamiento!","color":"red"} 
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 440 run title @s actionbar {"text":"¡8 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 460 run title @s actionbar {"text":"¡7 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 480 run title @s actionbar {"text":"¡6 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 500 run title @s actionbar {"text":"¡5 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 520 run title @s actionbar {"text":"¡4 segundos de enfriamiento!","color":"red"} 
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 540 run title @s actionbar {"text":"¡3 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 560 run title @s actionbar {"text":"¡2 segundos de enfriamiento!","color":"red"}
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 580 run title @s actionbar {"text":"¡1 segundos de enfriamiento!","color":"red"}

execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 1 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 40 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 80 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 120 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 160 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 200 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 240 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 280 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 320 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 360 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 400 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 440 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 480 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 520 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5
execute as @a[tag=Knight,tag=inCooldown] if score @s cooldownTimer matches 560 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100 0.5

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
tag @a[team=MagiciansR5] add Magician
tag @a[team=MagiciansR6] add Magician
tag @a[team=MagiciansR0] remove Vampire
tag @a[team=MagiciansR1] remove Vampire
tag @a[team=MagiciansR2] remove Vampire
tag @a[team=MagiciansR3] remove Vampire
tag @a[team=MagiciansR4] remove Vampire
tag @a[team=MagiciansR5] remove Vampire
tag @a[team=MagiciansR6] remove Vampire
tag @a[team=MagiciansR0] remove Knight
tag @a[team=MagiciansR1] remove Knight
tag @a[team=MagiciansR2] remove Knight
tag @a[team=MagiciansR3] remove Knight
tag @a[team=MagiciansR4] remove Knight
tag @a[team=MagiciansR5] remove Knight
tag @a[team=MagiciansR6] remove Knight

execute as @a[team=MagiciansR0] run scoreboard players set @s MagicianRank 0
execute as @a[team=MagiciansR1] run scoreboard players set @s MagicianRank 1 
execute as @a[team=MagiciansR2] run scoreboard players set @s MagicianRank 2
execute as @a[team=MagiciansR3] run scoreboard players set @s MagicianRank 3
execute as @a[team=MagiciansR4] run scoreboard players set @s MagicianRank 4
execute as @a[team=MagiciansR5] run scoreboard players set @s MagicianRank 5
execute as @a[team=MagiciansR6] run scoreboard players set @s MagicianRank 6

tag @a[team=KnightsR0] add Knight
tag @a[team=KnightsR1] add Knight
tag @a[team=KnightsR2] add Knight
tag @a[team=KnightsR3] add Knight
tag @a[team=KnightsR4] add Knight
tag @a[team=KnightsR5] add Knight
tag @a[team=KnightsR6] add Knight
tag @a[team=KnightsR0] remove Vampire
tag @a[team=KnightsR1] remove Vampire
tag @a[team=KnightsR2] remove Vampire
tag @a[team=KnightsR3] remove Vampire
tag @a[team=KnightsR4] remove Vampire
tag @a[team=KnightsR5] remove Vampire
tag @a[team=KnightsR6] remove Vampire
tag @a[team=KnightsR0] remove Magician
tag @a[team=KnightsR1] remove Magician
tag @a[team=KnightsR2] remove Magician
tag @a[team=KnightsR3] remove Magician
tag @a[team=KnightsR4] remove Magician
tag @a[team=KnightsR5] remove Magician
tag @a[team=KnightsR6] remove Magician

execute as @a[team=KnightsR0] run scoreboard players set @s KnightsRank 0
execute as @a[team=KnightsR1] run scoreboard players set @s KnightsRank 1 
execute as @a[team=KnightsR2] run scoreboard players set @s KnightsRank 2
execute as @a[team=KnightsR3] run scoreboard players set @s KnightsRank 3
execute as @a[team=KnightsR4] run scoreboard players set @s KnightsRank 4
execute as @a[team=KnightsR5] run scoreboard players set @s KnightsRank 5
execute as @a[team=KnightsR6] run scoreboard players set @s KnightsRank 6

# VAMPIRE SANGUINARE EFFECT FIX (DISABLE fangInfection in Vampirism config file)

#Checks if a player has the injection in hand, and is able to be a vampire
tag @a[tag=!Knight,tag=!Magician,team=!Default] add vampirable
tag @a[tag=!Vampire] remove vampirable
execute as @a[tag=!Vampire] run effect clear @s vampirism:sanguinare
execute as @a[nbt={SelectedItem:{id:"vampirism:injection_sanguinare"}},tag=vampirable] at @s run scoreboard players set @s hasInjection 1
execute as @a[nbt=!{SelectedItem:{id:"vampirism:injection_sanguinare"}},tag=vampirable] at @s run scoreboard players set @s hasInjection 0

#Makes the villager unable to collision with the player
execute as @e[tag=injection] at @s run team join nocollision @s
execute as @e[tag=injection] at @s unless entity @e[type=area_effect_cloud,distance=..7] run summon area_effect_cloud ~ ~0.5 ~ {Duration:2000000,CustomName:'"Click derecho aqui para infectarte"',CustomNameVisible:1b,Tags:["injection"]}

#If a player has an injection and is over a med chair, they will be able to right-click a villager to get sanguinare
execute as @a[scores={hasInjection=1..},tag=vampirable] at @s if block ~ ~-1 ~ vampirism:med_chair unless entity @e[type=minecraft:villager, distance=..3] run summon armor_stand ~ ~-1.5 ~ {Invisible:1b,Tags:["injection"],Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:villager", Tags:["injection"], Silent:1b,NoAI:1b,Invulnerable:1b,Offers:{Recipes:[]},ActiveEffects:[{Id:14b,Amplifier:0b,ShowParticles:0b,Duration:10000000}]}]}
execute as @a[scores={hasInjection=1..},tag=vampirable] at @s if block ~1 ~ ~ vampirism:med_chair unless entity @e[type=minecraft:villager, distance=..3] run summon armor_stand ~1 ~-0.5 ~ {Invisible:1b,Tags:["injection"],Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:villager", Tags:["injection"], Silent:1b,NoAI:1b,Invulnerable:1b,Offers:{Recipes:[]},ActiveEffects:[{Id:14b,Amplifier:0b,ShowParticles:0b,Duration:10000000}]}]}
execute as @a[scores={hasInjection=1..},tag=vampirable] at @s if block ~-1 ~ ~ vampirism:med_chair unless entity @e[type=minecraft:villager, distance=..3] run summon armor_stand ~-1 ~-0.5 ~ {Invisible:1b,Tags:["injection"],Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:villager", Tags:["injection"], Silent:1b,NoAI:1b,Invulnerable:1b,Offers:{Recipes:[]},ActiveEffects:[{Id:14b,Amplifier:0b,ShowParticles:0b,Duration:10000000}]}]}
execute as @a[scores={hasInjection=1..},tag=vampirable] at @s if block ~ ~ ~1 vampirism:med_chair unless entity @e[type=minecraft:villager, distance=..3] run summon armor_stand ~ ~-0.5 ~1 {Invisible:1b,Tags:["injection"],Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:villager", Tags:["injection"], Silent:1b,NoAI:1b,Invulnerable:1b,Offers:{Recipes:[]},ActiveEffects:[{Id:14b,Amplifier:0b,ShowParticles:0b,Duration:10000000}]}]}
execute as @a[scores={hasInjection=1..},tag=vampirable] at @s if block ~ ~ ~-1 vampirism:med_chair unless entity @e[type=minecraft:villager, distance=..3] run summon armor_stand ~ ~-0.5 ~-1 {Invisible:1b,Tags:["injection"],Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:villager", Tags:["injection"], Silent:1b,NoAI:1b,Invulnerable:1b,Offers:{Recipes:[]},ActiveEffects:[{Id:14b,Amplifier:0b,ShowParticles:0b,Duration:10000000}]}]}

#Kills all villagers if no player has an injection in hand
execute unless entity @a[scores={hasInjection=1..},limit=1,tag=vampirable] run kill @e[tag=injection]

#Gives the sanguinare effect to the player that clicked the villager
execute as @a[scores={hasInjection=1.., talkvill=1..},tag=vampirable] at @s run effect give @s vampirism:sanguinare 1200 0 false
execute as @a[scores={hasInjection=1.., talkvill=1..},tag=vampirable] at @s run tellraw @a [{"selector":"@s"},{"text":" ha sido infectado! (20min de efecto)"}]
execute as @a[scores={hasInjection=1.., talkvill=1..},tag=vampirable] at @s run clear @s vampirism:injection_sanguinare 1
execute as @a[scores={hasInjection=1.., talkvill=1..},tag=vampirable] at @s run kill @e[tag=injection]
execute as @a[scores={hasInjection=1.., talkvill=1..},tag=vampirable] at @s run playsound vampirism:entity_vampire_scream ambient @s ~ ~ ~ 100 0.8
execute as @a[scores={talkvill=1..}] at @s run scoreboard players set @s talkvill 0

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
#execute as @a[tag=granted] run execute at @s unless entity @e[tag=levit,distance=..150] run tag @s remove granted

#VAMPIRE RANK ADVANCEMENTS

execute as @a[team=VampiresR1] run advancement grant @s only servertweaks:servertweaks/vampirer1 vampirer1
execute as @a[team=VampiresR2] run advancement grant @s only servertweaks:servertweaks/vampirer2 vampirer2