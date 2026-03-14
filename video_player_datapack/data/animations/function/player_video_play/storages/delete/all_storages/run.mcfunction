scoreboard players set #delete_all_video_storages video_setting 1

#获取当前的玩家最大播放器ID并赋予到delete计分板中方便删除
scoreboard players operation #will_delete video_delete_storages = #number video_uuid_storages

scoreboard players add #will_delete video_delete_storages 1

