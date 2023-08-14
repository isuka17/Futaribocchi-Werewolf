#> 通話相手を抽選
team join fwd_Team1 @a[tag=fwd_join,team=,limit=2]
team join fwd_Team2 @a[tag=fwd_join,team=,limit=2]
team join fwd_Team3 @a[tag=fwd_join,team=,limit=2]
team join fwd_Team4 @a[tag=fwd_join,team=,limit=2]
team join fwd_Team5 @a[tag=fwd_join,team=,limit=2]

tellraw @a ""
tellraw @a[team=fwd_Team1] [{"selector":"@a[team=fwd_Team1]"},{"text":"で通話またはチャットをしてください\n/tm <message> で2人限定のチャットができます"}]
tellraw @a[team=fwd_Team2] [{"selector":"@a[team=fwd_Team2]"},{"text":"で通話またはチャットをしてください\n/tm <message> で2人限定のチャットができます"}]
tellraw @a[team=fwd_Team3] [{"selector":"@a[team=fwd_Team3]"},{"text":"で通話またはチャットをしてください\n/tm <message> で2人限定のチャットができます"}]
tellraw @a[team=fwd_Team4] [{"selector":"@a[team=fwd_Team4]"},{"text":"で通話またはチャットをしてください\n/tm <message> で2人限定のチャットができます"}]
tellraw @a[team=fwd_Team5] [{"selector":"@a[team=fwd_Team5]"},{"text":"で通話またはチャットをしてください\n/tm <message> で2人限定のチャットができます"}]