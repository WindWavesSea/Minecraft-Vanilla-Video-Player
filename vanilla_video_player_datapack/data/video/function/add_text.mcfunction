$data merge storage video:$(number) \
{video:\
{frame_zero:"000",\
frame:"0",\
path:"animation:school/",\
name:"$(number)",\
blender_name:"",\
frame_rate:"60",\
sound:"",\
sound_switch:false,\
max_frame:740,\
blender:true,\
slot:"head",\
resolution:{\
switch:false,\
default_size:1,\
size_list:{\
1:true,\
2:false,\
3:false,\
4:false\
}\
},\
language:{\
default_language:"en-us",\
en-us:"$(number)",\
zh-cn:"$(number)"\
}\
}\
}

$function animations:video_add/main with storage video:$(number) video
