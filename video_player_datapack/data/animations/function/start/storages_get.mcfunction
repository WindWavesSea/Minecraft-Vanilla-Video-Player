$data modify storage video:player_number_$(number)_video_play frame_zero set from storage video:$(video_name) frame_zero
$data modify storage video:player_number_$(number)_video_play frame set from storage video:$(video_name) frame
$data modify storage video:player_number_$(number)_video_play path set from storage video:$(video_name) path
$data modify storage video:player_number_$(number)_video_play name set from storage video:$(video_name) name
$data modify storage video:player_number_$(number)_video_play frame_rate set from storage video:$(video_name) frame_rate
$data modify storage video:player_number_$(number)_video_play sound set from storage video:$(video_name) sound
$data modify storage video:player_number_$(number)_video_play sound_switch set from storage video:$(video_name) sound_switch
$data modify storage video:player_number_$(number)_video_play max_frame set from storage video:$(video_name) max_frame
$data modify storage video:player_number_$(number)_video_play blender set from storage video:$(video_name) blender
$data modify storage video:player_number_$(number)_video_play blender_name set from storage video:$(video_name) blender_name
$data modify storage video:player_number_$(number)_video_play slot set from storage video:$(video_name) slot

#新建一个stopwatch来记录秒数便于抽帧播放
$stopwatch create video:video_play_player$(number)