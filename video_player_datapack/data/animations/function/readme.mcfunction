##使用nbt来获取计分板分数并创建单独播放器(nbt)

##单独播放器
##参数解析
#   frame_zero 查看第一个图片的变化一般为全0，查看最后一个0前面有几个0，将这些0写到frame_zero里，如video0000.png应该将000写如，如下{frame_zero:"000"}
#   frame(帧数) 用来控制玩家目前播放的视频帧(图片) 例如{frame:1}
#   path（路径) 用来指定视频输出的物品文件位置 例如{video:text_video/}
#   name (视频名称) 用来匹配帧号前的名称 例如 video0000.png 数字前面的video就是名称，因此此处应该这样写{name:"video"}
#       名称建议越短越好(因为使用宏，字符越少性能消耗越少)
#   frame_rate(帧率) 用于自定义帧率, 只支持服务器使用，服务器使用需要设置function-permission-level=3，
#           如果不是服务器也需要填写视频实际帧率用于自适应
#           如果需要使用请自行在start/start_macros0开启#$tick rate $(frame_rate)将#号删除即可
#           如果需要还原游戏刻请在stop里写上$tick rate 20
#   sound(视频声音) 如果视频有声音需要在此写上sounds.json定义的视频声音播放 参考playsound来写
#   sound_switch(声音是否启用)输入false/true来控制 {sound_switch:false/true}
#   max_frame(最大帧数)
##获取文件计分板使用Storages来方便传参