$execute if score #temp_page_number temp.dialog.video_list_play.player.$(player_number) matches 20 run \
function animations:dialog/dialog/open_menu/2/add_page/add_page {player_number:"$(player_number)"}

$execute store result storage video:dialog.$(player_number) video_list_play.temp.video.page_number int 1 run \
scoreboard players get #page_number temp.dialog.video_list_play.player.$(player_number)

$function animations:dialog/dialog/open_menu/2/add_page/add0 with storage video:dialog.$(player_number) video_list_play.temp.video

$scoreboard players add #temp_page_number temp.dialog.video_list_play.player.$(player_number) 1

#say add_page.add