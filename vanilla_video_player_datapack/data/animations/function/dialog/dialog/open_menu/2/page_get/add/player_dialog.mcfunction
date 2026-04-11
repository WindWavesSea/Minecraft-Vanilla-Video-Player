$execute if data storage video:dialog.get_page.$(player_number) {get_data:{change_page:2}} run data modify storage video:player_number_$(player_number)_video_play \
dialog.video_list.page.body \
append from storage video:dialog.get_page.$(player_number) get_data.video_body

$execute if data storage video:dialog.get_page.$(player_number) {get_data:{change_page:1}} run data modify storage video:player_number_$(player_number)_video_play \
dialog.video_list.page.body \
prepend from storage video:dialog.get_page.$(player_number) get_data.video_body

#say add_page.player_dialog_add