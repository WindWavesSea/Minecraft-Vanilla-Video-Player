$function animations:dialog/dialog/open_menu/2/page_show \
with storage video:player_number_$(player_number)_video_play dialog.video_list.page

execute if score #debug video_setting matches 3 run tellraw @s [{text:"last_page.change0"}]