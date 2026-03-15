#继续播放
scoreboard players reset @s video_player_pause

execute store result storage video:temp_player_video_play pause_number int 1 run scoreboard players get @s video_uuid_storages

function animations:player_video_play/reset_watch with storage video:temp_player_video_play

data remove storage video:temp_player_video_play pause_number