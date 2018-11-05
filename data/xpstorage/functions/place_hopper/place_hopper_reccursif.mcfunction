
# Détecte si les coordonnées analaysés contiennent un spawner sans armor stand "Spawner" à l'interieur, si oui il faut en mettre une et valider la conditon d'arret
execute if block ~ ~ ~ minecraft:hopper align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[dx=0,dy=0,dz=0,tag=xs_hopper] run function xpstorage:place_hopper/place_hopper_armorstand

# Si on n'a pas trouvé sur le bloc visé, on regarde sur les 8 blocs voisins pour contrer le cas où le "rayon" aurait raté le spawner a cause de Minecraft ou d'un cas particuler tq les échelles
execute unless entity @s[scores={xs_hopper_ca=50..}] positioned ^1 ^1 ^ if block ~ ~ ~ minecraft:hopper align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[dx=0,dy=0,dz=0,tag=xs_hopper] run function xpstorage:place_hopper/place_hopper_armorstand
execute unless entity @s[scores={xs_hopper_ca=50..}] positioned ^1 ^ ^ if block ~ ~ ~ minecraft:hopper align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[dx=0,dy=0,dz=0,tag=xs_hopper] run function xpstorage:place_hopper/place_hopper_armorstand
execute unless entity @s[scores={xs_hopper_ca=50..}] positioned ^1 ^-1 ^ if block ~ ~ ~ minecraft:hopper align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[dx=0,dy=0,dz=0,tag=xs_hopper] run function xpstorage:place_hopper/place_hopper_armorstand
execute unless entity @s[scores={xs_hopper_ca=50..}] positioned ^ ^1 ^ if block ~ ~ ~ minecraft:hopper align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[dx=0,dy=0,dz=0,tag=xs_hopper] run function xpstorage:place_hopper/place_hopper_armorstand
execute unless entity @s[scores={xs_hopper_ca=50..}] positioned ^ ^-1 ^ if block ~ ~ ~ minecraft:hopper align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[dx=0,dy=0,dz=0,tag=xs_hopper] run function xpstorage:place_hopper/place_hopper_armorstand
execute unless entity @s[scores={xs_hopper_ca=50..}] positioned ^-1 ^1 ^ if block ~ ~ ~ minecraft:hopper align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[dx=0,dy=0,dz=0,tag=xs_hopper] run function xpstorage:place_hopper/place_hopper_armorstand
execute unless entity @s[scores={xs_hopper_ca=50..}] positioned ^-1 ^ ^ if block ~ ~ ~ minecraft:hopper align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[dx=0,dy=0,dz=0,tag=xs_hopper] run function xpstorage:place_hopper/place_hopper_armorstand
execute unless entity @s[scores={xs_hopper_ca=50..}] positioned ^-1 ^-1 ^ if block ~ ~ ~ minecraft:hopper align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[dx=0,dy=0,dz=0,tag=xs_hopper] run function xpstorage:place_hopper/place_hopper_armorstand

# Incrémente la condtion d'arret de 1 (mise ici à 90 => de 7 bloc [au lieu de 5 pour que ca marche en créa aussi] devant à 2 blocs derrière, à raison de 0.1 bloc par ittération)
scoreboard players add @s xs_hopper_ca 1

# Appel la fonction si la condtion d'arret n'est pas validée, en se décallant de 0.1 bloc vers l'arrière
execute unless entity @s[scores={xs_hopper_ca=50..}] positioned ^ ^ ^0.1 run function xpstorage:place_hopper/place_hopper_reccursif
