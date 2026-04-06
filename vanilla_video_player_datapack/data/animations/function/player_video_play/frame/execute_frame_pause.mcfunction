#当前的实际原本为多少帧
$execute store result score #temp video_frame_player_pause2 run stopwatch query $(stopwatch) $(frame_rate)

scoreboard players operation @s video_frame_player_pause2 = #temp video_frame_player_pause2

#计算插值
scoreboard players operation @s video_frame_player_pause2 -= @s video_frame_player_pause1

#加法计算
scoreboard players operation @s video_frame_player += @s video_frame_player_pause2

#存储为下次计算使用
scoreboard players operation @s video_frame_player_pause1 = #temp video_frame_player_pause2

scoreboard players reset #temp video_frame_player_pause2