execute as @e[type=minecraft:armor_stand,tag=xs_hopper] at @s positioned ~ ~1.25 ~0.75 unless block ~ ~ ~ minecraft:hopper run function xpstorage:kill
execute as @e[type=minecraft:armor_stand,tag=xs_hopper] run data merge entity @s {Fire:32000}
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:hopper",Count:1b}}] at @s if block ~ ~-1 ~ minecraft:crafting_table if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={OnGround:1b,Item:{id:"minecraft:bucket",Count:1b}}] run function xpstorage:craft

execute as @e[type=minecraft:armor_stand,tag=xs_hopper] at @s positioned ~ ~1.75 ~0.75 store result score @s xs_points run data get block ~ ~-0.1 ~ Items[0].tag.xppoints

execute as @e[type=minecraft:armor_stand,tag=xs_hopper] at @s positioned ~ ~1.75 ~0.75 if entity @e[type=minecraft:experience_orb,distance=..2] run function xpstorage:storeorb

execute as @a[scores={xs_sneak=1..},level=2..] at @s if block ~ ~-0.1 ~ minecraft:hopper{CustomName:"{\"text\":\"§rXP Hopper\"}",Items:[{Slot:0b,id:"minecraft:potion",tag:{fill:0b,display:{Name:"{\"text\":\"§eExperience Bottle\"}"}}}]} as @e[type=minecraft:armor_stand,tag=xs_hopper,distance=..5,limit=1,sort=nearest] at @s positioned ~ ~1.25 ~0.75 run function xpstorage:store
execute as @e[type=minecraft:armor_stand,tag=xs_hopper,scores={xs_xp=16..}] at @s positioned ~ ~1.25 ~0.75 if block ~ ~-0.1 ~ minecraft:hopper{CustomName:"{\"text\":\"§rXP Hopper\"}",Items:[{Slot:0b,id:"minecraft:potion",tag:{fill:0b,display:{Name:"{\"text\":\"§eExperience Bottle\"}"}}}]} run function xpstorage:storeorbfiole

execute as @a[scores={xs_sneak=1..},level=2..] at @s if block ~ ~-0.1 ~ minecraft:hopper{CustomName:"{\"text\":\"§rXP Hopper\"}",Items:[{Slot:0b,id:"minecraft:glass_bottle",Count:1b}]} as @e[type=minecraft:armor_stand,tag=xs_hopper,distance=..5,limit=1,sort=nearest] at @s positioned ~ ~1.25 ~0.75 run function xpstorage:storenew
execute as @e[type=minecraft:armor_stand,tag=xs_hopper,scores={xs_xp=16..}] at @s positioned ~ ~1.25 ~0.75 if block ~ ~-0.1 ~ minecraft:hopper{CustomName:"{\"text\":\"§rXP Hopper\"}",Items:[{Slot:0b,id:"minecraft:glass_bottle",Count:1b}]} run function xpstorage:storeorbfiolenew

execute as @e[type=minecraft:armor_stand,tag=xs_hopper] at @s positioned ~ ~1.25 ~0.75 run function xpstorage:lore

execute as @e[scores={xs_sneak=1..}] run scoreboard players set @s xs_sneak 0
