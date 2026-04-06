$data modify storage video:dialog.first_page.$(player_number) change.player_number set from storage video:dialog temp_first_page.player_number
$execute store result storage video:dialog.first_page.$(player_number) change.page_number int 1 run scoreboard players get @s vvp.dialog.video_list.page_number

#say get_data