data remove storage video:temp_player_video_play frame_zero

$data merge storage video:temp_player_video_play {frame_zero:"$(frame_zero)"}

$execute if score #debug video_setting matches 3 run tellraw @s [{text:"$(frame_zero)"}]

function animations:play/storages/set_zero with storage video:temp_player_video_play