# コネシマの涙
execute at @e[type=armor_stand,tag=koneshima_tears] run fill ~ ~ ~ ~ ~ ~ air replace water
kill @e[type=armor_stand,tag=koneshima_tears]
scoreboard players set @a fwd_koneshima_tears 0

# 避雷針
tag @a remove used_lightning_rod
execute at @e[type=armor_stand,tag=lightning_rod] run fill ~ ~ ~ ~ ~ ~ air replace lightning_rod
kill @e[type=armor_stand,tag=lightning_rod]
scoreboard players set @a fwd_lightning_rod 0

# その他
scoreboard players set @a fwd_blackout_switch 0
scoreboard players set @a fwd_deathcount 0
scoreboard players set @a fwd_rolenumber 0
scoreboard players set #fwd fwd_settings 0
scoreboard players set #meeting fwd_settings 0
tag @a remove fwd_join
tag @a remove fwd_Team1
tag @a remove fwd_Team2
tag @a remove fwd_Team3
tag @a remove fwd_Team4
tag @a remove fwd_Team5
kill @e[tag=fwd_deadbody]
kill @e[tag=meeting_parrot]
kill @e[type=item]
kill @e[type=arrow]
kill @e[type=area_effect_cloud]
effect clear @a
effect give @a saturation 1 100 true
effect give @a instant_health 1 100 true
effect give @a saturation 1 100 true
clear @a
team leave @a
gamemode creative @a
scoreboard objectives setdisplay sidebar fwd_settings
