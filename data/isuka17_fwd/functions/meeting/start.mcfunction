#> 会議開始
scoreboard players set #会議参加人数 fwd_settings 0
execute store result score #会議参加人数 fwd_settings if entity @a[distance=..5,team=!fwd_spectator]

execute if score #会議参加人数 fwd_settings matches 3.. run tag @a[distance=..5,team=!fwd_spectator,limit=3,sort=nearest] add meeting_join
execute if score #会議参加人数 fwd_settings matches 3.. run tellraw @a[distance=..5] [{"text":"\n"},{"selector":"@a[tag=meeting_join]"},{"text":"で会議をしてください\n/tm <message> で会議参加者限定のチャットができます"}]
execute if score #会議参加人数 fwd_settings matches 3.. run effect give @a[tag=meeting_join] resistance 100 5 true
execute if score #会議参加人数 fwd_settings matches 3.. run title @a title "会議が始まります"
execute if score #会議参加人数 fwd_settings matches 3.. run team join fwd_meeting @a[tag=meeting_join]
execute if score #会議参加人数 fwd_settings matches 3.. run scoreboard players set #会議時間 fwd_settings 100
execute if score #会議参加人数 fwd_settings matches 3.. run schedule function isuka17_fwd:meeting/1s 1s
