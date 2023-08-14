#> 占い
execute as @a[scores={fwd_seer=-1}] at @s run function isuka17_fwd:ability/seer/message

execute if entity @a[scores={fwd_seer=1}] run tag @a[scores={fwd_playernumber=1}] add fortune
execute if entity @a[scores={fwd_seer=2}] run tag @a[scores={fwd_playernumber=2}] add fortune
execute if entity @a[scores={fwd_seer=3}] run tag @a[scores={fwd_playernumber=3}] add fortune
execute if entity @a[scores={fwd_seer=4}] run tag @a[scores={fwd_playernumber=4}] add fortune
execute if entity @a[scores={fwd_seer=5}] run tag @a[scores={fwd_playernumber=5}] add fortune
execute if entity @a[scores={fwd_seer=6}] run tag @a[scores={fwd_playernumber=6}] add fortune
execute if entity @a[scores={fwd_seer=7}] run tag @a[scores={fwd_playernumber=7}] add fortune
execute if entity @a[scores={fwd_seer=8}] run tag @a[scores={fwd_playernumber=8}] add fortune
execute if entity @a[scores={fwd_seer=9}] run tag @a[scores={fwd_playernumber=9}] add fortune
execute if entity @a[scores={fwd_seer=10}] run tag @a[scores={fwd_playernumber=10}] add fortune

execute if entity @a[tag=fortune,scores={fwd_rolenumber=4}] run tellraw @a[scores={fwd_rolenumber=2}] [{"selector":"@a[tag=fortune]"},{"text":"は人狼です"}]
execute as @a[tag=fortune] unless entity @s[scores={fwd_rolenumber=4}] unless entity @s[scores={fwd_rolenumber=2}] run tellraw @a[scores={fwd_rolenumber=2}] [{"selector":"@a[tag=fortune]"},{"text":"は人狼ではありません"}]
execute if entity @a[tag=fortune,scores={fwd_rolenumber=2}] run tellraw @a[scores={fwd_rolenumber=2}] "自分を占ってどうするんですか・・・？"
execute if entity @a[tag=fortune,scores={fwd_rolenumber=2}] run scoreboard players enable @a[scores={fwd_rolenumber=2}] fwd_seer

execute as @a[scores={fwd_seer=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5

tag @a remove fortune
scoreboard players set @a fwd_seer 0
