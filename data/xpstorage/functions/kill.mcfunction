data merge entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:hopper"}}] {Item:{tag:{xpstorage:1b}}}
execute if score @s xs_xp matches 1.. run summon minecraft:experience_orb ~ ~ ~
execute if score @s xs_xp matches 1.. store result entity @e[type=minecraft:experience_orb,limit=1,sort=nearest] Value short 1 run scoreboard players get @s xs_xp
kill @s
