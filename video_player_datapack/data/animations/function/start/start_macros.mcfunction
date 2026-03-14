#播放视频声音
$execute if data storage video:player_number_$(number)_video_play {sound_switch:true} run function animations:start/sound_play with storage video:player_number_$(number)_video_play

$function animations:start/start_macros0 with storage video:player_number_$(number)_video_play

#获取最大帧数
$execute store result score @s max_video_frame_player run data get storage video:player_number_$(number)_video_play max_frame 1

data remove storage video:temp_player_number_get number
data remove storage video:temp_player_number_get video_name