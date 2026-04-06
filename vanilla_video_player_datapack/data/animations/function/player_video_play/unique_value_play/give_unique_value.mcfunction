#玩家唯一值计算后赋予

#加上增加量
scoreboard players operation #temp video_uuid_storages += #add_variable video_uuid_storages

#加上上次计算值
scoreboard players operation #temp video_uuid_storages += #number video_uuid_storages

#赋予玩家计算最终值
scoreboard players set @s video_uuid_storages 0

scoreboard players operation @s video_uuid_storages += #temp video_uuid_storages

#重置计算临时储存
scoreboard players reset #temp video_uuid_storages