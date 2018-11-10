tellraw @a ["",{"text":"XpStorage DataPack successfully loaded !! ","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"By Daminator4113 and Kikipunk"}},{"text":"Version 1.3!!","color":"gold","hoverEvent":{"action":"show_text","value":"By Daminator4113 and Kikipunk"}}]


scoreboard objectives add xs_hopper_ca dummy
scoreboard objectives add xs_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add xs_xp dummy
scoreboard objectives add xs_points dummy
scoreboard players set 16 xs_xp 16

advancement revoke @a only xpstorage:xpstorage/trigger/place_hopper
