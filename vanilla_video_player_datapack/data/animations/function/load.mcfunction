tellraw @a [{"text":"[VVP] ","color":"green"},{"translate":"vanilla_video_player.load","color":"white"}]
function animations:load/scoreboards
function animations:load/storages
scoreboard players set #load video_setting 1
tellraw @a [{"text":"[VVP] ","color":"green"},{"translate":"vanilla_video_player.load.finish","color":"white"}]

gamerule send_command_feedback false
execute if score #debug video_setting matches 3 run function animations:load/scoreboards