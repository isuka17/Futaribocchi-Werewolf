# ロード時のメッセージ
tellraw @a {"text":"ふたりぼっち人狼がロードされました。","color":"yellow"}

# セットアップ
scoreboard objectives add fwd_settings dummy {"text":"－ 設定 －"}
scoreboard objectives add fwd_blackout_switch dropped:sunflower {"text":"[ふたりぼっち人狼] 停電スイッチ","color":"yellow"}
scoreboard objectives add fwd_koneshima_tears dropped:ghast_tear {"text":"[ふたりぼっち人狼] コネシマの涙","color":"yellow"}
scoreboard objectives add fwd_deathcount deathCount {"text":"[ふたりぼっち人狼] 死亡回数","color":"yellow"}
scoreboard objectives add fwd_lightning_rod dropped:lightning_rod {"text":"[ふたりぼっち人狼] 避雷針","color":"yellow"}
scoreboard objectives add fwd_rolenumber dummy {"text":"[ふたりぼっち人狼] 役職番号","color":"yellow"}
scoreboard objectives add fwd_playernumber dummy {"text":"[ふたりぼっち人狼] プレイヤー番号","color":"yellow"}
scoreboard objectives add fwd_itemnumber dummy {"text":"[ふたりぼっち人狼] 役職番号","color":"yellow"}

team add fwd_meeting {"text":"会議","color":"gold"}
team add fwd_spectator {"text":"観戦","color":"blue"}
team add fwd_Team1 {"text":"ふたりぼっち","color":"aqua"}
team add fwd_Team2 {"text":"ふたりぼっち","color":"yellow"}
team add fwd_Team3 {"text":"ふたりぼっち","color":"green"}
team add fwd_Team4 {"text":"ふたりぼっち","color":"light_purple"}
team add fwd_Team5 {"text":"ふたりぼっち","color":"gold"}
team modify fwd_meeting nametagVisibility never
team modify fwd_Team1 nametagVisibility never
team modify fwd_Team2 nametagVisibility never
team modify fwd_Team3 nametagVisibility never
team modify fwd_Team4 nametagVisibility never
team modify fwd_Team5 nametagVisibility never
team modify fwd_Team1 seeFriendlyInvisibles false
team modify fwd_Team2 seeFriendlyInvisibles false
team modify fwd_Team3 seeFriendlyInvisibles false
team modify fwd_Team4 seeFriendlyInvisibles false
team modify fwd_Team5 seeFriendlyInvisibles false
team add fwd_aqua
team add fwd_gold
team add fwd_yellow
team add fwd_red
team add fwd_pink
team modify fwd_aqua color aqua
team modify fwd_gold color gold
team modify fwd_yellow color yellow
team modify fwd_red color red
team modify fwd_pink color light_purple

execute unless score 人狼 fwd_settings matches 0.. run scoreboard players set 人狼 fwd_settings 1