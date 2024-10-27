tag @s add toggling
execute if entity @s[tag=toggling, tag=overchargeToggled] run function servertweaks:overcharge_deactivate
execute if entity @s[tag=toggling, tag=!overchargeToggled] run function servertweaks:overcharge_activate
bossbar set minecraft:on players uysaidhgasydg
bossbar set minecraft:off players uysaidhgasydg