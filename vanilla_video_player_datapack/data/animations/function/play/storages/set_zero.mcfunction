$data remove storage video:player_number_$(number)_video_play video.frame_zero

$data merge storage video:player_number_$(number)_video_play {video:{frame_zero:"$(frame_zero)"}}

$execute if score #debug video_setting matches 3 run tellraw @s [{text:"$(number) $(frame_zero)"}]
