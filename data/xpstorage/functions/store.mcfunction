xp add @p -16 points
scoreboard players operation @s xs_points += 16 xs_xp
execute if score @s xs_points matches 1408.. run replaceitem block ~ ~-0.1 ~ container.0 minecraft:potion{xppoints:1408s,fill:1b,CustomPotionColor:9436928,HideFlags:63,display:{Lore:["§2XP: 1408/1408"],Name: "{\"text\":\"§eExperience Bottle\"}"},Enchantments:[{lvl:1,id:"minecraft:unbreaking"}]}
