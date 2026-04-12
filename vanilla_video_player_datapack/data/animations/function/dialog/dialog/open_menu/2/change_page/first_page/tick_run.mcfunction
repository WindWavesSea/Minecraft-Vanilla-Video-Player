scoreboard players reset @s vvp.dialog.video_list.last_or_first_page
scoreboard players enable @s vvp.dialog.video_list.last_or_first_page

execute store result storage video:dialog temp_first_page.player_number int 1 run scoreboard players get @s video_uuid_storages

function animations:dialog/dialog/open_menu/2/change_page/first_page/get_data with storage video:dialog temp_first_page

function animations:dialog/dialog/open_menu/2/change_page/first_page/change0 with storage video:dialog temp_first_page

function animations:dialog/dialog/open_menu/2/change_page/first_page/remove_data with storage video:dialog temp_first_page

data remove storage video:dialog temp_first_page

execute if score #debug video_setting matches 3 run tellraw @s [{text:"first_page.tick_run"}]