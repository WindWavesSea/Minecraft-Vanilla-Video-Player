scoreboard players add @s vvp.dialog.video_list.page_number 1
$execute store result storage video:dialog.change_page.$(player_number) change.page_number int 1 run scoreboard players get @s vvp.dialog.video_list.page_number

$function animations:dialog/dialog/opem_menu/2/change_page/change with storage video:dialog.change_page.$(player_number) change.page