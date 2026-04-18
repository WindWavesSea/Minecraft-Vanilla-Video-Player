scoreboard players reset @s vvp.dialog.video.id.run
scoreboard players enable @s vvp.dialog.video.id.run

execute store result storage video:dialog return_video_list.player_number int 1 \
run scoreboard players get @s video_uuid_storages

function animations:dialog/dialog/open_menu/2/video_play_page/return0 with storage video:dialog return_video_list

data remove storage video:dialog return_video_list