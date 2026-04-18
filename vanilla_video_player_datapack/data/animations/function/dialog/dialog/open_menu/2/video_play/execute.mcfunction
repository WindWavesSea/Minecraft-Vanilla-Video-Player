execute store result storage video:dialog_video_show video_id int 1 run scoreboard players get @s vvp.dialog.video.id.run

function animations:dialog/dialog/open_menu/2/clear_page0/main

scoreboard players reset @s vvp.dialog.video.id.run
scoreboard players enable @s vvp.dialog.video.id.run

function animations:dialog/dialog/open_menu/2/video_play/data_get with storage video:dialog_video_show

function animations:execute_run/start with storage video:dialog_video_show

dialog clear @s

data remove storage video:dialog_video_show video_id
data remove storage video:dialog_video_show video_name