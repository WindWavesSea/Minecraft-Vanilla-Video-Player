execute store result storage video:dialog video_list_play.temp.number int 1 run scoreboard players get @s video_uuid_storages

function animations:dialog/dialog/opem_menu/2/tick2 with storage video:dialog video_list_play.temp

data remove storage video:dialog video_list_play.temp.number

scoreboard players enable @s vvp.dialog.video.id
scoreboard players enable @s vvp.dialog.video.id.run
scoreboard players enable @s vvp.dialog.video_list.return
scoreboard players enable @s vvp.dialog.video_list.page_change
scoreboard players enable @s vvp.dialog.video_list.last_or_first_page

execute if score @s vvp.dialog.video.id matches 1.. run function animations:dialog/dialog/opem_menu/2/video_play_page/main

execute if score @s vvp.dialog.video_list.return matches 1 run function animations:dialog/dialog/opem_menu/2/clear_page/main

execute if score @s vvp.dialog.video.id.run matches -1.. run function animations:dialog/dialog/opem_menu/2/video_play_page/execute

execute if score @s vvp.dialog.video_list.page_change matches 1.. run function animations:dialog/dialog/opem_menu/2/change_page/execute

execute if score @s vvp.dialog.video_list.last_or_first_page matches 1.. run function animations:dialog/dialog/opem_menu/2/change_page/last_or_first_execute