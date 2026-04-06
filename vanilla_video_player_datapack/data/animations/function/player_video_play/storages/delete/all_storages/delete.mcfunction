#减一计算后放入数据储存中待入函数宏
scoreboard players remove #will_delete video_delete_storages 1

execute store result storage video:setting number int 1 run scoreboard players get #will_delete video_delete_storages

function animations:player_video_play/storages/delete/all_storages/delete_macros with storage video:setting