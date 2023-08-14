# 停電スイッチ
execute if entity @a[scores={fwd_blackout_switch=1..},nbt={Inventory:[{id:"minecraft:sunflower"}]}] run effect give @a[scores={fwd_blackout_switch=0},team=!fwd_spectator] blindness 10 0 true
execute if entity @a[scores={fwd_blackout_switch=1..},nbt={Inventory:[{id:"minecraft:sunflower"}]}] as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 1
execute if entity @a[scores={fwd_blackout_switch=1..},nbt={Inventory:[{id:"minecraft:sunflower"}]}] run title @a times 10 70 20
execute if entity @a[scores={fwd_blackout_switch=1..},nbt={Inventory:[{id:"minecraft:sunflower"}]}] run title @a[scores={fwd_blackout_switch=0}] title "停 電 発 生"
execute if entity @a[scores={fwd_blackout_switch=1..},nbt={Inventory:[{id:"minecraft:sunflower"}]}] run title @a[scores={fwd_blackout_switch=0}] subtitle "10秒後に復旧します"
execute if entity @a[scores={fwd_blackout_switch=1..},nbt={Inventory:[{id:"minecraft:sunflower"}]}] run kill @e[type=item,nbt={Item:{id:"minecraft:sunflower"}}]
execute if entity @a[scores={fwd_blackout_switch=1..},nbt={Inventory:[{id:"minecraft:sunflower"}]}] run clear @a[scores={fwd_blackout_switch=1..}] sunflower 1
scoreboard players set @a fwd_blackout_switch 0