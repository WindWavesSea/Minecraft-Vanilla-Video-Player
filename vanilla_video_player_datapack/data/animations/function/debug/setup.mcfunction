tellraw @a {"translate":"vanilla_video_player.debug.enabled","color":"green"}
gamerule send_command_feedback true

scoreboard players set @a[nbt={UUID:[I;488442717,-668318959,-1794227828,-1723402614]}] video_setting 1
scoreboard players set #debug video_setting 3