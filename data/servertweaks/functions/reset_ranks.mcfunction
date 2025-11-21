execute as @s if entity @s[tag=Vampire] run team join VampiresR0 @s
execute as @s if entity @s[tag=Vampire] run scoreboard players set @s VampireRank 0

execute as @s if entity @s[tag=Knight] run team join KnightsR0 @s
execute as @s if entity @s[tag=Vampire] run scoreboard players set @s KnightsRank 0

execute as @s if entity @s[tag=Magician] run team join MagiciansR0 @s
execute as @s if entity @s[tag=Vampire] run scoreboard players set @s MagicianRank 0