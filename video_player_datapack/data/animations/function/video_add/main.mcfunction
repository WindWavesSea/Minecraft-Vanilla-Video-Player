#计算赋值
$function animations:video_add/operation {name:"$(name)"}

#写入list
$data modify storage video:temp_add_video video_name set from storage video:$(name) name

function animations:video_add/strorage_add with storage video:temp_add_video

data remove storage video:temp_add_video max_value
data remove storage video:temp_add_video name