$data remove storage video:player_number_$(number)_video_play frame_zero

$data merge storage video:player_number_$(number)_video_play {frame_zero:"$(frame_zero)"}

#$say $(number) $(frame_zero)
