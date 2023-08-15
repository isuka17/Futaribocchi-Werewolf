#> 会議地点候補をリセット
execute at @e[type=armor_stand,tag=meeting] run fill ~ ~1 ~ ~ ~1 ~ air replace stone_button
execute at @e[type=armor_stand,tag=meeting] run fill ~ ~ ~ ~ ~ ~ air replace command_block
kill @e[type=armor_stand,tag=meeting]