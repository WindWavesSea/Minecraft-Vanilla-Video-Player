$execute unless data storage video:$(name) video:{language:{$(player_language):""}} run return run function animations:dialog/dialog/open_menu/2/video_get/get_name with storage video:dialog.$(player_number) video_list_play.temp.video

$data modify storage video:dialog.$(player_number) video_list_play.temp.video.player_language set from storage video:$(name) video.language.default_language

$function animations:dialog/dialog/open_menu/2/video_get/get_name with storage video:dialog.$(player_number) video_list_play.temp.video

#say languege_get

