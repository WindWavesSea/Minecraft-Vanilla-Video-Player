execute if score #will_delete video_setting matches 0 run return run function animations:player_video_play/storages/delete/all_storages/delete_end

execute if score #delete_all_video_storages video_setting matches 1 if score #will_delete video_uuid_storages matches 1.. run function animations:player_video_play/storages/delete/all_storages/delete