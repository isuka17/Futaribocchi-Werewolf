# 役職本
item replace entity @a[scores={fwd_rolenumber=1}] hotbar.0 with written_book{Enchantments:[{id:"vanishing_curse",lvl:1}],display:{Name:'{"text":"役職本","italic":false}',Lore:['{"text":"自身の役職を確認できる。","color":"white","italic":false}']},HideFlags:32,title:"",author:"",pages:['[{"text":"あなたは","italic":false},{"text":"村人","color":"dark_green"},{"text":"です"}]']} 1
item replace entity @a[scores={fwd_rolenumber=2}] hotbar.0 with written_book{Enchantments:[{id:"vanishing_curse",lvl:1}],display:{Name:'{"text":"役職本","italic":false}',Lore:['{"text":"自身の役職を確認できる。","color":"white","italic":false}']},HideFlags:32,title:"",author:"",pages:['[{"text":"あなたは","italic":false},{"text":"預言者","color":"blue"},{"text":"です"},{"text":"\\n\\n占い先\\n\\n"},{"selector":"@a[scores={fwd_playernumber=1}]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 1"}},{"text":"\\n"},{"selector":"@a[scores={fwd_playernumber=2}]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 2"}},{"text":"\\n"},{"selector":"@a[scores={fwd_playernumber=3}]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 3"}},{"text":"\\n"},{"selector":"@a[scores={fwd_playernumber=4}]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 4"}},{"text":"\\n"},{"selector":"@a[scores={fwd_playernumber=5}]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 5"}},{"text":"\\n"},{"selector":"@a[scores={fwd_playernumber=6}]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 6"}},{"text":"\\n"},{"selector":"@a[scores={fwd_playernumber=7}]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 7"}},{"text":"\\n"},{"selector":"@a[scores={fwd_playernumber=8}]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 8"}},{"text":"\\n"},{"selector":"@a[scores={fwd_playernumber=9}]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 9"}},{"text":"\\n"},{"selector":"@a[scores={fwd_playernumber=10}]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger fwd_seer set 10"}}]']} 1
item replace entity @a[scores={fwd_rolenumber=3}] hotbar.0 with written_book{Enchantments:[{id:"vanishing_curse",lvl:1}],display:{Name:'{"text":"役職本","italic":false}',Lore:['{"text":"自身の役職を確認できる。","color":"white","italic":false}']},HideFlags:32,title:"",author:"",pages:['[{"text":"あなたは","italic":false},{"text":"探偵","color":"gold"},{"text":"です"},{"text":"\\n\\n死体の役職を調べる","clickEvent":{"action":"run_command","value":"/trigger fwd_detective set 1"}}]']} 1
item replace entity @a[scores={fwd_rolenumber=4}] hotbar.0 with written_book{Enchantments:[{id:"vanishing_curse",lvl:1}],display:{Name:'{"text":"役職本","italic":false}',Lore:['{"text":"自身の役職を確認できる。","color":"white","italic":false}']},HideFlags:32,title:"",author:"",pages:['[{"text":"あなたは","italic":false},{"text":"人狼","color":"red"},{"text":"です"}]']} 1
item replace entity @a[scores={fwd_rolenumber=5}] hotbar.0 with written_book{Enchantments:[{id:"vanishing_curse",lvl:1}],display:{Name:'{"text":"役職本","italic":false}',Lore:['{"text":"自身の役職を確認できる。","color":"white","italic":false}']},HideFlags:32,title:"",author:"",pages:['[{"text":"あなたは","italic":false},{"text":"狂人","color":"light_purple"},{"text":"です"}]']} 1

scoreboard players set #fwd fwd_settings 1