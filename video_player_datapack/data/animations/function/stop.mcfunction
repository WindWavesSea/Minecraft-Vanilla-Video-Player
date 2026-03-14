##获取玩家唯一UUID值
execute store result storage video:temp_player_video_play number int 1 run scoreboard players get @s video_uuid_storages

#关闭tick执行
scoreboard players reset @s video_play_execute

#重置个人播放器
function animations:player_video_play/storages/delete/all_storages/delete_macros with storage video:temp_player_video_play

function animations:player_video_play/storages/add_player_storages_macros with storage video:temp_player_video_play

function animations:player_video_play/delete_stopwatch with storage video:temp_player_video_play

scoreboard players reset @s video_frame_player
scoreboard players reset @s max_video_frame_player

scoreboard players reset @s video_player_pause

#重置临时数据空间
data remove storage video:temp_player_video_play number

item replace entity @s armor.head with air

stopsound @s