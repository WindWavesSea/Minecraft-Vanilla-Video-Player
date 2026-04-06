scoreboard objectives add video_uuid_storages dummy

#重置video_uuid_storages计分板
scoreboard players reset * video_uuid_storages

#上次玩家数值存储(用于唯一性计分板数值)
scoreboard players set #number video_uuid_storages 0

#增加量(默认为1)
scoreboard players set #add_variable video_uuid_storages 1

#玩家数值计算临时储存
scoreboard players set #temp video_uuid_storages 0
