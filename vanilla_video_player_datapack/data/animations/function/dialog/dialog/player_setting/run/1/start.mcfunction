scoreboard players reset @s vvp.dialog.dialog_player_setting
scoreboard players enable @s vvp.dialog.dialog_player_setting

execute if score @s video_resolution_size matches 1 run return run function animations:dialog/dialog/player_setting/run/1/set {command:"add",number:1,text1:"16",text2:"10"}
execute if score @s video_resolution_size matches 2 run return run function animations:dialog/dialog/player_setting/run/1/set {command:"add",number:1,text1:"3",text2:"2"}
execute if score @s video_resolution_size matches 3 run return run function animations:dialog/dialog/player_setting/run/1/set {command:"add",number:1,text1:"4",text2:"3"}
execute if score @s video_resolution_size matches 4 run return run function animations:dialog/dialog/player_setting/run/1/set {command:"remove",number:3,text1:"16",text2:"9"}
