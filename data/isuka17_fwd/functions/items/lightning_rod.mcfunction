# 避雷針
execute at @a[scores={fwd_lightning_rod=1..},nbt={Inventory:[{id:"minecraft:lightning_rod"}]}] if block ~ ~ ~ air run playsound minecraft:block.stone.break master @a ~ ~ ~ 2 1.2
execute at @a[scores={fwd_lightning_rod=1..},nbt={Inventory:[{id:"minecraft:lightning_rod"}]}] unless block ~ ~ ~ air run give @a[scores={fwd_lightning_rod=1..},nbt={Inventory:[{id:"minecraft:lightning_rod"}]}] lightning_rod{display:{Name:'{"text":"避雷針","color":"gold","italic":false}',Lore:['{"text":"近づいたプレイヤーをスタンさせる。","color":"white","italic":false}']}} 3
execute at @a[scores={fwd_lightning_rod=1..},nbt={Inventory:[{id:"minecraft:lightning_rod"}]}] unless block ~ ~ ~ air run tellraw @a[scores={fwd_lightning_rod=1..},nbt={Inventory:[{id:"minecraft:lightning_rod"}]}] {"text":"避雷針を設置できませんでした","color":"gold"}
execute at @a[scores={fwd_lightning_rod=1..},nbt={Inventory:[{id:"minecraft:lightning_rod"}]}] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {Tags:["lightning_rod"],Invisible:1,Marker:1,Small:1}
execute at @a[scores={fwd_lightning_rod=1..},nbt={Inventory:[{id:"minecraft:lightning_rod"}]}] if block ~ ~ ~ air run setblock ~ ~ ~ lightning_rod
tag @a[scores={fwd_lightning_rod=1..},nbt={Inventory:[{id:"minecraft:lightning_rod"}]}] add used_lightning_rod
execute if entity @a[scores={fwd_lightning_rod=1..},nbt={Inventory:[{id:"minecraft:lightning_rod"}]}] run kill @e[type=item,nbt={Item:{id:"minecraft:lightning_rod"}}]
execute if entity @a[scores={fwd_lightning_rod=1..},nbt={Inventory:[{id:"minecraft:lightning_rod"}]}] run clear @a[scores={fwd_lightning_rod=1..}] lightning_rod 2
scoreboard players set @a fwd_lightning_rod 0
execute at @e[type=armor_stand,tag=lightning_rod] run particle wax_off ~ ~0.2 ~ 0.3 0 0.3 0.1 1 force @a

execute as @e[type=armor_stand,tag=lightning_rod] at @s if entity @a[distance=..3,tag=!used_lightning_rod,team=!fwd_spectator] run summon lightning_bolt ~ ~ ~
execute as @e[type=armor_stand,tag=lightning_rod] at @s run effect give @a[distance=..3,tag=!used_lightning_rod,team=!fwd_spectator] blindness 10 0 true
execute as @e[type=armor_stand,tag=lightning_rod] at @s if entity @a[distance=..3,tag=!used_lightning_rod,team=!fwd_spectator] run tag @a remove used_lightning_rod
execute as @e[type=armor_stand,tag=lightning_rod] at @s if entity @a[distance=..3,tag=!used_lightning_rod,team=!fwd_spectator] run fill ~ ~ ~ ~ ~ ~ air replace lightning_rod
execute as @e[type=armor_stand,tag=lightning_rod] at @s if entity @a[distance=..3,tag=!used_lightning_rod,team=!fwd_spectator] run kill @s