#> 占い先を表示
tellraw @s {"text":"-------------------------"}
execute if entity @a[scores={fwd_playernumber=1}] run tellraw @s [{"text":"  "},{"selector":"@a[scores={fwd_playernumber=1}]"},{"text":" → "},{"text":"占う","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 1"},"color":"aqua"}]
execute if entity @a[scores={fwd_playernumber=2}] run tellraw @s [{"text":"  "},{"selector":"@a[scores={fwd_playernumber=2}]"},{"text":" → "},{"text":"占う","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 2"},"color":"aqua"}]
execute if entity @a[scores={fwd_playernumber=3}] run tellraw @s [{"text":"  "},{"selector":"@a[scores={fwd_playernumber=3}]"},{"text":" → "},{"text":"占う","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 3"},"color":"aqua"}]
execute if entity @a[scores={fwd_playernumber=4}] run tellraw @s [{"text":"  "},{"selector":"@a[scores={fwd_playernumber=4}]"},{"text":" → "},{"text":"占う","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 4"},"color":"aqua"}]
execute if entity @a[scores={fwd_playernumber=5}] run tellraw @s [{"text":"  "},{"selector":"@a[scores={fwd_playernumber=5}]"},{"text":" → "},{"text":"占う","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 5"},"color":"aqua"}]
execute if entity @a[scores={fwd_playernumber=6}] run tellraw @s [{"text":"  "},{"selector":"@a[scores={fwd_playernumber=6}]"},{"text":" → "},{"text":"占う","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 6"},"color":"aqua"}]
execute if entity @a[scores={fwd_playernumber=7}] run tellraw @s [{"text":"  "},{"selector":"@a[scores={fwd_playernumber=7}]"},{"text":" → "},{"text":"占う","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 7"},"color":"aqua"}]
execute if entity @a[scores={fwd_playernumber=8}] run tellraw @s [{"text":"  "},{"selector":"@a[scores={fwd_playernumber=8}]"},{"text":" → "},{"text":"占う","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 8"},"color":"aqua"}]
execute if entity @a[scores={fwd_playernumber=9}] run tellraw @s [{"text":"  "},{"selector":"@a[scores={fwd_playernumber=9}]"},{"text":" → "},{"text":"占う","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 9"},"color":"aqua"}]
execute if entity @a[scores={fwd_playernumber=10}] run tellraw @s [{"text":"  "},{"selector":"@a[scores={fwd_playernumber=10}]"},{"text":" → "},{"text":"占う","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 10"},"color":"aqua"}]
tellraw @s {"text":"-------------------------"}

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.8

# トリガー許可
scoreboard players enable @s fwd_seer