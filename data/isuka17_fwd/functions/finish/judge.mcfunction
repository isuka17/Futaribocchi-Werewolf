# カウント
execute store result score #村人の数 fwd_settings if entity @a[scores={fwd_rolenumber=1..3},team=!fwd_spectator]
execute store result score #人狼の数 fwd_settings if entity @a[scores={fwd_rolenumber=4},team=!fwd_spectator]

# 勝利判定
execute if score #人狼の数 fwd_settings matches 0 run function isuka17_fwd:finish/villager_win
execute if score #村人の数 fwd_settings matches 0 run function isuka17_fwd:finish/wolf_win