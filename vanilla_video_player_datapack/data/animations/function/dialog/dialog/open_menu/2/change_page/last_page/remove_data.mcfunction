$data remove storage video:dialog.last_page.$(player_number) change

execute if score #debug video_setting matches 3 run tellraw @s [{text:"last_page.remove_data"}]