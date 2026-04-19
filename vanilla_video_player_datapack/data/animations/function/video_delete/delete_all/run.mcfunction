execute if score #max_value video_list matches 1.. run return run function animations:video_delete/delete_all/start

execute if score #debug video_setting matches 3 run tellraw @a [{text:"--------video_delete.delete_all---------end--------"}]

scoreboard players set #all_delete video_list 0

execute if score #reset video_setting matches 1.. run scoreboard players add #reset video_setting 1