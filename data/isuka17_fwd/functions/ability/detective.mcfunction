#> 死体を調査
execute as @a[scores={fwd_detective=1..}] at @s if entity @e[tag=fwd_deadbody,tag=wolf,distance=..3,limit=1,sort=nearest] run tellraw @s "この死体は人狼です"
execute as @a[scores={fwd_detective=1..}] at @s if entity @e[tag=fwd_deadbody,tag=!wolf,distance=..3,limit=1,sort=nearest] run tellraw @s "この死体は人狼ではありません"
execute as @a[scores={fwd_detective=1..}] at @s unless entity @e[tag=fwd_deadbody] run scoreboard players enable @s fwd_detective
execute as @a[scores={fwd_detective=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
scoreboard players set @a fwd_detective 0
