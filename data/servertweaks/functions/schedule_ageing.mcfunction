execute as @a[team=VampiresR3] if data entity @s {ForgeCaps:{"vampiricageing:ageing":{age:5}}} run team join VampiresR4 @s
execute as @a if data entity @s {ForgeCaps:{"vampiricageing:ageing":{age:1}}} run advancement grant @s only servertweaks:servertweaks/vampire_age_one vampirer7

schedule function servertweaks:schedule_ageing 30s