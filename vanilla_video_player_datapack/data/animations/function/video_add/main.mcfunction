execute if score #debug video_setting matches 3 run tellraw @s [{text:"-------------video_add.main-----------start--------"}]

#计算赋值
$function animations:video_add/operation {name:"$(name)"}

#写入list
$data modify storage video:temp_add_video video_name set from storage video:$(name) video.name

function animations:video_add/strorage_add with storage video:temp_add_video
data remove storage video:temp_add_video max_value

execute if function animations:video_add/execute/if_function/storage/video/video_list_show/0 run function animations:video_add/dialog/video_list_show/add/main
data remove storage video:temp_add_video name
execute if score #debug video_setting matches 3 run tellraw @s [{text:"-------------video_add.main-------------end----------"}]
