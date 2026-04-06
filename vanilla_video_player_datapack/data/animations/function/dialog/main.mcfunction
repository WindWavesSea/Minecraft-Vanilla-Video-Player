scoreboard players reset @s vvp.dialog.dialog_show
scoreboard players enable @s vvp.dialog.dialog_show

execute unless score @s vvp.dialog.dialog_init matches 1 run function animations:dialog/init

function animations:dialog/execute