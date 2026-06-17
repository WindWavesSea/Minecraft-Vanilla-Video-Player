# Minecraft Vanilla Video Player

[English](README/README_en.md) [简体中文](README.md)

> by WindWaves_Sea
>
> This article is also published on the author's [Blog](https://blog.windwaves.top/post/minecraft_vanilla_video_player), [Bilibili Column](https://www.bilibili.com/opus/1182083830058582057), the project's [GitHub](https://github.com/WindWavesSea/Minecraft-Vanilla-Video-Player/) repository, and [Modrinth](https://modrinth.com/datapack/vanilla-video-player/).

---

## Table of Contents

- [Minecraft Vanilla Video Player](#minecraft-vanilla-video-player)
  - [Introduction](#introduction)
    - [Warning](#warning)
  - [Download](#download)
  - [Video Requirements](#video-requirements)
    - [Play 60 FPS Video with Increased Tick Rate](#play-60-fps-video-with-increased-tick-rate)
    - [Play 60 FPS Video with Frame Interpolation](#play-60-fps-video-with-frame-interpolation)
  - [Dialog Menu](#dialog-menu)
  - [Parameter Explanation](#parameter-explanation)
  - [Example](#example)
  - [How It Works](#how-it-works)
  - [Commands](#commands)
  - [About Image Sequences](#about-image-sequences)
  - [Recommended Resolution](#recommended-resolution)
  - [Notes](#notes)
  - [Debug Mode](#debug-mode)

---

## Introduction

This project is based on a datapack and provides pseudo-video playback in vanilla Minecraft by displaying image sequences.

Main purposes of this datapack:

- Automatically calculate frame rates and batch process frame files.
- Provide adaptive frame rate to improve performance.
- Provide interfaces for quick configuration.
- Play image sequences stored in resource packs.

It also provides several **variables** for quickly adding image-sequence videos through resource packs.

---

### Warning

This **datapack** uses the head equipment slot by default to trigger the camera overlay.  
If you do not want to use the head slot, you can modify it inside the datapack manually (currently required in V2.0).

The resource pack includes a transparent model used as the equipped overlay item, creating a pseudo "no item equipped" playback effect.

> **Image Sequence** means saving every frame of a video or animation as an independent static image file, arranged in order by frame number. It is widely used in post-production, 3D animation, visual effects, and other fields due to high compatibility and lossless quality.

---

## Download

You can download this package from:

- [Modrinth](https://modrinth.com/datapack/vanilla-video-player/)
- [GitHub](https://github.com/WindWavesSea/Minecraft-Vanilla-Video-Player/)

---

## Video Requirements

Videos must be converted into **PNG image sequences**.

---

### Play 60 FPS Video with Increased Tick Rate

20 FPS videos are recommended.

If using a 60 FPS video, set the tick rate to 60:

```mcfunction
/tick rate 60
````

This sets the target game tick speed.

---

### Play 60 FPS Video with Frame Interpolation

Set the original frame rate in the config:

```txt
frame_rate:60
```

---

## Dialog Menu

You can open the menu by pressing **G** or through command:

```mcfunction
/dialog show @s animations:open_menu
```

Players need to choose the video resolution.

* 1920×1080 = 16:9
* 2560×1080 = 16:10

If you want to use the playback page, please select a language first in settings.

---

## Parameter Explanation

### frame_zero

Number of leading zeros before the frame number.

Example:

`video0000.png`

Then:

```json
{frame_zero:"000"}
```

---

### frame

Current frame number.

```json
{frame:1}
```

---

### path

Output file path.

```json
{path:"animation:school/"}
```

---

### name

Video prefix name.

Example:

`video0000.png`

Then:

```json
{name:"video"}
```

Shorter names are recommended for better macro performance.

---

### blender

Enable if the sequence was exported from Blender.

```json
{blender:true}
```

---

### blender_name

Leave empty when using Blender.

```json
{blender_name:""}
```

---

### frame_rate

Original frame rate of the video.

Used for adaptive frame rate.

For servers:

```txt
function-permission-level=3
```

---

### sound

Audio event name defined in `sounds.json`.

---

### sound_switch

Enable or disable sound playback.

```json
{sound_switch:true}
```

---

### max_frame

Maximum frame count.

---

### slot

Equipment slot used for overlay.

Supported values:

* head
* body
* chest
* feet
* legs
* mainhand
* offhand
* saddle

---

### dialog

#### video_list_show

Whether the video is shown in the menu.

```json
{video_list_show:true}
```

---

### resolution

Used for multiple aspect ratio support.

Path format:

```txt
path/resolution/frame.png
```

Example:

```txt
animation:school/16:9/0001.png
```

#### switch

Enable multi-resolution mode.

```json
true / false
```

#### default_size

Default ratio key.

```txt
default_size:1
```

#### size_list

* 1 = 16:9
* 2 = 16:10
* 3 = 3:2
* 4 = 4:3

---

### language

Used for translated names in the dialog menu.

#### default_language

```txt
1: en-us
2: zh-cn
3: zh-hk
4: zh-mo
5: zh-sg
6: zh-tw
7: en-au
8: en-ca
9: en-in
10: en-gb
11: fr-fr
12: de-de
13: ja
14: kn
15: es-es
16: ar
17: ko
18: in-in
```

#### Translation Text

Format:

```txt
language_code:"Translated Text"
```

Example:

```txt
en-us:"School"
```

---

## Example

### Video Configuration

```mcfunction
data merge storage video:school \
{video:{\
frame_zero:"000",\
frame:"0",\
path:"animation:school/",\
name:"school",\
blender_name:"",\
frame_rate:"60",\
sound:"",\
sound_switch:false,\
max_frame:740,\
blender:true,\
slot:"head"\
}}

function animations:video_add/main with storage video:school video
```

> The last `function` line must be placed at the end of the config file, and the name after `video:` must match the `name` value.

---

## sounds.json

```json
{
  "video_text": {
    "sounds": [
      {
        "name": "animation:video/video_text",
        "stream": true,
        "volume": 0.8,
        "weight": 1
      }
    ]
  }
}
```

Then use:

```json
{sound:"video_text"}
```

---

## How It Works

Based on Minecraft's `camera_overlay` equipment component.

---

## Commands

### Start Playback

```mcfunction
/function animations:start {video_name:"video_name"}
```

---

### Stop Playback

```mcfunction
/function animations:stop
```

---

### Pause Playback

```mcfunction
/function animations:pause
```

---

### Resume Playback

```mcfunction
/function animations:continue_play
```

---

### Delete One Player's Playback Data

```mcfunction
/function animations:player_video_play/storages/delete/delete_player {name:"player"}
```

---

### Delete All Player Data

```mcfunction
/function animations:player_video_play/storages/delete/all_storages/run
```

---

### Delete One Video Config

```mcfunction
/function animations:video_list/delete_only {name:"video"}
```

---

### Delete All Video Configs

```mcfunction
/function animations:video_list/delete_all
```

---

## About Image Sequences

You can export image sequences with:

* Adobe Animate
* Premiere Pro
* Apple Motion
* Processing
* Aseprite

Export them as PNG sequences.

---

## Recommended Resolution

Minecraft supports adaptive textures.

Recommended size:

**960 × 540**

This reduces storage usage and resource pack size.

---

## Notes

Due to a Mojang issue, played textures may remain in memory and cannot be fully cleared.

This may cause memory overflow on low-memory systems.

Bug Report:

[MC-277837](https://bugs.mojang.com/browse/MC/issues/MC-277837)

---

## Debug Mode

Enable Debug Mode with:

```mcfunction
/scoreboard players set #debug video_setting 1
```

> Only use Debug Mode when troubleshooting datapack issues or developing with this datapack.
