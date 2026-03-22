scoreboard objectives add video_list dummy

#重置video_list计分板
scoreboard players reset * video_list

#上次玩家数值存储(用于唯一性计分板数值)
scoreboard players set #number video_list 0

#增加量(默认为1)
scoreboard players set #add_variable video_list 1

#玩家数值计算临时储存
scoreboard players set #temp video_list 0