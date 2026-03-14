##获取玩家唯一UUID值
execute store result storage video:temp_player_video_play number int 1 run scoreboard players get @s video_uuid_storages

#播放完成停止
execute if score @s video_frame_player >= @s max_video_frame_player run return run function animations:stop

#实现自适应播放
function animations:player_video_play/frame/execute_player with storage video:temp_player_video_play

#写入帧数方便使用
function animations:play/storages/get_storages with storage video:temp_player_video_play
##计算现在帧前应该有几个0
#判断前面有几个0并写入0的数量
function animations:play/storages/get_zero

#执行播放帧操作
function animations:play/set_frame with storage video:temp_player_video_play