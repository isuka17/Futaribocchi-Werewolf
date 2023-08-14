# スコアボード作成
scoreboard objectives remove fwd_seer
scoreboard objectives remove fwd_detective
scoreboard objectives add fwd_seer trigger {"text":"[ふたりぼっち人狼] 占い","color":"yellow"}
scoreboard objectives add fwd_detective trigger {"text":"[ふたりぼっち人狼] 探偵","color":"yellow"}

# トリガー許可
scoreboard players enable @a[scores={fwd_rolenumber=2}] fwd_seer
scoreboard players enable @a[scores={fwd_rolenumber=3}] fwd_detective