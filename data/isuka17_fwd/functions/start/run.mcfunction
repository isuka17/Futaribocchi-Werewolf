# 参加者を設定
tag @r[tag=!fwd_join,gamemode=!spectator,limit=10] add fwd_join
team join fwd_spectator @a[tag=!fwd_join]

# プレイヤー番号
scoreboard players reset @a fwd_playernumber
scoreboard players set @a[tag=fwd_join] fwd_playernumber 0
execute as @a[tag=fwd_join,sort=random] store result score @s fwd_playernumber if entity @a[scores={fwd_playernumber=0}]

# 開始処理
scoreboard objectives setdisplay sidebar
gamemode adventure @a[tag=fwd_join]
title @a times 0 100 0
scoreboard players set #準備時間 fwd_settings 31
function isuka17_fwd:start/gamerule
function isuka17_fwd:start/teams
function isuka17_fwd:start/countdown/1s
schedule function isuka17_fwd:start/roles 0.1s
schedule function isuka17_fwd:start/books 0.2s
schedule function isuka17_fwd:start/ability 0.3s