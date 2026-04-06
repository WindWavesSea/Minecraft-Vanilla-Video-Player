$execute store result storage video:dialog.$(number) video_list_play.temp.player_number int 1 run scoreboard players get @s video_uuid_storages

$execute if score @s temp.dialog.video_list_play.player.$(number) < max_value temp.dialog.video_list_play.player.$(number) run function animations:dialog/dialog/open_menu/2/tick0 with storage video:dialog.$(number) video_list_play.temp

$execute if score @s temp.dialog.video_list_play.player.$(number) = max_value temp.dialog.video_list_play.player.$(number) run function animations:dialog/dialog/open_menu/2/stop_tick {number:$(number)}

#$data remove storage video:dialog.$(number) video_list_play.temp

#$say $(number)