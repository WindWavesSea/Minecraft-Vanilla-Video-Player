execute if score @s vvp.dialog.video_list.page_number matches 2.. run return run function animations:dialog/dialog/open_menu/2/page_get/main
execute if score @s vvp.dialog.video_list.page_number matches 1 run function animations:dialog/dialog/open_menu/2/change_page/first_page/show_page

scoreboard players reset @s vvp.dialog.video_list.page_change
scoreboard players enable @s vvp.dialog.video_list.page_change