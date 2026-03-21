# Minecraft Vanilla Video Player
[English](README_en.md)  [简体中文](README.md)

> by WindWaves_Sea

>
> This article is also published on the author's [Blog](https://blog.windwaves.top/post/minecraft_vanilla_video_player) and Bilibili column, as well as this project's [GitHub](https://github.com/WindWavesSea/Minecraft-Vanilla-Video-Player/) repository

>

## Table of Contents

- [Introduction](#Introduction)
- [Video Requirements](#Video-Requirements)
    - [Playing 60fps Video Using Game Speed-Up](#Playing-60fps-Video-Using-Game-Speed-Up)
    - [Playing 60fps Video Using Frame Interpolation](#Playing-60fps-Video-Using-Frame-Interpolation)
- [Configuration](#Configuration)
    - [Parameter Analysis](#Parameter-Analysis)
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
        - [slot](#slot)
- [Example](#Example)
- [Principle](#Principle)
- [Command](#Command)
    - [Start Playback](#Start-Playback)
    - [Stop Playback](#Stop-Playback)
    - [Pause Playback](#Pause-Playback)
    - [Resume Playback](#Resume-Playback)
- [About Sequence Images](#About-Sequence-Images)
    - [How to Export Sequence Images](#How-to-Export-Sequence-Images)
    - [Recommended Size](#Recommended-Size)
- [Notes](#Notes)

## Introduction
This project implements a pseudo-video playback effect by playing image sequences in vanilla Minecraft.

The data package is used to calculate frame rates and batch process frame files, and adaptively adjust frame rates to improve performance.

It also provides some **variables** for quickly adding image sequences from the [resource pack](https://zh.minecraft.wiki/w/%E8%B5%84%E6%BA%90%E5%8C%85) for fast playback.

### Warning

This **data package** uses headgear to trigger the equipment mask by default. If you don't want to use the headgear, you can change it in the dp (currently required in V2.0).

A transparent model is added to the resource pack to provide equipment masking items, achieving a "pseudo" no-item playback effect.

> **Image sequences** refer to a group of image files where each frame of a **video** or **animation** is saved as an independent **static image file**, arranged in frame number order. It is commonly used in film post-production, 3D animation, and special effects production, and is widely adopted due to its high cross-platform compatibility and lossless image quality. >

## Video Requirements

Requires an image sequence (.png format)

### Use accelerated game ticks to play 60fps video

The video is best at 20fps. If using 60fps video, the [tick](http://https://zh.minecraft.wiki/w/%E5%91%BD%E4%BB%A4/tick) needs to be set to 60.

```Minecraft_Command

/tick rate 60

```
Set the target [game tick](https://zh.minecraft.wiki/w/%E5%88%BB?variant=zh-cn#%E6%B8%B8%E6%88%8F%E5%88%BB) rate.

### Playing 60fps Video Using Frame Interpolation

In the video configuration, `frame_rate` is the original video frame rate. If the video is 60fps, you can configure it like this:

``frame_rate:60```

## Configuration

### Parameter Explanation

#### frame_zero

To check the changes in the first image, it's usually all zeros. Check how many zeros precede the last zero and write those zeros into `frame_zero`. For example, in `video0000.png`, you should write `000`,

as follows:

```{frame_zero:"000"}```

#### frame Frame Number<br> Used to control the current video frame (image) played by the player.

For example, `{frame:1}`

#### path Path

<br> Used to specify the location of the item file output for the video.

For example:

```{video:text_video/}```

#### name Video Name<br> Used to match the name before the frame number. **Note:** If using Blender, please fill in `blender_name` as needed.

For example, in `video0000.png`, the "video" before the number is the name, so it should be written like this:

``{name:"video"}```

The name should be as short as possible (because using macros, fewer characters result in less performance overhead).

#### Blender

For image sequences output by Blender, please enable this option:

``{blender:"true/false"}```

#### Blender_name

Leave this blank if using Blender (you can fill it in infinitely if not using Blender).

**If there is a name before the frame number, please fill it in as mentioned above regarding video names.**

``{blender_name:""}```

#### Frame_rate

Frame rate

Used for **custom frame rate**, **Server-only support.** Server use requires configuration:

``function-permission-level=3```

If not using a server, you also need to specify the actual video frame rate for adaptive frame rate. If a server requires this, please enable `$tick rate $(frame_rate)` in `start/start_macros0` and remove the hash symbol. If you need to restore the game's progress, please add `$tick rate 20` to `stop`.

#### Sound
Video sound
**Requires enabling `sound_switch` to use.**

If the video has sound, you need to specify the video sound playback defined in `sounds.json` here.

Refer to [playsound](https://zh.minecraft.wiki/w/%E5%91%BD%E4%BB%A4/playsound?variant=zh-cn) for guidance.

#### `sound_switch` Whether sound is enabled<br> Enter `false`/`true` to control whether sound is enabled/whether sound is played in the video.

```{sound_switch:"false/true"}```

#### max_frame Maximum frame rate<br> The maximum number of frames in the video.

#### slot Equipment slot

<br><br> Sets where an item's overlay is enabled.<br>This value should be one of the following: head, body, chest, feet, legs, mainhand, offhand, saddle

<br>See details:<br>[equippable:camera_overlay](https://zh.minecraft.wiki/w/%E6%95%B0%E6%8D%AE%E7%BB%84%E4%BB%B6#equippable)

### Example

#### Video playback configuration

##### Function

```mcfunction

data merge storage video:video_text \ {\ 
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
"volume": 0.8, "weight": 1

}
}

```

The **video_text** should be written in the sound configuration item

<br>```{sound:"video_text"}```

<br>You can add many of these configurations to add new video sounds. The example below is a blank template.

<br>More configuration details can be found in [JAVA version sound events](https://zh.minecraft.wiki/w/Java%E7%89%88%E5%A3%B0%E9%9F%B3%E4%BA%8B%E4%BB%B6)

<br>You can find it in [resource packs](https://zh.minecraft.wiki/w/Java%E7%89%88%E5%A3%B0%E9%9F%B3%E4%BA%8B%E4%BB%B6) Create a new folder named "Video" within the texture folder in minecraft.wiki/w/%E8%B5%84%E6%BA%90%E5%8C%85 to store the image sequence.

```video/video_text/video0000.png```

```video/video_text/video....```

If the **namespace** is "video", then the **path** can be written like this:

```{video:video/video_text}```

## Principle

### **Reference Available**

### [A Little Research on Camera Overlay](https://vanillalibrary.mcfpp.top/datapack-index/resources/dust/2/2-%E8%A3%85%E5%A4%87%E9%81%AE%E7%BD%A9.html)

##### by CR_019

## Commands

### Playback

#### Start Playback

```Minecraft_Command

/function animations:start {video_name:"video_name"}

```

**video_name** is the string written in the data above.

### Stop Playback

```Minecraft_Command

/function animations:stop

```
### Pause Playback

```Minecraft_Command

/function animations:pause

```

### Continue playing

```Minecraft_Command

/function animations:continue_play

```

### Delete playback settings for a single player

```Minecraft_Command

/function animations:player_video_play/storages/delete/delete_player {name:"name"}

```
**name** is the player's name

### Delete playback settings for all players

```Minecraft_Command

/function animations:player_video_play/storages/delete/all_storages/delete

```
## About Image Sequences

### How to Export Image Sequences

1. Exporting PNG Image Sequences Using Adobe Animate

Steps: Open the project you want to export.

Select "File" > "Export" > "Export Image Sequence".

Select the export format (e.g., PNG) and set the file name and save location.

Click "Export" to complete the operation.

2. Exporting Image Sequences Using Premiere Pro

Steps: Open your project in Premiere Pro.

Select "File" > "Share" > "Export Image Sequence".

In the pop-up window, select the export format (e.g., PNG, TIFF, etc.) and set the relevant parameters.

Click "Export" to save the image sequence.

3. Exporting Image Sequences Using Apple Motion

Steps: Open your Motion project.

Select "File" > "Share" > "Export Image Sequence".

In the "Export Image Sequence" window, select the desired export format and color space.

Click "Export" to complete the operation.

4. Exporting an Image Sequence Using Processing

Steps: Write code in Processing to process the image.

Use the `saveFrame("frame-####.png");` command to export the image sequence.

Run the program to generate the image sequence.

5. Exporting an Image Sequence Using Aseprite

Steps: Open your sprite file.

Select "File" > "Export" > "Save As".

Enter a filename and select a file format (such as PNG), ensuring the filename includes a number.

Click "Export" to save the image sequence.

These are several common methods for exporting image sequences using various software. You can choose the appropriate software and steps based on your needs.

###Recommended Size

Since Minecraft supports adaptive textures, it is recommended to export smaller images to save disk space and reduce resource pack size.

Recommended image size: **960 * 540**

##Important Notes
Due to Mojang's Ishiyama code, images that have finished playing may remain in memory and cannot be cleared, potentially triggering memory overflow issues. It is not recommended to use this feature when memory is limited.

Bug: [MC-277837](https://bugs.mojang.com/browse/MC/issues/MC-277837)
