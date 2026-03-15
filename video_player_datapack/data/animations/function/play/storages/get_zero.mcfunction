##如果是blender输出的文件执行以下检测
$execute if data storage video:player_number_$(number)_video_play {blender:"true"} run function animations:play/storages/blender_execute/execute

##如果不是输出的文件执行以下检测
$execute if data storage video:player_number_$(number)_video_play {blender:"false"} run function animations:play/storages/zero_execute/execute