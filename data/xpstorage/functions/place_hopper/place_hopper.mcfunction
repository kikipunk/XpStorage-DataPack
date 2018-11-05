advancement revoke @s only xpstorage:xpstorage/trigger/place_hopper
# Init de la valeur de la conditon d'arret
scoreboard players set @s xs_hopper_ca 0

# Entrée dans la boucle réccursive, en partant de 7 devant le joueur pour finir dans le pire des cas, 2 blocs derrière lui
execute as @s anchored eyes positioned ^ ^ ^ anchored feet run function xpstorage:place_hopper/place_hopper_reccursif
