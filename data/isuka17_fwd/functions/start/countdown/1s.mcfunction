#> 1秒ごとに実行
scoreboard players remove #準備時間 fwd_settings 1
execute if score #準備時間 fwd_settings matches 0 run title @a times 10 70 20
execute if score #準備時間 fwd_settings matches 0 run title @a title "マイクラ人狼 スタート！"
execute if score #準備時間 fwd_settings matches 0 as @a at @s run playsound entity.wolf.howl master @s ~ ~ ~ 2 1
execute if score #準備時間 fwd_settings matches 1.. run schedule function isuka17_fwd:start/countdown/1s 1s