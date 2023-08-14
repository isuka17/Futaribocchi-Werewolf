#> 会議可能
execute at @e[type=armor_stand,tag=meeting,limit=1,sort=random] run summon parrot ~ ~2 ~ {Tags:["meeting_parrot"],Invulnerable:1,Silent:1,Glowing:1,NoAI:1,NoGravity:1}
title @a title "会議が可能になりました"
tag @a remove meeting_join
scoreboard players set #meeting fwd_settings 1
execute as @a at @s run playsound minecraft:entity.chicken.hurt master @s ~ ~ ~ 1 1