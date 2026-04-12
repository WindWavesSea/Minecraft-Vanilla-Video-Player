$data modify storage video:dialog.get_page.$(player_number) get_data.video_name set from storage video:video_list $(video_id)

execute if score #debug video_setting matches 3 run tellraw @s [{text:"get_name.video_id"}]

#$data get storage video:dialog.$(player_number)

$function animations:dialog/dialog/open_menu/2/video_get/language_get with storage video:dialog.get_page.$(player_number) get_data