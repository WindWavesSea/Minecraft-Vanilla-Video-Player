tellraw @a [{"text":"[VVP] ","color":"green"},{"translate":"vanilla_video_player.load","color":"white"}]
function animations:load/scoreboards
function animations:load/storages
scoreboard players set #load video_setting 1
tellraw @a [{"text":"[VVP] ","color":"green"},{"translate":"vanilla_video_player.load.finish","color":"white"}]

execute unless score #debug video_setting matches 3 run gamerule send_command_feedback false