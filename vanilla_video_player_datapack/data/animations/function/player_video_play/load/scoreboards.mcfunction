scoreboard objectives add video_uuid_storages dummy

#增加量(默认为1)
scoreboard players set #add_variable video_uuid_storages 1

#玩家数值计算临时储存
scoreboard players set #temp video_uuid_storages 0

function animations:player_video_play/storages/delete/load/scoreboards
