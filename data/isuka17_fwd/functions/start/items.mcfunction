# 初期アイテム
give @a[team=!fwd_spectator] bow{display:{Name:'{"text":"人狼用弓","color":"red","italic":false}'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:255s},{id:"minecraft:infinity",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1
give @a[team=!fwd_spectator] arrow{display:{Name:'{"text":"人狼用矢","color":"red","italic":false}'},HideFlags:1,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]} 1

# 特殊アイテム
scoreboard players reset @a fwd_itemnumber
scoreboard players set @a[team=!fwd_spectator] fwd_itemnumber 0
execute as @a[team=!fwd_spectator,sort=random] store result score @s fwd_itemnumber if entity @a[scores={fwd_itemnumber=0}]
give @a[scores={fwd_itemnumber=1}] ender_pearl 1
give @a[scores={fwd_itemnumber=2}] lingering_potion{display:{Name:'{"text":"煙玉","color":"gray","italic":false}',Lore:['{"text":"投げた位置に10秒間だけ煙を出す。","italic":false,"color":"white"}']},CustomPotionColor:0,CustomPotionEffects:[{Id:33,Duration:1,ShowParticles:false}],HideFlags:255} 3
give @a[scores={fwd_itemnumber=3}] shield{display:{Name:'{"text":"機動隊の盾","color":"light_purple","italic":false}',Lore:['{"text":"攻撃から身を守り、プレイヤーを吹き飛ばす。","color":"white","italic":false}']},Enchantments:[{id:"knockback",lvl:7}],HideFlags:255,Damage:335} 1
give @a[scores={fwd_itemnumber=4}] lightning_rod{display:{Name:'{"text":"避雷針","color":"gold","italic":false}',Lore:['{"text":"近づいたプレイヤーをスタンさせる。","color":"white","italic":false}']}} 2
give @a[scores={fwd_itemnumber=5}] sunflower{display:{Name:'{"text":"停電スイッチ","color":"yellow","italic":false}',Lore:['{"text":"10秒間、使用者以外の視界が奪われる。","color":"white","italic":false}']}} 2
give @a[scores={fwd_itemnumber=6}] ghast_tear{display:{Name:'{"text":"コネシマの涙","color":"blue","italic":false}',Lore:['{"text":"使用者以外のプレイヤーの位置が水で満たされる。","color":"white","italic":false}']}} 2
give @a[scores={fwd_itemnumber=7}] potion{display:{Name:'{"text":"千里馬のポーション","color":"aqua","italic":false}',Lore:['{"text":"30秒間、移動速度が大幅に上昇する。","color":"white","italic":false}']},CustomPotionEffects:[{Id:1,Duration:600,Amplifier:4}],CustomPotionColor:36095,HideFlags:255} 1
give @a[scores={fwd_itemnumber=8}] potion{display:{Name:'{"text":"脚力10倍ポーション","color":"green","italic":false}',Lore:['{"text":"30秒間、跳躍力が大幅に上昇する。","color":"white","italic":false}']},CustomPotionEffects:[{Id:8,Duration:600,Amplifier:4}],CustomPotionColor:515328,HideFlags:255} 1
give @a[scores={fwd_itemnumber=9}] elytra{Unbreakable:true,HideFlags:255} 1
give @a[scores={fwd_itemnumber=10}] totem_of_undying 1