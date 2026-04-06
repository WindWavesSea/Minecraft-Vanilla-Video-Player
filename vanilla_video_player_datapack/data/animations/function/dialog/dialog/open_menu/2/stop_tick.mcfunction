$scoreboard objectives remove temp.dialog.video_list_play.player.$(number)
#$data remove storage video:dialog.$(number) video_list_play.temp

$data modify storage video:player_number_$(number)_video_play dialog.video_list.page_body set from storage video:player_number_$(number)_video_play dialog.video_list.page.1
$function animations:dialog/dialog/open_menu/2/page_show with storage video:player_number_$(number)_video_play dialog.video_list
$data remove storage video:player_number_$(number)_video_play dialog.video_list.page_body

scoreboard players set @s vvp.dialog.video_list.page_number 1

$data remove storage video:player_number_$(number)_video_play dialog.video_list.page_body