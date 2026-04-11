$execute if score #max_page_number temp.dialog.video_list_play.player.$(number) matches 1.. run return run function animations:dialog/dialog/open_menu/2/set_run
$scoreboard objectives remove temp.dialog.video_list_play.player.$(number)

scoreboard players set @s vvp.dialog.video_list.page_change 0

function animations:dialog/dialog/open_menu/2/show_no_list