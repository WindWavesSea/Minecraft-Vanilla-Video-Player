execute store result storage video:dialog_video_show video_id int 1 run scoreboard players get @s vvp.dialog.video.id

function animations:dialog/dialog/open_menu/2/clear_page0/main

function animations:dialog/dialog/open_menu/2/video_play_page/show_page with storage video:dialog_video_show

scoreboard players reset @s vvp.dialog.video.id
scoreboard players enable @s vvp.dialog.video.id

data remove storage video:dialog_video_show video_id