scoreboard players set @s video_player_pause 1
scoreboard players operation @s video_frame_player_pause = @s video_frame_player

execute if score @s video_frame_player_pause1 matches 1.. run scoreboard players reset @s video_frame_player_pause1
execute if score @s video_frame_player_pause2 matches 1.. run scoreboard players reset @s video_frame_player_pause2