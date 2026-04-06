data remove storage video:temp_player_video_play frame_zero

$data merge storage video:temp_player_video_play {frame_zero:"$(frame_zero)"}

#$say $(frame_zero)

function animations:play/storages/set_zero with storage video:temp_player_video_play