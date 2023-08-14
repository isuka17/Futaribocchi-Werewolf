#> 試合結果を表示
tellraw @a {"text":"\n======役職======","color":"dark_green"}
execute if entity @a[scores={fwd_rolenumber=1}] run tellraw @a [{"text":"村人:","color":"green"},{"selector":"@a[scores={fwd_rolenumber=1}]"}]
execute if entity @a[scores={fwd_rolenumber=2}] run tellraw @a [{"text":"預言者:","color":"aqua"},{"selector":"@a[scores={fwd_rolenumber=2}]"}]
execute if entity @a[scores={fwd_rolenumber=3}] run tellraw @a [{"text":"探偵:","color":"yellow"},{"selector":"@a[scores={fwd_rolenumber=3}]"}]
tellraw @a ""
execute if entity @a[scores={fwd_rolenumber=4}] run tellraw @a [{"text":"人狼:","color":"red"},{"selector":"@a[scores={fwd_rolenumber=4}]"}]
execute if entity @a[scores={fwd_rolenumber=5}] run tellraw @a [{"text":"狂人:","color":"light_purple"},{"selector":"@a[scores={fwd_rolenumber=5}]"}]
tellraw @a ""

# リセット
function isuka17_fwd:reset