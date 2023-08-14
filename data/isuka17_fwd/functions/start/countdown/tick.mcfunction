#> 準備時間
execute if score #準備時間 fwd_settings matches 1.. run title @a title ""
execute if score #準備時間 fwd_settings matches 0.. run title @a subtitle [{"text":"準備時間 残り"},{"score":{"name":"#準備時間","objective":"fwd_settings"}},{"text":"秒"}]
execute if score #準備時間 fwd_settings matches 0 run function isuka17_fwd:start/items
execute if score #準備時間 fwd_settings matches 0 run scoreboard players set #準備時間 fwd_settings -1