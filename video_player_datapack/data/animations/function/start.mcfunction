#如果玩家没有分配唯一播放值允许
execute unless score @s video_uuid_storages matches 0.. run function animations:player_video_play/all_init_unique_value_play

##用播放的视频数据储存替换玩家的数据储存
#获取玩家计分板值用于数据储存对应
execute store result storage video:temp_player_number_get number int 1 run scoreboard players get @s video_uuid_storages

$data modify storage video:temp_player_number_get video_name set value "$(video_name)"

function animations:start/storages_get with storage video:temp_player_number_get

#使用新替换的数据空间运行start

function animations:start/start_macros with storage video:temp_player_number_get