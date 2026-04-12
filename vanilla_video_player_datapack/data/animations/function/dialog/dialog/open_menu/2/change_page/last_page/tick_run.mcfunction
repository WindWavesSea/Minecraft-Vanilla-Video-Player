scoreboard players reset @s vvp.dialog.video_list.last_or_first_page
scoreboard players enable @s vvp.dialog.video_list.last_or_first_page

execute store result storage video:dialog temp_last_page.player_number int 1 run scoreboard players get @s video_uuid_storages

function animations:dialog/dialog/open_menu/2/change_page/last_page/get_data with storage video:dialog temp_last_page

function animations:dialog/dialog/open_menu/2/change_page/last_page/change0 with storage video:dialog temp_last_page

function animations:dialog/dialog/open_menu/2/change_page/last_page/remove_data with storage video:dialog temp_last_page

data remove storage video:dialog temp_last_page

execute if score #debug video_setting matches 3 run tellraw @s [{text:"last_page.tick_run"}]