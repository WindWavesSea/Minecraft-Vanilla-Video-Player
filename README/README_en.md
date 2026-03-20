# Minecraft Vanilla Video Player      
[English](README_en.md)  [简体中文](README.md)

## Table of Contents

- [Video Requirements](#Video-Requirements)
    - [Playing 60FPS video using accelerated game ticks](#Playing-60FPS-video-using-accelerated-game-ticks)
    - [Play 60FPS Video Using Frame Interpolation](#Play-60fps-Video-Using-Frame-Interpolation)
- [Configuration](#Configuration)
    - [Parameter Parsing](#Parameter-Parsing)
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
- [Example](#Example)
- [Principle](#Principle)
- [Commands](#Commands)
    - [Start Playback](#Start-Playback)
    - [Stop Playback](#Stop-Playback)
    - [Pause Playback](#Pause-Playback)
    - [Resume Playback](#Resume-Playback)

## Video Requirements

Requires an image sequence (.png format)

### Playing 60FPS video using accelerated game ticks

The video is best at 20FPS. If using a 60fps video, the [tick](http://https://zh.minecraft.wiki/w/%E5%91%BD%E4%BB%A4/tick) needs to be set to 60.

```Minecraft_Command

/tick rate 60

```
Set the target [game tick](https://zh.minecraft.wiki/w/%E5%88%BB?variant=zh-cn#%E6%B8%B8%E6%88%8F%E5%88%BB) rate.

### Playing 60FPS Video Using Frame Interpolation

In the video configuration, `frame_rate` is the original video frame rate. If the video is 60FPS, it can be configured like this:

`frame_rate:60`

## In-Data Package Configuration

### Parameter Parsing

#### frame_zero

To check the changes in the first image, it's usually all zeros. Check how many zeros precede the last zero and write these zeros into `frame_zero`. For example, in `video0000.png`, `000` should be written as:

`{frame_zero:"000"}`

#### frame

Used to control the current video frame (image) played by the player.

For example, `{frame:1}`

#### path

<br />
Used to specify the location of the item file for video output.

For example:

`{video:text_video/}`

#### name

Used to match the name before the frame number. **Note: If using Blender, please fill in `blender_name` accordingly.**

For example, in `video0000.png` The "video" before the number is the name, so it should be written like this:

`{name:"video"}`

The name should be as short as possible (because using macros, fewer characters result in less performance overhead).

#### Blender

Enable this option if using image sequences output by Blender:

`{blender:"true/false"}`

#### Blender_name

Leave this blank if using Blender (you can fill it in infinitely if not using Blender).

**If there is a name before the frame number, please fill it in as mentioned above regarding video names**

`{blender_name:""}`

#### frame_rate

Used for **custom frame rate**, **only supported for server use**. Server use requires setting

`function-permission-level=3`

If **not a server, you also need to fill in the actual video frame rate for adaptive frame rate**. If a server needs to use this, please **enable $tick rate $(frame_rate) in start/start_macros0 and remove the hash symbol**. **If you need to restore the game timeline, please write $tick rate in stop.** 20**

#### sound

**Requires sound_switch to be enabled**

If the video has sound, you need to specify the video sound playback defined in sounds.json here. Refer to playsound for guidance.

#### sound_switch

Enter false/true to control whether the sound is enabled/whether the video needs to play sound.

`{sound_switch:"false/true"}`

#### max_frame

Maximum number of frames in the video.

### Example

#### Video Playback Configuration

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

##### Resource package configuration

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
} }

```

The **video_text** should be written in the sound configuration item

`{sound:"video_text"}`

You can add many of these configurations to add new video sounds. The example below is a blank template.

More configuration details can be found in [JAVA version sound events](https://zh.minecraft.wiki/w/Java%E7%89%88%E5%A3%B0%E9%9F%B3%E4%BA%8B%E4%BB%B6)

You can find it in [Resource Packs](https://zh.minecraft.wiki/w/%E8%B5%84%E6%BA%90%E5%8C%85) Create a new folder named "Video" within the texture folder located to store the image sequence.

`video/video_text/video0000.png`

`video/video_text/video....`

If the **namespace** is "video", then the **path** can be written as:

`{video:video/video_text}`

## Principles

### **References Available**

### Some Research on Camera Overlays

##### by CR_019

[Click to view](https://vanillalibrary.mcfpp.top/datapack-index/resources/dust/2/2-%E8%A3%85%E5%A4%87%E9%81%AE%E7%BD%A9.html)

# Commands

## Playback

### Playback using /function

```Minecraft_Command

/function animations:start {video_name:"video_name"}

```

### video_name is the string written in the data above

## Stop Playback

```Minecraft_Command

/function animations:stop

```
## Pause Playback

```Minecraft_Command

/function animations:pause

```

## Continue playing

```Minecraft_Command

/function animations:continue_play

```

## Delete playback settings for a single player

```Minecraft_Command

/function animations:player_video_play/storages/delete/delete_player {name:"name"}

```
**name** is the player's name

## Delete playback settings for all players

```Minecraft_Command

/function animations:player_video_play/storages/delete/all_storages/delete
```

