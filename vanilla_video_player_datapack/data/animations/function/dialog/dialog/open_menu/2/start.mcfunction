#建立临时运算计分板
scoreboard players set @s vvp.dialog.dialog_show 0
execute if score #debug video_setting matches 3 run tellraw @s [{text:"------------------------start-------------------------"}]

execute store result storage video:dialog_run video_list_play.temp.number int 1 run scoreboard players get @s video_uuid_storages

function animations:dialog/dialog/open_menu/2/add_temp_scoreboard with storage video:dialog_run video_list_play.temp

scoreboard players set @s vvp.dialog.video_list.page_change 2

scoreboard players set @s vvp.dialog.video_list.page_number 0

#检查需要几页用于显示
function animations:dialog/dialog/open_menu/2/operation with storage video:dialog_run video_list_play.temp

#检查是否有列表，如果没有则跳转到no list
function animations:dialog/dialog/open_menu/2/execute_have_list with storage video:dialog_run video_list_play.temp

data remove storage video:dialog_run video_list_play.temp