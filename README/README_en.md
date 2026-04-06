# **Minecraft Vanilla Video Player**

[English](README_en.md) [简体中文](README.md)

by WindWaves_Sea

This article is also published on the author's [Blog](https://blog.windwaves.top/post/minecraft_vanilla_video_player), [Bilibili](https://www.bilibili.com/opus/1182083830058582057), and the [GitHub](https://github.com/WindWavesSea/Minecraft-Vanilla-Video-Player/) repository.

## **Preface**

This project provides a datapack-based solution to play image sequences in vanilla Minecraft, achieving a "pseudo-video" playback effect.

Key features of this datapack:

* Automatically calculates frame rates and batch processes frame files.  
* Provides adaptive frame rates to improve performance.  
* Offers interfaces for quick configuration and playback of image sequences from resource packs.  
* Utilizes variables to rapidly add and play sequences.

### **Warning**

By default, this **datapack** uses the head slot to trigger the equipment overlay. If you do not wish to use the head slot, you must manually modify the code (required for V2.0).

The resource pack includes a transparent model for the overlay item to achieve a seamless visual effect without appearing as a physical item.

**Image Sequence**: Refers to a series of individual static image files (e.g., .png) saved from each frame of a video or animation, arranged in numerical order.

## **Download**

You can download the prerequisite package from [Modrinth](https://modrinth.com/datapack/vanilla-video-player/) or [GitHub](https://github.com/WindWavesSea/Minecraft-Vanilla-Video-Player/).

## **Video Requirements**

Videos must be converted into a **PNG image sequence**.

### **Playing 60FPS Video with Tick Rate Acceleration**

It is recommended to use 20FPS videos. If you must use 60FPS, you need to set the game tick rate to 60:

/tick rate 60

### **Playing 60FPS Video with Frame Interpolation**

In the video configuration, set frame\_rate: 60\.

## **Dialog Box**

The menu can be opened using the hotkey **G** or via the game menu. To play a video, you must use the G key or the following command:

dialog show @s animations:open\_menu

Players need to select the video resolution:

* 1920\*1080 (16:9)  
* 2560\*1080 (16:10)

**Note:** Please select your language in the language settings before using the video playback page.

## **Configuration**

### **Parameter Analysis**

* **frame\_zero**: Defines the leading zeros in the filename. For video0000.png, use {frame\_zero: "000"}.  
* **frame**: Controls the current frame being played (e.g., {frame: 1}).  
* **path**: The path to the items in the resource pack (e.g., {video: "text\_video/"}).  
* **name**: The name matching the frame prefix. Should match the storage name.  
* **blender**: Set to true if using Blender-exported sequences.  
* **frame\_rate**: Custom frame rate for servers (requires function-permission-level=3). Also used for adaptive frame rate logic.  
* **sound**: The sound event defined in sounds.json.  
* **sound\_switch**: true/false to enable or disable audio.  
* **max\_frame**: Total number of frames in the video.  
* **slot**: The equipment slot for the overlay (head, body, chest, etc.).  
* **resolution**: Configuration for multi-resolution support.

### **Examples**

#### **Function Configuration**

```mcfunction

data merge storage video:school \
{video:\
{frame_zero:"000",\
frame:"0",\
path:"animation:school/",\
name:"school",\
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
en-us:"School",\
zh-cn:"学校"\
}\
}\
}

function animations:video_add/main with storage video:school video

```

#### **sounds.json**

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

## **Mechanism**

Based on the research of camera\_overlay components. It maps each frame of the video to a specific item model used as a full-screen GUI overlay.

## **Commands**

* **Start Playback**: /function animations:start {video\_name:"name"}  
* **Stop**: /function animations:stop  
* **Pause**: /function animations:pause  
* **Resume**: /function animations:continue\_play  
* **Clear All Video Configs**: /function animations:video\_list/delete\_all

## **About Image Sequences**

### **How to Export**

* **Adobe Animate**: File \> Export \> Export Image Sequence.  
* **Premiere Pro**: File \> Export \> Media (Select PNG Sequence).  
* **Aseprite**: File \> Export \> Save As (Include numbers in filename).

### **Recommended Resolution**

Since Minecraft supports adaptive textures, it is recommended to export at **960 \* 540** to save disk space and reduce resource pack size.

## **Notes & Known Issues**

Due to Mojang's engine limitations, images that have been played may remain in memory and are not easily cleared, which can lead to "Out of Memory" errors.

* **Bug Reference**: [MC-277837](https://bugs.mojang.com/browse/MC/issues/MC-277837)  
* Usage is not recommended on systems with very low RAM.****
