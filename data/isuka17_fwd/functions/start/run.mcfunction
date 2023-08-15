# 参加者を設定
tag @r[tag=!fwd_join,gamemode=!spectator,limit=10] add fwd_join
team join fwd_spectator @a[tag=!fwd_join]

# プレイヤー番号
scoreboard players reset @a fwd_playernumber
scoreboard players set @a[tag=fwd_join] fwd_playernumber 0
execute as @a[tag=fwd_join,sort=random] store result score @s fwd_playernumber if entity @a[scores={fwd_playernumber=0}]

# 会議場所をセット
execute at @e[type=armor_stand,tag=meeting] run setblock ~ ~ ~ command_block{Command:"function isuka17_fwd:meeting/check"}
execute at @e[type=armor_stand,tag=meeting] run setblock ~ ~1 ~ minecraft:stone_button[face=floor]
execute as @e[type=armor_stand,tag=meeting] run data modify entity @s Invisible set value 1
execute as @e[type=armor_stand,tag=meeting] run data modify entity @s Marker set value 1

# 開始処理
scoreboard objectives setdisplay sidebar
gamemode adventure @a[tag=fwd_join]
title @a times 0 100 0
scoreboard players set #準備時間 fwd_settings 30
function isuka17_fwd:start/gamerule
function isuka17_fwd:start/teams
schedule function isuka17_fwd:start/roles 0.1s replace
schedule function isuka17_fwd:start/books 0.2s replace
schedule function isuka17_fwd:start/ability 0.3s replace
schedule function isuka17_fwd:start/countdown/1s 1s replace
schedule function isuka17_fwd:meeting/opening 240s replace