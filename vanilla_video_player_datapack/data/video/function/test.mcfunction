data merge storage video:test \
{video:\
{frame_zero:"000",\
frame:"0",\
path:"animation:test/",\
name:"test",\
blender_name:"",\
frame_rate:"60",\
sound:"",\
sound_switch:false,\
max_frame:740,\
blender:true,\
slot:"head",\
dialog:{\
    video_list_show:true\
},\
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
en-us:"test",\
zh-cn:"test"\
}\
}\
}

function animations:video_add/main with storage video:test video