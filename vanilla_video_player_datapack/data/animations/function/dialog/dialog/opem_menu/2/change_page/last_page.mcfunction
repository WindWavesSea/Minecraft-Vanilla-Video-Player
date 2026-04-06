scoreboard players reset @s vvp.dialog.video_list.page_change
scoreboard players enable @s vvp.dialog.video_list.page_change

execute store result storage video:dialog temp_change_page.player_number int 1 run scoreboard players get @s video_uuid_storages

function animations:dialog/dialog/opem_menu/2/change_page/get_data with storage video:dialog temp_change_page

execute if score @s vvp.dialog.video_list.page_number matches 2.. run function animations:dialog/dialog/opem_menu/2/change_page/next_change with storage video:dialog temp_change_page
execute if score @s vvp.dialog.video_list.page_number matches 1 run function animations:dialog/dialog/opem_menu/2/change_page/first_page/show_page

function animations:dialog/dialog/opem_menu/2/change_page/remove_data with storage video:dialog temp_change_page

data remove storage video:dialog temp_change_page