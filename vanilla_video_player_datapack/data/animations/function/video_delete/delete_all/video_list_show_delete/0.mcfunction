$data modify storage video:setting temp.video_list.all_delete.dialog_show_delete_id set from storage video:$(delete_video_name) video.dialog_show_id

function animations:video_delete/delete_all/video_list_show_delete/1 with storage video:setting temp.video_list.all_delete

scoreboard players remove #max_value video_dialog_show_list 1