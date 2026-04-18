execute store result storage video:setting temp.video_list.all_delete.delete_id int 1 run scoreboard players get #max_value video_list

function animations:video_delete/delete_all/get_name with storage video:setting temp.video_list.all_delete

execute \
if function \
animations:video_delete/delete_all/execute/if_function/storage/video/video_list_show/0 \
run \
function animations:video_delete/delete_all/video_list_show_delete/0 \
with storage video:setting temp.video_list.all_delete

function animations:video_delete/delete_all/delete with storage video:setting temp.video_list.all_delete

scoreboard players remove #max_value video_list 1

data remove storage video:setting temp.video_list.all_delete.delete_id
data remove storage video:setting temp.video_list.all_delete.delete_video_name