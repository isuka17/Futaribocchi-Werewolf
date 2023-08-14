#> 常に実行
execute if score #fwd fwd_settings matches 1.. run function isuka17_fwd:death
execute if score #fwd fwd_settings matches 1.. run function isuka17_fwd:items/tick
execute if score #fwd fwd_settings matches 1.. run function isuka17_fwd:finish/judge
execute if score #fwd fwd_settings matches 1.. run function isuka17_fwd:ability/tick
function isuka17_fwd:start/countdown/tick