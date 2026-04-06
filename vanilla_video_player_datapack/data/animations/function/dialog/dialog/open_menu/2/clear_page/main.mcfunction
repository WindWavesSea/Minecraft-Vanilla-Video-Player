scoreboard players reset @s vvp.dialog.video_list.return
scoreboard players enable @s vvp.dialog.video_list.return

execute store result storage video:dialog_video_show temp.player_id int 1 run scoreboard players get @s video_uuid_storages
function animations:dialog/dialog/open_menu/2/clear_page/clear with storage video:dialog_video_show temp

data remove storage video:dialog temp

dialog show @s animations:open_menu