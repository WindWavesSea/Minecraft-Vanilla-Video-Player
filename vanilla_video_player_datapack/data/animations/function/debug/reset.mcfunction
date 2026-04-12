tellraw @a {"translate":"vanilla_video_player.debug.disabled","color":"red"}
gamerule send_command_feedback false
scoreboard players reset @a[nbt={UUID:[I;488442717,-668318959,-1794227828,-1723402614]}] video_setting
scoreboard players reset #debug video_setting
