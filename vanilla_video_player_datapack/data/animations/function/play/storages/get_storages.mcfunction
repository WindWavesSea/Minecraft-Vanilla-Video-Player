#写入当前帧数
$execute store result storage video:player_number_$(number)_video_play video.frame int 1 run scoreboard players get @s video_frame_player

$execute if score #debug video_setting matches 3 run tellraw @s [{text:"$(number)"}]