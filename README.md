# 我的世界原版视频播放器
[English](README/README_en.md)  [简体中文](README/README.md)

## 目录

- [视频要求](#视频要求)
	-  [使用加速游戏刻播放60帧视频](#使用加速游戏刻播放60帧视频)
    -  [使用插帧播放60帧视频](#使用插帧播放60帧视频)
- [配置](#配置)
    - [参数解析](#参数解析)
   	 	- [frame_zero](#frame_zero)
   	 	- [frame](#frame)
   	 	- [path](#path)
        - [name](#name)
        - [blender](#blender)
        - [blender_name](#blender_name)
        - [frame_rate](#frame_rate)
        - [sound](#sound)
        - [sound_switch](#sound_switch)
        - [max_frame](#max_frame)
- [示例](#示例)
- [原理](#原理)
- [指令](#指令)
	- [开始播放](#开始播放)
 	- [终止播放](#终止播放)
	- [暂停播放](#暂停播放)
	- [继续播放](#继续播放)


## 视频要求

需要为图片序列(.png格式）

### 使用加速游戏刻播放60帧视频

视频最好为20帧的，如果使用60帧的视频需要将[tick](http://https://zh.minecraft.wiki/w/%E5%91%BD%E4%BB%A4/tick)设置为60

```Minecraft_Command
/tick rate 60
```

设置目标[游戏刻](https://zh.minecraft.wiki/w/%E5%88%BB?variant=zh-cn#%E6%B8%B8%E6%88%8F%E5%88%BB)速率。

### 使用插帧播放60帧视频

视频配置中frame_rate是原视频帧率，如果视频为60帧可以这样配置

 ` frame_rate:60`

## 配置<a id="配置"></a>

### 参数解析

#### frame_zero

查看第一个图片的变化一般为全0，查看最后一个0前面有几个0，将这些0写到frame\_zero里，如video0000.png应该将000写如，
如下

 ` {frame_zero:"000"}`

#### frame
帧数

用来控制玩家目前播放的视频帧(图片)
例如{frame:1}

#### path
路径

<br />

用来指定视频输出的物品文件位置
例如

 ` {video:text_video/}`

#### name
视频名称

用来匹配帧号前的名称,**注意: 如果使用blender请按照情况填写blender\_name**
例如 video0000.png 数字前面的video就是名称，因此此处应该这样写

`{name:"video"}`

名称建议越短越好(因为使用宏，字符越少性能消耗越少)

#### blender

使用blender输出的图片序列请开启此选项
`{blender:"true/false"}`

#### blender_name

使用blender请留空(不用blender无限填写)
**如果帧号前有名称请按照上方视频名称提到的方式填写**
`{blender_name:""}`

#### frame_rate
帧率

用于**自定义帧率**, **只支持服务器**使用，服务器使用需要设置
`function-permission-level=3`
如果**不是服务器也需要填写视频实际帧率用于自适应帧率**，如果服务器需要使用请**自行在start/start\_macros0开启$tick rate $(frame_rate)将井号删除即可**，**如果需要还原游戏刻请在stop里写上\$tick rate 20**

#### sound
视频声音

**需要开启sound_switch才能使用**
如果视频有声音需要在此写上sounds.json定义的视频声音播放 参考playsound来写

#### sound_switch
声音是否启用

输入false/true来控制声音是否开启/视频是否需要播放声音

`{sound_switch:"false/true"}`

#### max_frame
最大帧数

视频的最大帧数

### 示例

#### 视频播放配置

##### Function

```mcfunction

	data merge storage video:video_text \
	{\
	frame_zero:"000",\
	frame:"0",\
	path:"animation:video_text/",\
	name:"video",\
	frame_rate:"60",\
	sound:"animation:video_text",\
	sound_switch:true,\
	max_frame:6739,\
	blender:"false",\
	blender_name:"",\
	}

	scoreboard players set #video_text video_frame 6739

```

##### 资源包配置

#### sounds.json

```json

	{
    	"video_text":{
        "sounds":[
             {
                 "name": "animation:video/video_text",
                 "stream": true,
              	 "volume": 0.8,
               	 "weight": 1
            	}
      	  ]
   	   },
	   "":{
                 "name": "",
                 "stream": true,
              	 "volume": 0.8,
               	 "weight": 1
	   }
	}

```

其中**video_text**应写在sound配置项中

`{sound:"video_text"}`

你可以添加很多这种配置来添加新的视频声音
事例下方为空白模板

更多配置内容可以看
[JAVA版声音事件](https://zh.minecraft.wiki/w/Java%E7%89%88%E5%A3%B0%E9%9F%B3%E4%BA%8B%E4%BB%B6)

你可以在[资源包](https://zh.minecraft.wiki/w/%E8%B5%84%E6%BA%90%E5%8C%85)内的材质文件夹里新建一个名为Video的视频文件夹存放图片序列

`video/video_text/video0000.png`

`video/video_text/video....`

如果**命名空间**为video
那么**path**可以这样写
`{video:video/video_text}`

<a id="原理"></a>
## 原理

### **可以参考**

### 装备遮罩（camera\_overlay）的一点研究

##### by CR_019

[点击查看](https://vanillalibrary.mcfpp.top/datapack-index/resources/dust/2/2-%E8%A3%85%E5%A4%87%E9%81%AE%E7%BD%A9.html)

<a id="指令"></a>
## 指令

### 播放

#### 开始播放

```Minecraft_Command
/function animations:start {video_name:"video_name"}
```

**video_name**就是上文data中写入的字符串

### 终止播放

```Minecraft_Command
/function animations:stop
```

### 暂停播放

```Minecraft_Command
/function animations:pause
```

### 继续播放

```Minecraft_Command
/function animations:continue_play
```

### 删除单个玩家的播放设置

```Minecraft_Command
/function animations:player_video_play/storages/delete/delete_player {name:"name"}
```

**name**为玩家名

### 删除所有玩家的播放设置

```Minecraft_Command
/function animations:player_video_play/storages/delete/all_storages/delete
```
