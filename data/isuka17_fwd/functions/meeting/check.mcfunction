#> 会議中か、近くにオウムがいるか確認
execute if score #meeting fwd_settings matches 1.. if entity @e[type=parrot,tag=meeting_parrot,distance=..5] run function isuka17_fwd:meeting/start