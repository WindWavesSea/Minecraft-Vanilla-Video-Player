$execute if data storage video:player_number_$(number)_video_play {blender:false} run function animations:play/set_frame0 with storage video:player_number_$(number)_video_play

$execute if data storage video:player_number_$(number)_video_play {blender:true} run function animations:play/set_frame1 with storage video:player_number_$(number)_video_play

#$say $(number) $(frame_zero)

data remove storage video:temp_player_video_play number
data remove storage video:temp_player_video_play frame_zero