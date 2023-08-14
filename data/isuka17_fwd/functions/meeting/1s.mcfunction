#> 1秒ごとに実行
scoreboard players remove #会議時間 fwd_settings 1
execute if score #会議時間 fwd_settings matches 0 run scoreboard players set #meeting fwd_settings 0
execute if score #会議時間 fwd_settings matches 0 run kill @e[tag=meeting_parrot]
execute if score #会議時間 fwd_settings matches 0 run schedule clear isuka17_fwd:meeting/1s
execute if score #会議時間 fwd_settings matches 0 run team join fwd_Team1 @a[tag=fwd_Team1]
execute if score #会議時間 fwd_settings matches 0 run team join fwd_Team2 @a[tag=fwd_Team2]
execute if score #会議時間 fwd_settings matches 0 run team join fwd_Team3 @a[tag=fwd_Team3]
execute if score #会議時間 fwd_settings matches 0 run team join fwd_Team4 @a[tag=fwd_Team4]
execute if score #会議時間 fwd_settings matches 0 run team join fwd_Team5 @a[tag=fwd_Team5]
execute if score #会議時間 fwd_settings matches 0 run schedule function isuka17_fwd:meeting/opening 180s
schedule function isuka17_fwd:meeting/1s 1s