#> 死亡時の処理
team join fwd_spectator @a[scores={fwd_deathcount=1..}]
gamemode spectator @a[team=fwd_spectator]
execute as @a[scores={fwd_deathcount=1..}] at @s run function isuka17_fwd:deadbody
scoreboard players set @a fwd_deathcount 0