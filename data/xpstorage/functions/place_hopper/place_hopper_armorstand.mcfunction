# Place de l'armor stand
summon armor_stand ~ ~-1.25 ~-0.75 {Tags:["xs_hopper"],Invulnerable:1,PersistenceRequired:1,NoGravity:1,Marker:1,Invisible:1,Small:0,ArmorItems:[{},{},{},{id:"iron_bars",Count:1b}],Pose:{Head:[90f,0f,0f]}}

# Validation de la condition d'arret => Sortie de la boucle réccursive
scoreboard players set @s xs_hopper_ca 50

# Lock du spawner pour empecher le spawn
data merge block ~ ~ ~ {TransferCooldown:2147483647}
