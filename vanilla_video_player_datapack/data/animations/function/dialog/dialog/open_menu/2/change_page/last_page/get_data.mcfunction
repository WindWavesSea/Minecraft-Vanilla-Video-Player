$data modify storage video:dialog.last_page.$(player_number) change.player_number set from storage video:dialog temp_last_page.player_number
$execute store result storage video:dialog.last_page.$(player_number) change.page_number int 1 run scoreboard players get @s vvp.dialog.video_list.page_number

execute if score #debug video_setting matches 3 run tellraw @s [{text:"last_page.get_data"}]