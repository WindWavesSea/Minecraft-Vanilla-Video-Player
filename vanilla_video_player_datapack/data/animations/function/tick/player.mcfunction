#如果玩家没有分配唯一播放值允许
execute unless score @s video_uuid_storages matches 0.. run function animations:player_video_play/all_init_unique_value_play


execute if score @s video_play_execute matches 1 unless score @s video_player_pause matches 1 run function animations:play

function animations:dialog/tick/player