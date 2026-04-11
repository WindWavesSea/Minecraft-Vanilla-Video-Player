#最终显示
$execute \
if data storage video:dialog.get_page.$(player_number) {get_data:{change_page:1}} \
run scoreboard players remove @s vvp.dialog.video_list.page_number 1

$execute \
if data storage video:dialog.get_page.$(player_number) {get_data:{change_page:2}} \
run scoreboard players add @s vvp.dialog.video_list.page_number 1

$function animations:dialog/dialog/open_menu/2/page_show \
with storage video:player_number_$(player_number)_video_play dialog.video_list.page

$function animations:dialog/dialog/open_menu/2/page_get/add/remove with storage video:dialog.get_page.$(player_number) get_data