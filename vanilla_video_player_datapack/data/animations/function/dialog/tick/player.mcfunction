scoreboard players enable @s vvp.dialog.dialog_show
scoreboard players enable @s vvp.dialog.dialog_player_setting

execute if score @s vvp.dialog.dialog_show matches 1.. run function animations:dialog/dialog/opem_menu/execute

execute if score @s vvp.dialog.dialog_player_setting matches 1.. run function animations:dialog/dialog/player_setting/execute

execute unless score @s windwaves_sea.dialog.language matches 1.. run scoreboard players set @s windwaves_sea.dialog.language 1

function animations:dialog/dialog/opem_menu/2/tick