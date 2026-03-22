$execute store result score #temp.delete_video_id video_list run data get storage video:$(name) id

$data merge storage video:setting {temp:{video_list:{delete_only:{delete_video_name:"$(name)"}}}}

$data modify storage video:setting temp.video_list.delete_only.delete_id set from storage video:$(name) id

function animations:video_delete/delete_all/delete0 with storage video:setting temp.video_list.delete_only

scoreboard players operation #reset.id.max_value video_list = #max_value video_list

scoreboard players operation #reset.id.last_value video_list = #max_value video_list

scoreboard players remove #max_value video_list 1

scoreboard players set #reset.id.tick_run video_list 1

data remove storage video:setting temp.video_list.delete_only.delete_id
data remove storage video:setting temp.video_list.delete_only.delete_video_name