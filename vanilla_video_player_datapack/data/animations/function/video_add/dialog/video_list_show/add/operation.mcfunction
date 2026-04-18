execute if score #debug video_setting matches 3 run tellraw @s [{text:"-----------operation---start-------"}]
#玩家唯一值计算后赋予

#加上增加量
scoreboard players operation #temp video_dialog_show_list += #add_variable video_dialog_show_list

#加上上次计算值
scoreboard players operation #temp video_dialog_show_list += #max_value video_dialog_show_list

#赋予玩家计算最终值
scoreboard players set #end video_dialog_show_list 0

scoreboard players operation #end video_dialog_show_list += #temp video_dialog_show_list

execute if score #debug video_setting matches 3 run tellraw @s [{text:"dialog_show_id: "},{score:{name:"#end",objective:"video_dialog_show_list"}}]

#重置计算临时储存
scoreboard players reset #temp video_dialog_show_list

#给与计算值
$execute store result storage video:$(video_name) video.dialog_show_id int 1 run scoreboard players get #end video_dialog_show_list

execute store result score #max_value video_dialog_show_list run scoreboard players get #end video_dialog_show_list

execute store result storage video:temp_add_video max_value int 1 run scoreboard players get #end video_dialog_show_list

scoreboard players reset #end video_dialog_show_list
execute if score #debug video_setting matches 3 run tellraw @s [{text:"-----------operation---end-------"}]
