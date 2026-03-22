$execute store result score #temp.delete_video_id video_list run data get storage title:$(name) id
$function animations:video_delete/delete_all/delete0 {delete_video_name:"$(name)"}

scoreboard players operation #reset.id.max_value video_list = #max_value video_list

scoreboard players operation #reset.id.last_value video_list = #max_value video_list

scoreboard players remove #max_value video_list 1

scoreboard players set #reset.id.tick_run video_list 1
