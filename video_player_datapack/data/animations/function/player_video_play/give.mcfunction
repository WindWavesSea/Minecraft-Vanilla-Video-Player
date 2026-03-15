$execute if data storage video:player_number_$(number)_video_play {blender:"true"} run return run function animations:start/start_macros1 with storage video:player_number_$(number)_video_play

$execute if data storage video:player_number_$(number)_video_play {blender:"false"} run return run function animations:start/start_macros0 with storage video:player_number_$(number)_video_play