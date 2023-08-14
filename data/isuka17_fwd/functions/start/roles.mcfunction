#> 役職を配布
scoreboard players reset @a fwd_rolenumber
scoreboard players set @a[tag=fwd_join] fwd_rolenumber 0
execute if score 預言者 fwd_settings matches 1.. run scoreboard players set @r[tag=fwd_join,tag=!special_role,limit=1] fwd_rolenumber 2
tag @a[scores={fwd_rolenumber=2}] add special_role
execute if score 探偵 fwd_settings matches 1.. run scoreboard players set @r[tag=fwd_join,tag=!special_role,limit=1] fwd_rolenumber 3
tag @a[scores={fwd_rolenumber=3}] add special_role

execute if score 人狼 fwd_settings matches ..1 run scoreboard players set @r[tag=fwd_join,tag=!special_role,limit=1] fwd_rolenumber 4
execute if score 人狼 fwd_settings matches 2.. run scoreboard players set @r[tag=fwd_join,tag=!special_role,limit=2] fwd_rolenumber 4
tag @a[scores={fwd_rolenumber=4}] add special_role
execute if score 狂人 fwd_settings matches 1.. run scoreboard players set @r[tag=fwd_join,tag=!special_role,limit=1] fwd_rolenumber 5

scoreboard players set @a[scores={fwd_rolenumber=0}] fwd_rolenumber 1
tag @a remove special_role