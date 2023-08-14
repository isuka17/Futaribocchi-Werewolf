#> 役職設定
execute if score #fwd fwd_settings matches 0 run gamerule sendCommandFeedback false
execute if score #fwd fwd_settings matches 0 run scoreboard objectives setdisplay sidebar fwd_settings
execute if score #fwd fwd_settings matches 0 run tellraw @s {"text":"\n=====役職設定=====","color":"gold"}
execute if score #fwd fwd_settings matches 0 run tellraw @s [{"text":"預言者：","color":"aqua"},{"text":"有効化","clickEvent":{"action":"run_command","value":"/scoreboard players set 預言者 fwd_settings 1"},"hoverEvent":{"action":"show_text","value":"クリックして預言者を有効化"}},{"text":"  "},{"text":"無効化","clickEvent":{"action":"run_command","value":"/scoreboard players reset 預言者 fwd_settings"},"hoverEvent":{"action":"show_text","value":"クリックして預言者を無効化"}}]
execute if score #fwd fwd_settings matches 0 run tellraw @s [{"text":"  探偵：","color":"yellow"},{"text":"有効化","clickEvent":{"action":"run_command","value":"/scoreboard players set 探偵 fwd_settings 1"},"hoverEvent":{"action":"show_text","value":"クリックして探偵を有効化"}},{"text":"  "},{"text":"無効化","clickEvent":{"action":"run_command","value":"/scoreboard players reset 探偵 fwd_settings"},"hoverEvent":{"action":"show_text","value":"クリックして探偵を無効化"}}]
execute if score #fwd fwd_settings matches 0 run tellraw @s [{"text":"  狂人：","color":"light_purple"},{"text":"有効化","clickEvent":{"action":"run_command","value":"/scoreboard players set 狂人 fwd_settings 1"},"hoverEvent":{"action":"show_text","value":"クリックして狂人を有効化"}},{"text":"  "},{"text":"無効化","clickEvent":{"action":"run_command","value":"/scoreboard players reset 狂人 fwd_settings"},"hoverEvent":{"action":"show_text","value":"クリックして狂人を無効化"}}]
execute if score #fwd fwd_settings matches 0 run tellraw @s [{"text":"  人狼：","color":"red"},{"text":"1人","clickEvent":{"action":"run_command","value":"/scoreboard players set 人狼 fwd_settings 1"},"hoverEvent":{"action":"show_text","value":"クリックして人狼を1人に設定"}},{"text":"  "},{"text":"2人","clickEvent":{"action":"run_command","value":"/scoreboard players set 人狼 fwd_settings 2"},"hoverEvent":{"action":"show_text","value":"クリックして人狼を2人に設定"}},{"text":"  "},{"text":"3人","clickEvent":{"action":"run_command","value":"/scoreboard players set 人狼 fwd_settings 3"},"hoverEvent":{"action":"show_text","value":"クリックして人狼を3人に設定"}}]
execute if score #fwd fwd_settings matches 0 run tellraw @s ""

# スコアを色付け
team join fwd_gold 参加人数
team join fwd_aqua 預言者
team join fwd_yellow 探偵
team join fwd_pink 狂人
team join fwd_red 人狼
