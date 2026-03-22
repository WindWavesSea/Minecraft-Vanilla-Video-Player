#玩家唯一值计算后赋予

#加上增加量
scoreboard players operation #temp video_list += #add_variable video_list

#加上上次计算值
scoreboard players operation #temp video_list += #number video_list

#赋予玩家计算最终值
scoreboard players set #end video_list 0

scoreboard players operation #end video_list += #temp video_list

#重置计算临时储存
scoreboard players reset #temp video_list

#给与计算值
$execute store result storage video:$(name) id int 1 run scoreboard players get #end video_list

execute store result score #max_value video_list run scoreboard players get #end video_list

execute store result storage video:temp_add_video max_value int 1 run scoreboard players get #end video_list

scoreboard players reset #end video_list