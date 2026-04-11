$execute unless data storage video:$(video_name) video:{language:{$(player_language):""}} run \
return run \
function animations:dialog/dialog/open_menu/2/video_get/get_name \
with storage video:dialog.get_page.$(player_number) get_data

$data modify storage video:dialog.get_page.$(player_number) get_data.player_language set from storage video:$(video_name) video.language.default_language

$function animations:dialog/dialog/open_menu/2/video_get/get_name \
with storage video:dialog.get_page.$(player_number) get_data

#say languege_get

