$execute store result storage video:dialog.$(player_number) video_list_play.temp.video.player_language_id int 1 run scoreboard players get @s windwaves_sea.dialog.language

$function animations:dialog/dialog/open_menu/2/video_get/language_video_get with storage video:dialog.$(player_number) video_list_play.temp.video

$data modify storage video:dialog.$(player_number) video_list_play.temp.video.name set from storage video:video_list $(video_id)

#say get

#$data get storage video:dialog.$(player_number)

$function animations:dialog/dialog/open_menu/2/video_get/language_get with storage video:dialog.$(player_number) video_list_play.temp.video