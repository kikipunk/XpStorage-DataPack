execute store result score xporb xs_xp run data get entity @e[type=minecraft:experience_orb,limit=1,sort=nearest] Value 1
scoreboard players operation @s xs_xp += xporb xs_xp
kill @e[type=minecraft:experience_orb,limit=1,sort=nearest]
#scoreboard players reset xporb
