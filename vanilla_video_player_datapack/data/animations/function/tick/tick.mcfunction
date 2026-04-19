function animations:player_video_play/storages/delete/all_storages/tick
function animations:video_delete/tick
function animations:debug/main

execute if score #reset_video video_setting matches 1 if score #reset video_setting matches 3 run function animations:reset/reset0
execute if score #reset_video video_setting matches 2 if score #reset video_setting matches 2 run function animations:reset/reset0