$execute if score #page_number temp.dialog.video_list_play.player.$(number) matches 1.. run return run function animations:dialog/dialog/open_menu/2/set_tick with storage video:dialog_run video_list_play.temp

$scoreboard objectives remove temp.dialog.video_list_play.player.$(number)

function animations:dialog/dialog/open_menu/2/show_no_list