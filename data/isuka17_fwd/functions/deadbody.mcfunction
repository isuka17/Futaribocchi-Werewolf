#> 死体
execute if entity @s[scores={fwd_rolenumber=4}] run summon armor_stand ~ ~-1.2 ~ {Tags:["fwd_deadbody","wolf"],Invisible:1,Marker:1}
execute unless entity @s[scores={fwd_rolenumber=4}] run summon armor_stand ~ ~-1.2 ~ {Tags:["fwd_deadbody"],Invisible:1,Marker:1}
loot replace entity @e[tag=fwd_deadbody,distance=..3,limit=1,sort=nearest] armor.head loot isuka17_fwd:playerhead