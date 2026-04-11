#execute if score @s vvp.dialog.video_list.page_number < @s vvp.dialog.video_list.max_page_number run say can_next_page

execute if score @s vvp.dialog.video_list.page_number < @s vvp.dialog.video_list.max_page_number run return run function animations:dialog/dialog/open_menu/2/page_get/main

execute if score @s vvp.dialog.video_list.page_number = @s vvp.dialog.video_list.max_page_number run function animations:dialog/dialog/open_menu/2/change_page/last_page/show_page

#say next_page

scoreboard players reset @s vvp.dialog.video_list.page_change
scoreboard players enable @s vvp.dialog.video_list.page_change