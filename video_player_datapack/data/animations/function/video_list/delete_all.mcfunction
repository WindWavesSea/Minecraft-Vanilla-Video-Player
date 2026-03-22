execute store result storage video:setting temp.video_list.all_delete.delete_id int 1 run scoreboard players get #max_value video_list

function animations:video_delete/delete_all/delete with storage video:setting temp.video_list.all_delete

scoreboard players remove #max_value video_list 1

scoreboard players set #all_delete video_list 1

data remove storage video:setting temp.video_list.all_delete.delete_id
data remove storage video:setting temp.video_list.all_delete.delete_video_name