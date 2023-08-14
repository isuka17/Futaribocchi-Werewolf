# コネシマの涙
execute if entity @a[scores={fwd_koneshima_tears=1..},nbt={Inventory:[{id:"minecraft:ghast_tear"}]}] as @a at @s run playsound minecraft:entity.horse.death master @s ~ ~ ~ 1 1.1
execute if entity @a[scores={fwd_koneshima_tears=1..},nbt={Inventory:[{id:"minecraft:ghast_tear"}]}] at @a[scores={fwd_koneshima_tears=0},team=!fwd_spectator] run summon armor_stand ~ ~ ~ {Tags:["koneshima_tears"],Invisible:1,Marker:1,Small:1}
execute if entity @a[scores={fwd_koneshima_tears=1..},nbt={Inventory:[{id:"minecraft:ghast_tear"}]}] at @e[type=armor_stand,tag=koneshima_tears] run fill ~ ~ ~ ~ ~ ~ water replace air
execute if entity @a[scores={fwd_koneshima_tears=1..},nbt={Inventory:[{id:"minecraft:ghast_tear"}]}] run title @a times 10 70 20
execute if entity @a[scores={fwd_koneshima_tears=1..},nbt={Inventory:[{id:"minecraft:ghast_tear"}]}] run title @a[scores={fwd_koneshima_tears=0}] title "コネシマが泣いている"
execute if entity @a[scores={fwd_koneshima_tears=1..},nbt={Inventory:[{id:"minecraft:ghast_tear"}]}] run kill @e[type=item,nbt={Item:{id:"minecraft:ghast_tear"}}]
execute if entity @a[scores={fwd_koneshima_tears=1..},nbt={Inventory:[{id:"minecraft:ghast_tear"}]}] run clear @a[scores={fwd_koneshima_tears=1..}] ghast_tear 1
scoreboard players set @a fwd_koneshima_tears 0