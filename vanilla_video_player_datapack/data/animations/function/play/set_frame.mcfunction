$execute if data storage video:player_number_$(number)_video_play video{blender:false} run function animations:play/run/default {number:"$(number)"}

$execute if data storage video:player_number_$(number)_video_play video{blender:true} run function animations:play/run/blender {number:"$(number)"}

#$say $(number) $(frame_zero)

data remove storage video:temp_player_video_play number
data remove storage video:temp_player_video_play frame_zero