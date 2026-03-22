#uuid分配
scoreboard objectives add video_uuid_storages dummy

#视频帧
scoreboard objectives add video_frame_player dummy

#视频播放器总体设置
scoreboard objectives add video_setting dummy

#视频本身帧数定义
scoreboard objectives add video_frame dummy

#最大帧数
scoreboard objectives add max_video_frame_player dummy

#检测玩家是否播放视频的计分板
scoreboard objectives add video_play_execute dummy

scoreboard objectives add video_player_pause dummy

scoreboard objectives add video_frame_player_pause dummy
scoreboard objectives add video_frame_player_pause1 dummy
scoreboard objectives add video_frame_player_pause2 dummy
function animations:player_video_play/load/scoreboards

function animations:video_add/load/scoreboards