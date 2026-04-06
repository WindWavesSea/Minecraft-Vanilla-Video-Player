$data modify storage video:player_number_$(number)_video_play video set from storage video:$(video_name) video

#新建一个stopwatch来记录秒数便于抽帧播放
$stopwatch create video:video_play_player$(number)