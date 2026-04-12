$execute store result score @s video_frame_player run stopwatch query $(stopwatch) $(frame_rate)

$execute if score #debug video_setting matches 3 run tellraw @s [{text:"$(stopwatch) $(frame_rate_player)"}]