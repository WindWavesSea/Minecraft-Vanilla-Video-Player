#计算赋值
$function animations:video_add/operation {name:"$(name)"}

#写入list
$execute store result storage video:temp_add_video video_name int 1 run data get storage video:$(name) name

function animations:video_add/strorage_add with storage video:temp_add_video

data remove storage video:temp_add_video max_value
data remove storage video:temp_add_video name